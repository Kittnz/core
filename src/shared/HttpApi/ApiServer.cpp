#include "ApiServer.hpp"
#include "BaseController.hpp"
using namespace httplib;

namespace HttpApi
{
    void ApiServer::Start(const std::string& address, int port)
    {
        _server = std::make_unique<SSLServer>("turtle.cer", "turtle.pkey");

        BaseController::RegisterAll(_server.get());
       
        std::thread t
        {
            [this]()
            {
                        std::this_thread::sleep_for(std::chrono::seconds(5));
        _server->stop();
                }
        };
        t.detach();
        _server->listen(address, port);
    }

    void ApiServer::Stop()
    {
        if (_server && _server->is_running())
            _server->stop();
    }
}