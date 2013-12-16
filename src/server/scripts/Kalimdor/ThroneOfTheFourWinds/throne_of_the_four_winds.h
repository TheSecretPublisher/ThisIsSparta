/*
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
 *
 * Copyright (C) 2012 Forgotten Lands <http://www.forgottenlands.eu/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DEF_THRONE_OF_THE_FOUR_WINDS_H
#define DEF_THRONE_OF_THE_FOUR_WINDS_H

enum Data
{
    DATA_CONCLAVE_OF_WIND_EVENT,
    DATA_ALAKIR_EVENT,
    DATA_ANSHAL_EVENT,
    DATA_NEZIR_EVENT,
    DATA_ROHASH_EVENT,
    DATA_SPECIAL,
};

enum Data64
{
    DATA_ANSHAL,
    DATA_NEZIR,
    DATA_ROHASH,
    DATA_ALAKIR,
};

enum CreatureIds
{
   BOSS_ANSHAL                                    = 45870,
   BOSS_NEZIR                                     = 45871,
   BOSS_ROHASH                                    = 45872,

   BOSS_ALAKIR                                    = 46753,

   // Conclave of Wind
   NPC_ICE_PATCH                                  = 46186,
   NPC_SOOTHING_BREEZE                            = 46246,
   NPC_RAVENOUS_TRIGGER                           = 45813,
};

enum ConclaveSharedActions
{
    ACTION_NEZIR_ENTER_IN_COMBAT = 1,
    ACTION_ANSHAL_ENTER_IN_COMBAT,
    ACTION_ROHASH_ENTER_IN_COMBAT,
};

#endif