#include "TestController.hpp"

#include "HttpApi/Authorizers/ApiKeyAuthorizer.hpp"

namespace HttpApi
{
    TestController::TestController(std::string key)
    {
        _authorizer = std::make_unique<ApiKeyAuthorizer>(key);
    }
}