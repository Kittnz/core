#pragma once
#include "httplib.h"
#include "Common.h"
#include "Log.h"

#include <vector>

namespace HttpApi
{
    using namespace httplib;

    using GetHandler = httplib::SSLServer::Handler;
    using PostHandler = httplib::SSLServer::HandlerWithContentReader;

    template <auto V>
    struct value_type
    {
        using type = decltype(V);
        static constexpr type value = V;
    };

    enum class HttpMethod
    {
        Get,
        Post
    };

    class BaseController
    {
    public:
        BaseController() 
        {
            _controllers.push_back(this);
        }

        virtual ~BaseController() = default;

        static void RegisterAll(SSLServer* server)
        {
            _source = server;
            for (const auto& controller : _controllers)
            {
                controller->RegisterCommands(server);
            }
        }

        virtual bool IsAuthorized(const Request&) const = 0;
        virtual void RegisterCommands(SSLServer* server) = 0;

        template <HttpMethod method, typename F =
        std::conditional_t<method == HttpMethod::Get, GetHandler, PostHandler>>
        void RegisterEndpoint(std::string endpoint, F&& handler)
        {
            sLog.out(LOG_API, string_format("Registering endpoint {}..", endpoint).c_str());
            if constexpr (method == HttpMethod::Get)
            {
                _source->Get(endpoint, std::forward<F>(handler));
            }
            else if (method == HttpMethod::Post)
            {
                _source->Post(endpoint, std::forward<F>(handler));
            }
        }

    private:
        static std::vector<BaseController*> _controllers;
        static SSLServer* _source;
    };
}