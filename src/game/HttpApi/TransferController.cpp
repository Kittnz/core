#include "TransferController.hpp"

#include "HttpApi/Authorizers/ApiKeyAuthorizer.hpp"

namespace HttpApi
{
    TransferController::TransferController(std::string key)
    {
        _authorizer = std::make_unique<ApiKeyAuthorizer>(key);
    }
}