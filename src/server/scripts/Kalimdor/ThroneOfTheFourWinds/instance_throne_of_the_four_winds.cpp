/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
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

#include "throne_of_the_four_winds.h"

#define ENCOUNTERS 2

class instance_throne_of_the_four_winds : public InstanceMapScript
{
public:
    instance_throne_of_the_four_winds() : InstanceMapScript("instance_throne_of_the_four_winds", 754) { }

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new instance_throne_of_the_four_winds_InstanceMapScript(map);
    }

    struct instance_throne_of_the_four_winds_InstanceMapScript: public InstanceScript
    {
        instance_throne_of_the_four_winds_InstanceMapScript(InstanceMap* map) : InstanceScript(map) {}

        uint32 Encounter[ENCOUNTERS];
        uint32 conclave[3];
        uint32 DataSpecial;

        uint64 AnshalGUID;
        uint64 NezirGUID;
        uint64 RohashGUID;

        uint64 AlakirGUID;

        void Initialize()
        {
            AnshalGUID = 0;
            NezirGUID = 0;
            RohashGUID = 0;
            AlakirGUID = 0;

            for (uint8 i = 0 ; i<ENCOUNTERS; ++i)
                Encounter[i] = NOT_STARTED;
        }

        void OnPlayerEnter(Player* player)
        { // If Conclave of Wind is not DONE check weather they must be spawed
        }

        bool IsEncounterInProgress() const
        {
            for (uint8 i = 0; i < ENCOUNTERS; ++i)
            {
                if (Encounter[i] == IN_PROGRESS)
                    return true;
            }
            return false;
        }

        void OnCreatureCreate(Creature* creature )
        {
            switch (creature->GetEntry())
            {
                case BOSS_ANSHAL:
                    AnshalGUID = creature->GetGUID();
                    break;
                case BOSS_NEZIR:
                    NezirGUID = creature->GetGUID();
                    break;
                case BOSS_ROHASH:
                    RohashGUID = creature->GetGUID();
                    break;
                case BOSS_ALAKIR:
                    AlakirGUID = creature->GetGUID();
                    break;
            }
        }

        uint64 getData64(uint32 identifier) const
        {
            switch (identifier)
            {
                case DATA_ANSHAL:
                    return AnshalGUID;
                case DATA_NEZIR:
                    return NezirGUID;
                case DATA_ROHASH:
                    return RohashGUID;
                case DATA_ALAKIR:
                    return AlakirGUID;
            }
            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
                case DATA_CONCLAVE_OF_WIND_EVENT:
                    Encounter[0] = data;
                    break;
                case DATA_ALAKIR_EVENT:
                    Encounter[1] = data;
                    break;
                case DATA_ANSHAL_EVENT:
                    if (data == IN_PROGRESS && conclave[0] != SPECIAL)
                    {
                        if (Creature* nezir = instance->GetCreature(NezirGUID))
                            if (!nezir->isInCombat())
                                nezir->AI()->DoAction(ACTION_NEZIR_ENTER_IN_COMBAT);

                        if (Creature* rohash = instance->GetCreature(RohashGUID))
                            if (!rohash->isInCombat())
                                rohash->AI()->DoAction(ACTION_ROHASH_ENTER_IN_COMBAT);
                    }
                    conclave[0] = data;
                    break;
                case DATA_NEZIR_EVENT:
                    if (data == IN_PROGRESS  && conclave[1] != SPECIAL)
                    {
                        if (Creature* anshal = instance->GetCreature(AnshalGUID))
                            if (!anshal->isInCombat())
                                anshal->AI()->DoAction(ACTION_ANSHAL_ENTER_IN_COMBAT);

                        if (Creature* rohash = instance->GetCreature(RohashGUID))
                            if (!rohash->isInCombat())
                                rohash->AI()->DoAction(ACTION_ROHASH_ENTER_IN_COMBAT);
                    }
                    conclave[1] = data;
                    break;
                case DATA_ROHASH_EVENT:
                    if (data == IN_PROGRESS && conclave[2] != SPECIAL)
                    {
                        if (Creature* nezir = instance->GetCreature(NezirGUID))
                            if (!nezir->isInCombat())
                                nezir->AI()->DoAction(ACTION_NEZIR_ENTER_IN_COMBAT);

                        if (Creature* anshal = instance->GetCreature(AnshalGUID))
                            if (!anshal->isInCombat())
                                anshal->AI()->DoAction(ACTION_ANSHAL_ENTER_IN_COMBAT);
                    }
                    conclave[2] = data;
                    break;
                case DATA_SPECIAL:
                    DataSpecial = data;
                    break;
            }

            if (data == DONE)
                SaveToDB();
        }

        uint32 GetData(uint32 type) const
        {
            switch (type)
            {
                case DATA_CONCLAVE_OF_WIND_EVENT:
                    return Encounter[0];
                case DATA_ALAKIR_EVENT:
                    return Encounter[1];
                case DATA_SPECIAL:
                    return DataSpecial;
                case DATA_ANSHAL_EVENT:
                    return conclave[0];
                case DATA_NEZIR_EVENT:
                    return conclave[1];
                case DATA_ROHASH_EVENT:
                    return conclave[2];
            }
            return 0;
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::string str_data;
            std::ostringstream saveStream;
            saveStream << "T W" << Encounter[0] << " " << Encounter[1];
            str_data = saveStream.str();

            OUT_SAVE_INST_DATA_COMPLETE;
            return str_data;
        }

        void Load(const char* in)
        {
            if (!in)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(in);

            char dataHead1, dataHead2;
            uint16 data0, data1;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> data0 >> data1;

            if (dataHead1 == 'T' && dataHead2 == 'W')
            {
                Encounter[0] = data0;
                Encounter[1] = data1;

                for (uint8 i=0; i < ENCOUNTERS; ++i)
                    if (Encounter[i] == IN_PROGRESS)
                        Encounter[i] = NOT_STARTED;
            }
            else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_throne_of_the_four_winds()
{
    new instance_throne_of_the_four_winds();
}