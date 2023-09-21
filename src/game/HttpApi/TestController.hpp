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
    class TestController final : public BaseController
    {
    public:
        bool IsAuthorized(const Request&) const override
        {
            return true;
        }


        void RegisterCommands(SSLServer* server) override
        {
            RegisterEndpoint<HttpMethod::Get>("/hi", &HiAction);
        }

    };
}