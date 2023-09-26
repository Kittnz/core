#pragma once
#include "httplib.h"

#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/prettywriter.h"
#include "rapidjson/writer.h"

#include "HttpApi/BaseController.hpp"

#include "PlayerDump.h"

using namespace httplib;

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
    retDoc.AddMember("transferStatus", transferStatusValue, retDoc.GetAllocator());

    auto dataRef = rapidjson::StringRef(pDumpData.c_str());

    retDoc.AddMember("data", dataRef, retDoc.GetAllocator());

    rapidjson::StringBuffer buffer;
    rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

    retDoc.Accept(writer);
    resp.set_content(buffer.GetString(), "application/json");
}


namespace HttpApi
{
    class TransferController final : public BaseController
    {
    public:

        TransferController(std::string key);

        void RegisterCommands(SSLServer* server) override
        {
            RegisterEndpoint<HttpMethod::Post>("/initiate-transfer", &InitTransferAction);
        }

    };
}