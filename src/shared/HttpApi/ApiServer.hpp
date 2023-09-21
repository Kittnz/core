#pragma once

#include "httplib.h"
#include "Common.h"
#include "Log.h"

#include <vector>
#include <memory>

namespace HttpApi
{
    class ApiServer final
    {
    public:
        ApiServer() {}

        void Start(const std::string& address, int port);

    private:
        std::unique_ptr<httplib::SSLServer> _server;
    };
}