#include "BaseController.hpp"

namespace HttpApi
{
    std::vector<BaseController*> BaseController::_controllers;
    SSLServer* BaseController::_source;
}