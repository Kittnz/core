/*
* Copyright (C) 2017-2018 Light's Hope <https://lightshope.org>
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include "GuardEventAI.h"

GuardEventAI::GuardEventAI(Creature* pCreature) : CreatureEventAI(pCreature), m_uiTimer(time(nullptr) + 120)
{}

int GuardEventAI::Permissible(const Creature *creature)
{
    if ((creature->GetAIName() == "GuardEventAI") || (creature->IsGuard() && (creature->GetAIName() == "EventAI")))
        return PERMIT_BASE_SPECIAL;

    return PERMIT_BASE_NO;
}

// Returns whether the Unit is currently attacking other players or friendly npcs.
bool GuardEventAI::IsAttackingPlayerOrFriendly(const Unit* pWho) const
{
    if (pWho->IsPvPContested())
        return true;

    if (Unit* pVictim = pWho->GetVictim())
    {
        if (m_creature->IsFriendlyTo(pVictim) || pVictim->IsTaxi())
            return true;
    }

    return false;
}

void GuardEventAI::MoveInLineOfSight(Unit *pWho)
{
    if (!pWho)
        return;

    if (m_creature->GetVictim())
        return;

    // Check for OOC LOS Event
    if (!m_bEmptyList)
        UpdateEventsOn_MoveInLineOfSight(pWho);

    // Ignore Z for flying creatures
    if (!m_creature->CanFly() && pWho->IsCreature() && m_creature->GetDistanceZ(pWho) > CREATURE_Z_ATTACK_RANGE)
        return;

    float attackRadius = m_creature->GetAttackDistance(pWho);

    bool isAttackingFriend = false;

    if (pWho->IsPlayer() && !m_creature->IsFriendlyTo(pWho))
    {
        // Assignment, not a typo.
        if (isAttackingFriend = IsAttackingPlayerOrFriendly(pWho))
            if ((attackRadius < 30.0f))
                attackRadius = 30.0f;
    }

    if (!m_creature->IsWithinDistInMap(pWho, attackRadius, true, false))
        return;

    if (m_creature->CanInitiateAttack() && m_creature->IsValidAttackTarget(pWho) &&
        (pWho->IsHostileToPlayers() || m_creature->IsHostileTo(pWho) || isAttackingFriend) &&
        pWho->IsInAccessablePlaceFor(m_creature) && m_creature->IsWithinLOSInMap(pWho))
    {
        AttackStart(pWho);
    }
}

void GuardEventAI::EnterCombat(Unit *pWho)
{
    CreatureEventAI::EnterCombat(pWho);
    m_creature->CallForHelp(30.0f);
}

// Turtle WoW Start (Author: Kruxis)

//=============================================================================
// Script for Emote interaction with City guards! (MUCH WOW, SO COOL)
// 
// 
// Emote Distance:
// Joke -> 5.0f
// Tickel -> 5.0f
// Flex -> 10.0f
// Salute -> 10.0f
// Taunt -> 10.0f
// Wave/Hello/Hail/Greet -> 20.0f
// Bye -> 20.0f
//=============================================================================
void GuardEventAI::ReceiveEmote(Player* pPlayer, const uint32 uiEmote)
{
	if (m_creature->IsAlive() && !m_creature->IsInCombat() && m_creature->IsWithinLOSInMap(pPlayer) && !pPlayer->HasStealthAura())
	{
		switch (pPlayer->GetTeam())
		{
			case ALLIANCE:
			{
				// Human Guards
				if (m_creature->GetFactionTemplateId() == 11)
				{
					switch (uiEmote)
					{

						// General greeting
						case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Welcome to Stormwind, Traveler! Stay safe!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Greetings!", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("Greetings, enjoy your stay in Stormwind!", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("I'm here whenever you need help.", Language::LANG_COMMON); break; }
										case 5: {m_creature->MonsterSay("May the light protect you!", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
										case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Salute
						case TEXTEMOTE_SALUTE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("For the Alliance!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("May the light protect you!", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("In the name of the King.", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("Stay safe, Traveler.", Language::LANG_COMMON); break; }
										case 5: {break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Bye
						case TEXTEMOTE_BYE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Save travels, Friend!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("I hope you enjoyed your stay in Stormwind.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("Make sure to stock up on rations before you leave Stormwind.", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("Until next time.", Language::LANG_COMMON); break; }
										case 5: {m_creature->MonsterSay("May the light protect you on your journey!", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
									}
								}
							}
							break;
						}

						// Joke
						case TEXTEMOTE_JOKE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 6);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("I havn't heard this one in a while!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("That's a good one!", Language::LANG_COMMON); break; }
										case 3: {break; }
										case 4: {m_creature->MonsterSay("A duck walked into an Apothecary and said 'Give me some ChapStick... and put it on my bill!'", Language::LANG_COMMON); break; }
										case 5: {m_creature->MonsterSay("So, an orc walks into a bar with a parrot on his shoulder. The bartender says 'Hey, where'd you get that?' The parrot says 'Durotar. They've got them all over the place!'", Language::LANG_COMMON); break; }
										case 6: {m_creature->MonsterSay("You have to try harder to make me laugh.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
										case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_POINT); break; }
									}
								}
							}
							break;
						}

						//Flex
						case TEXTEMOTE_FLEX:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("HA! You seem strong! Look at this.", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Keep training and you'll be as strong as me some day. Haha!", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("By the light, what strength!", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("Good to see strong Travelers like you around Stormwind.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
									}
								}
							}
							break;
						}

						// Taunt
						case TEXTEMOTE_TAUNT:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 3);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Show some respect to the guards of Stormwind!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("This does not work on me.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("You make a fool of yourself.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
										case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
									}
								}
							}
							break;
						}

						// Tickle
						case TEXTEMOTE_TICKLE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 3);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Hey, back off!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Hahaha! STOP! I'm working here!", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("What... i am in full armor. Did you really expect that works?", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACK1H); break; }
										case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
									}
								}
							}
							break;
						}
					}
				}


				// Nightelf Guards
				if (m_creature->GetFactionTemplateId() == 79)
				{
					switch (uiEmote)
					{

						// General greeting
						case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 6);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Can i assist you?", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Welcome, Traveler. You must have countless battles. Please, stay as long as you wish and calm your body and mind under Mother Natures protection.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("Ishnu-alah.", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("What brings you here?", Language::LANG_COMMON); break; }
										case 5: {m_creature->MonsterSay("Elune be with you.", Language::LANG_COMMON); break; }
										case 6: {m_creature->MonsterSay("Ishnu-dal-dieb.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
										case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
									}
								}
							}
							break;
						}

						// Salute
						case TEXTEMOTE_SALUTE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("For the high priestess.", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("May Elune guide you.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("For the Alliance.", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("We will protect you during your rest here!", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Bye
						case TEXTEMOTE_BYE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("May Elune protect you on your journey, Traveler!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Good bye, come back when ever you need a rest.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("Till next we meet!", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("You're already leaving? Stay safe.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
									}
								}
							}
							break;
						}

						// Joke
						case TEXTEMOTE_JOKE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Haha! That's a good one!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Ha! Here is one for you. We are all Nightelves. But.. i'm more of a morning Elf.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("Oh sorry, what was that? I was sunken in thoughts", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("By Elune, i have to remember that one!", Language::LANG_COMMON); break; }
										case 5: {m_creature->MonsterSay("Is this the point where i should... laugh?", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
									}
								}
							}
							break;
						}

						// Flex
						case TEXTEMOTE_FLEX:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Wow! Mother Nature has truely blessed you!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("I am glad that someone as strong as you stays in here for a while.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("You are not the only strong here.", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("Remember, with great strength comes great strength! No wait... With great strong... Ah, forget it! You look good!", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD);  break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX);  break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
									}
								}
							}
							break;
						}

						// Taunt
						case TEXTEMOTE_TAUNT:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("You'd better be carefull who you taunt.", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("Your try is just a waste of our fresh air.", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("You dare to pest the air around is with that foul mouth?!", Language::LANG_COMMON); break; }
										case 4: {m_creature->MonsterSay("You should visit a priestess and cleansen your mind.", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
									}
								}
							}
							break;
						}

						// Tickle
						case TEXTEMOTE_TICKLE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 3);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Stop it!", Language::LANG_COMMON); break; }
										case 2: {m_creature->MonsterSay("I need to focus and look for potential threats, don't distract me. Hahaha!", Language::LANG_COMMON); break; }
										case 3: {m_creature->MonsterSay("HEY! Only looking, no touching!", Language::LANG_COMMON); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);  break; }
									}
								}
							}
							break;
						}
					}

					// Dwarf Guards
					if (m_creature->GetFactionTemplateId() == 57)
					{
						switch (uiEmote)
						{

							// General greeting
							case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 6);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("I do hope the mountain is warm enough for ye.", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("Stop by at the inn for some relaxation.", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("The mountain, home of the dwarves, is open to all of the Alliance.", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("Welcome to Ironforge, Traveler. Don't miss out a good beer in one of our Taverns.", Language::LANG_COMMON); break; }
											case 5: {m_creature->MonsterSay("Ha! It's good to see ye again. Pull up a chair by the hearth.", Language::LANG_COMMON); break; }
											case 6: {m_creature->MonsterSay("Greetings, Pal. Come talk to me when you get lost!", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
										}
									}
								}
								break;
							}

							// Salute
							case TEXTEMOTE_SALUTE:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 4);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("For the Bronzebeards!", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("For King Magni!", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("At your service.", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("We keep you protected. Be welcome in our City.", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }

										}
									}
								}
								break;
							}

							// Bye
							case TEXTEMOTE_BYE:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 4);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("Come back if you crave for some beer in a warm inn, will ya?", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("Well met, Travevller. Stay safe and kill some creatures out there!", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("Don't forget, the mountain welcomes everyone of the Alliance!", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("Be blessed with fortune, friend!", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
										}
									}
								}
								break;
							}

							// Joke
							case TEXTEMOTE_JOKE:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 4);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("That's one for the inn. Bahahaha!", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("By King Magnis beard! BAHahaha. Where'd you got that one from?!", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("Hahaha! I don't drink anymore... 'course, I don't drink any less either! BAHAHAhahaha!", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("Hm... Maybe i need more beer to laugh about that.", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
											case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
										}
									}
								}
								break;
							}

							// Flex
							case TEXTEMOTE_FLEX:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 4);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("What glorious muscles!", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("Ironforge will be surely safe with you stoping by.", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("You try to impress a dwarf with muscles? Look, i am 50% muscles and 50% beer! BAHAHA!", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("You are as slender as a straw of wheat!", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
											case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
											case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										}
									}
								}
								break;
							}

							// Taunt
							case TEXTEMOTE_TAUNT:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 5);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("By the stinking fart of a Troll, you're lucky i am on duty right now!", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("You should back off before i lose... My... TEMPER!", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("You shouldn't put your bare hand in a forge, you might burn yourself.", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("My arms might be small but so is your brain!", Language::LANG_COMMON); break; }
											case 5: {m_creature->MonsterSay("I hope i misheared that.", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_ROAR); break; }
											case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
											case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
										}
									}
								}
								break;
							}

							// Tickle
							case TEXTEMOTE_TICKLE:
							{
								if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
								{
									if (CheckEmoteCooldown())
									{
										const auto TextRandom = urand(1, 5);
										switch (TextRandom)
										{
											case 1: {m_creature->MonsterSay("Bahaha! Stop it Pal!", Language::LANG_COMMON); break; }
											case 2: {m_creature->MonsterSay("G-ggg... Bahahaha!", Language::LANG_COMMON); break; }
											case 3: {m_creature->MonsterSay("Oi, Mate. You... can't... just... tickle the guards around here! HAHA!", Language::LANG_COMMON); break; }
											case 4: {m_creature->MonsterSay("You... know i wear an armor with tickle-resistance + 10, right?", Language::LANG_COMMON); break; }
											case 5: {m_creature->MonsterSay("Hey! Stay away from me!", Language::LANG_COMMON); break; }
										}
										switch (TextRandom)
										{
											case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
											case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
											case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED); break; }
										}
									}
								}
								break;
							}
						}
					}
				}
				// EasterEgg
				if (m_creature->GetFactionTemplateId() == 85)
				{
					if (uiEmote == TEXTEMOTE_LAUGH)
					{
						if (m_creature->GetDistance3dToCenter(pPlayer) <= 40.f)
						{
							if (CheckEmoteCooldown())
							{
								m_creature->MonsterSay("lol", Language::LANG_ORCISH); // "kek" for alliance
								m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
							}
						}
					}
				}
				break;
			}

			case HORDE:
			{
				// Orc Guards
				if (m_creature->GetFactionTemplateId() == 85)
				{
					switch (uiEmote)
					{

						// General greeting
						case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 6);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Throm'ka!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Lok'tar!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Lok'tar ogar!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Welcome, Traveler.", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Don't stay to long, the path of war never ends!", Language::LANG_ORCISH); break; }
										case 6: {m_creature->MonsterSay("Stay out of trouble.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
										case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
									}
								}
							}
							break;
						}

						// Salute
						case TEXTEMOTE_SALUTE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 6);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Strength and honor!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Victory and honor!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("My life for the Horde!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("For the Warchief.", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Blood and thunder!", Language::LANG_ORCISH); break; }
										case 6: { break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Bye
						case TEXTEMOTE_BYE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Don't die out there!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Next time you come back, me want to see scars on you!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Always be on your guard.", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Bring honor to the Horde!", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Joke
						case TEXTEMOTE_JOKE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Go away and slay some enemys! Don't waste your breath.", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Tell your jokes someone else, i'm busy!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("BAHAHA!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("I got no time for that! I will CRUSH and DESTROY and... uh... oooh... shiny...", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_NO); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_POINT); break; }
									}
								}
							}
							break;
						}

						// Flex
						case TEXTEMOTE_FLEX:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("You must have fought many battles!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("There should be more of your kind.", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Think you strong? Me show you what strong! HAHAHA!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("A true fighter! Good to have you on our side!", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Ha! A Draenei has more muscles than you! Bahahahaaa", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
										case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
									}
								}
							}
							break;
						}

						// Taunt
						case TEXTEMOTE_TAUNT:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Trust me... you no wanna start this.", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Your weapon should break in combat!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("If i wouldn't be on duty i would snap your neck like a branch!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("A gnome like you should not try to fight.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
									}
								}
							}
							break;
						}

						// Tickle
						case TEXTEMOTE_TICKLE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 3);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Why don't you lead an army instead of touching me!?", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("You no touch me!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Are you done?", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
										case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
									}
								}
							}
							break;
						}
					}

					// Easteregg Poke (WC3)
					if (uiEmote == TEXTEMOTE_POKE)
					{
						if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
						{
							if (CheckEmoteCooldown())
							{
								m_creature->MonsterSay("Poke poke poke - is that all you do?", Language::LANG_ORCISH);
								m_creature->HandleEmote(EMOTE_ONESHOT_ROAR);
							}
						}
					}
				}

				// Bluffwatch
				if (m_creature->GetFactionTemplateId() == 105)
				{
					switch (uiEmote)
					{

						// General greeting
						case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 6);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Peace, friend.", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("The winds guide you.", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("How may I aid you?", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Welcome to Thunderbluff, stay away from the cliffs!", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("The wind announced your arrival.", Language::LANG_ORCISH); break; }
										case 6: {m_creature->MonsterSay("Earth Mother protects you.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
									}
								}
							}
							break;
						}

						// Salute
						case TEXTEMOTE_SALUTE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Ish-ne-alo Por-ah", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("May you find peace in the winds.", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Relax a bit. We make sure to keep you safe. Well... if you stay away from the cliff.", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Earth Mother shall keep you safe and cozzy here.", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Strong as a rock and free as the wind. We protect you, Traveler.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
									}
								}
							}
							break;
						}

						// Bye
						case TEXTEMOTE_BYE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 7);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Walk with the Earth Mother.", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Winds be at your back.", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("May the eternal sun shine upon thee.", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("May the eternal sun shine upon thee.", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Farewell!", Language::LANG_ORCISH); break; }
										case 6: {m_creature->MonsterSay("Well met, Traveler", Language::LANG_ORCISH); break; }
										case 7: {m_creature->MonsterSay("Stay victorious, Friend", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: case 5: case 6: case 7: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
									}
								}
							}
							break;
						}

						// Joke
						case TEXTEMOTE_JOKE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Hohohoho. You should tell that one the others!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("I shouldn't laugh at this but... hm... hmhm.... Hoahahaha!", Language::LANG_ORCISH); break; }
										case 3: {break; }
										case 4: {m_creature->MonsterSay("Oh... that was a joke. Haha... ha... it wasn't that good.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
									}
								}
							}
							break;
						}

						// Flex
						case TEXTEMOTE_FLEX:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("And you took the lift up here? You could CLIMB up here without sweating!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("By the Earth Mother, i feel sorry for who ever stands against you in battle!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("You call that strong? I show you what strength looks like!", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Stop that, you make the other jealous.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
										case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
									}
								}
							}
							break;
						}

						// Taunt
						case TEXTEMOTE_TAUNT:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 5);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("You know... a fall here is very deep.", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("The wind will remember your conceit!", Language::LANG_ORCISH); break; }
										case 3: {m_creature->MonsterSay("Thunderbluff is a home for everyone. Don't make me do something else.", Language::LANG_ORCISH); break; }
										case 4: {m_creature->MonsterSay("Moo'. Are you happy now?!", Language::LANG_ORCISH); break; }
										case 5: {m_creature->MonsterSay("Ha, you make a fool of yourself.", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
										case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
									}
								}
							}
							break;
						}

						// Tickle
						case TEXTEMOTE_TICKLE:
						{
							if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
							{
								if (CheckEmoteCooldown())
								{
									const auto TextRandom = urand(1, 4);
									switch (TextRandom)
									{
										case 1: {m_creature->MonsterSay("Hohohoho!", Language::LANG_ORCISH); break; }
										case 2: {m_creature->MonsterSay("Your fingers are as fast as the wind. Hahaha!", Language::LANG_ORCISH); break; }
										case 3: {break; }
										case 4: {m_creature->MonsterSay("That doesn't work on me...", Language::LANG_ORCISH); break; }
									}
									switch (TextRandom)
									{
										case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
										case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_NO); break; }
									}
								}
							}
							break;
						}
					}
				}
				break;
			}
		}
	}
}
// Turtle WoW End 
