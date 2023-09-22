#include "TestController.hpp"

#include "Config.hpp"
#include "Common.h"

namespace HttpApi
{
    void RegisterControllers()
    {
        new TestController(sConfig.GetStringDefault("HttpApi.TransferKey", "Gheor"));
    }
}

