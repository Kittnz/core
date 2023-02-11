/************************************************************************************
 *
 * D++, A Lightweight C++ library for Discord
 *
 * Copyright 2021 Craig Edwards and D++ contributors 
 * (https://github.com/brainboxdotcc/DPP/graphs/contributors)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ************************************************************************************/
#pragma once
#include <dpp/export.h>
#include <stddef.h>

namespace dpp {

	/** @brief Supported image types for profile pictures */
	enum image_type {
		/// image/png
		i_png,
		/// image/jpeg
		i_jpg,
		/// image/gif
		i_gif
	};

	/** @brief Log levels */
	enum loglevel {
		/// Trace
		ll_trace = 0,
		/// Debug
		ll_debug,
		/// Information
		ll_info,
		/// Warning
		ll_warning,
		/// Error
		ll_error,
		/// Critical
		ll_critical
	};

};
