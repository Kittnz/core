#include "TransferController.hpp"

#include "HttpApi/Authorizers/ApiKeyAuthorizer.hpp"

#include "World.h"
#include "ObjectMgr.h"

using namespace httplib;

namespace HttpApi
{
    TransferController::TransferController(std::string key)
    {
        _authorizer = std::make_unique<ApiKeyAuthorizer>(key);
    }

    //This is part 1 of transfer procedure, will EXTRACT char data.
    static void InitTransferAction(const Request& req, Response& resp, const ContentReader& reader)
    {
        if (!req.has_header("Content-Type"))
            return;

        if (req.get_header_value("Content-Type") != "application/json")
            return;


        std::string body;
        reader([&](const char* data, size_t data_length) {
            body.append(data, data_length);
            return true;
            });

        rapidjson::Document d;
        d.Parse(body.c_str());

        if (d.HasParseError())
        {
            resp.set_content("Bad JSON.", "text/plain");
            return;
        }

        if (!d.IsObject() || !d.HasMember("lowGuid"))
        {
            resp.set_content("Bad JSON.", "text/plain");
            return;
        }

        uint32 lowGuid = d["lowGuid"].GetUint();

        if (!sObjectMgr.GetPlayerDataByGUID(lowGuid))
            return;

        std::string pDumpData;
        PlayerDumpWriter().ReturnDump(pDumpData, lowGuid);

        rapidjson::Document retDoc;
        retDoc.SetObject();

        rapidjson::Value transferStatusValue{ true };
        rapidjson::Value realmId{ realmID };
        retDoc.AddMember("transferStatus", transferStatusValue, retDoc.GetAllocator());

        auto dataRef = rapidjson::StringRef(pDumpData.c_str());

        retDoc.AddMember("data", dataRef, retDoc.GetAllocator());
        retDoc.AddMember("realmId", realmID, retDoc.GetAllocator());

        rapidjson::StringBuffer buffer;
        rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

        retDoc.Accept(writer);
        resp.set_content(buffer.GetString(), "application/json");
    }


    //This is part 2 of the transfer procedure. This will IMPORT the pdump data and call the necessary import functions.
    //This should be done on the world thread on the OTHER server where extractions take place to do a successful transfer.
    static void ProceedTransferAction(const Request& req, Response& resp, const ContentReader& reader)
    {
        if (!req.has_header("Content-Type"))
            return;

        if (req.get_header_value("Content-Type") != "application/json")
            return;


        std::string body;
        reader([&](const char* data, size_t data_length) {
            body.append(data, data_length);
            return true;
            });

        rapidjson::Document d;
        d.Parse(body.c_str());


        if (d.HasParseError())
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        if (!d.IsObject())
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        if (!d.HasMember("data") || !d.HasMember("targetAccountId"))
        {
            resp.set_content("Bad JSON.", "text/plain");
            sLog.out(LOG_API, "Bad JSON for Proceed Transfer.\nData:%s\nIP:%s", body.c_str(), req.remote_addr.c_str());
            return;
        }

        std::string pdumpData = d["data"].GetString();
        uint32 accountId = d["targetAccountId"].GetUint();


        sLog.out(LOG_API, "Accepting transfer for targetAccount:%u\nData:%s", accountId, body.c_str());

        uint32 guid = 0;
        auto res = PlayerDumpReader().LoadStringDump(pdumpData, accountId, "", guid);
        sLog.out(LOG_API, "Result of transfer for targetAccount:%u\nres:%s.\nnewGuid:%u", accountId, (uint32)res, guid);


        rapidjson::Document retDoc;
        retDoc.SetObject();

        rapidjson::Value transferResult{ res };
        retDoc.AddMember("transferResult", transferResult, retDoc.GetAllocator());

        rapidjson::StringBuffer buffer;
        rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

        retDoc.Accept(writer);
        resp.set_content(buffer.GetString(), "application/json");
    }
}