#include "ApiServer.hpp"
#include "BaseController.hpp"
#include "Config/Config.h"
#include "Database/DatabaseEnv.h"

using namespace httplib;

namespace HttpApi
{
    void ApiServer::Start(const std::string& address, int port)
    {
        std::string certPath = sConfig.GetStringDefault("Api.CertificatePath", "turtle.cer");
        std::string privateKeyPath = sConfig.GetStringDefault("ApiPrivateKeyPath", "turtle.pkey");

        sLog.out(LOG_API, string_format("Starting HTTP Api Server with cert path {} and pKeypath {}.", certPath, privateKeyPath).c_str());
        _server = std::make_unique<SSLServer>(certPath.c_str(), privateKeyPath.c_str());

        BaseController::RegisterAll(_server.get());
       
        _listenThread = std::thread([this, address, port]()
        {
                mysql_thread_init(); // not really good but eh
                _running = true;
                while (_running)
                {
                    _server->listen(address, port);
                }
                mysql_thread_end();
        });
        
    }

    void ApiServer::Stop()
    {
        if (_server && _server->is_running())
        {
            _running = false;
            _server->stop();
        }
    }
}