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
#include <dpp/role.h>
#include <dpp/restrequest.h>

namespace dpp {

void cluster::role_create(const class role &r, command_completion_event_t callback) {
	rest_request<role>(this, API_PATH "/guilds", std::to_string(r.guild_id), "roles", m_post, r.build_json(), callback);
}

void cluster::role_delete(snowflake guild_id, snowflake role_id, command_completion_event_t callback) {
	rest_request<confirmation>(this, API_PATH "/guilds", std::to_string(guild_id), "roles/" + std::to_string(role_id), m_delete, "", callback);
}

void cluster::role_edit(const class role &r, command_completion_event_t callback) {
	rest_request<role>(this, API_PATH "/guilds", std::to_string(r.guild_id), "roles/" + std::to_string(r.id) , m_patch, r.build_json(true), callback);
}

void cluster::roles_edit_position(snowflake guild_id, const std::vector<role> &roles, command_completion_event_t callback) {
	if (roles.empty()) {
		return;
	}
	json j = json::array();
	for (auto & r : roles) {
		j.push_back({ {"id", r.id}, {"position", r.position} });
	}
	rest_request_list<role>(this, API_PATH "/guilds", std::to_string(guild_id), "roles", m_patch, j.dump(), callback);
}

void cluster::roles_get(snowflake guild_id, command_completion_event_t callback) {
	rest_request_list<role>(this, API_PATH "/guilds", std::to_string(guild_id), "roles", m_get, "", callback);
}

};
