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
#include <dpp/discordevents.h>
#include <dpp/cluster.h>
#include <dpp/guild.h>
#include <dpp/role.h>
#include <dpp/stringops.h>
#include <dpp/nlohmann/json.hpp>

using json = nlohmann::json;

namespace dpp { namespace events {

/**
 * @brief Handle event
 * 
 * @param client Websocket client (current shard)
 * @param j JSON data for the event
 * @param raw Raw JSON string
 */
void guild_role_delete::handle(discord_client* client, json &j, const std::string &raw) {
	json &d = j["d"];
	dpp::guild* g = dpp::find_guild(snowflake_not_null(&d, "guild_id"));
	if (g) {
		if (client->creator->cache_policy.role_policy == dpp::cp_none) {
			dpp::role r;
			r.fill_from_json(g->id, &d);
			if (!client->creator->on_guild_role_delete.empty()) {
				dpp::guild_role_delete_t grd(client, raw);
				grd.deleting_guild = g;
				grd.deleted = &r;
				client->creator->on_guild_role_delete.call(grd);
			}
		} else {
			json& role = d["role"];
			dpp::snowflake id = snowflake_not_null(&role, "id");
			dpp::role *r = dpp::find_role(id);
			if (!client->creator->on_guild_role_delete.empty()) {
			    dpp::guild_role_delete_t grd(client, raw);
			    grd.deleting_guild = g;
			    grd.deleted = r ? r : nullptr;
			    grd.role_id = id;
			    client->creator->on_guild_role_delete.call(grd);
			}
			if (r) {
				auto i = std::find(g->roles.begin(), g->roles.end(), r->id);
				if (i != g->roles.end()) {
					g->roles.erase(i);
				}
				dpp::get_role_cache()->remove(r);
			}
		}
	}
}

}};
