#pragma once
#include "httplib.h"

#include "HttpApi/BaseController.hpp"

using namespace httplib;

static void HiAction(const Request& req, Response& resp)
{
    resp.set_content("Hello World!", "text/plain");
}


namespace HttpApi
{
    class TransferController final : public BaseController
    {
    public:

        TransferController(std::string key);

        void RegisterCommands(SSLServer* server) override
        {
            RegisterEndpoint<HttpMethod::Get>("/hi", &HiAction);
        }

    };
}