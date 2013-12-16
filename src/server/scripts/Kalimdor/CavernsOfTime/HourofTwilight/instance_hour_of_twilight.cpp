/*
 * Copyright (C) 2010 - 2012 ProjectSkyfire <http://www.projectskyfire.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
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

#include "ScriptPCH.h"
#include "hour_of_twilight.h"

#define ENCOUNTERS 3

/* Boss Encounters
    Arcurion
    Asira Dawnslayer
    Archbishop Benedictus
 */

class instance_hour_of_twilight : public InstanceMapScript 
{
public:
	instance_hour_of_twilight() : InstanceMapScript("instance_hour_of_twilight", 755) // CHANGE THIS MAPID!!! 
    { }

	InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
		return new instance_hour_of_twilight_InstanceMapScript(map);
	}

	struct instance_hour_of_twilight_InstanceMapScript: public InstanceScript
    {
		instance_hour_of_twilight_InstanceMapScript(InstanceMap* map) : InstanceScript(map) { }

		uint32 uiEncounter[ENCOUNTERS];

		uint64 uiAsira;
		uint64 uiArcurion;
		uint64 uiArchbishop;
		uint64 uiTeamInInstance;
        
		void Initialize() 
        {
			uiAsira = 0;
			uiArcurion = 0;
			uiArchbishop = 0;
			uiTeamInInstance = 0;

			for (uint8 i = 0; i < ENCOUNTERS; ++i)
				uiEncounter[i] = NOT_STARTED;
		}

		bool IsEncounterInProgress() const 
        {
			for (uint8 i = 0; i < ENCOUNTERS; ++i) 
            {
				if (uiEncounter[i] == IN_PROGRESS)
					return true;
			}
			return false;
		}

		void OnCreatureCreate(Creature* pCreature) 
        {
			switch (pCreature->GetEntry())
            {
                // ADD THIS CASES WITH CORRECT BOSS ID
			   /* case BOSS_GENERAL_HUSAM:
				    uiGeneralHusam = pCreature->GetGUID();
				    break;
			    case BOSS_HIGH_PROPHET_BARIM:
				    uiHighProphetBarim = pCreature->GetGUID();
				    break;
			    case BOSS_LOCKMAW:
				    uiLockmaw = pCreature->GetGUID();
				    break;
			    case BOSS_AUGH:
				    uiAugh = pCreature->GetGUID();
				    break;
			    case BOSS_SIAMAT:
				    uiSiamat = pCreature->GetGUID();
				    break; */
			}
		}

		uint64 getData64(uint32 identifier) 
        {
			switch (identifier)
            {
                // ADD THIS CASES WITH CORRECT BOSS ID
			    /*case DATA_GENERAL_HUSAM:
				    return uiGeneralHusam;
			    case DATA_HIGH_PROPHET_BARIM:
				    return uiHighProphetBarim;
			    case DATA_LOCKMAW:
				    return uiLockmaw;
			    case DATA_AUGH:
				    return uiAugh;
			    case DATA_SIAMAT:
				    return uiSiamat;
                case GO_SIAMAT_PLATFORM:
                    return uiSiamatPlatform;*/
			}
			return 0;
		}

		void SetData(uint32 type, uint32 data)
        {
			switch (type)
            {
                // ADD THIS CASES WITH CORRECT BOSS EVENT ID
                /*
			    case DATA_GENERAL_HUSAM_EVENT:
				    uiEncounter[0] = data;
				    break;
			    case DATA_HIGH_PROPHET_BARIM_EVENT:
				    uiEncounter[1] = data;
				    break;
			    case DATA_LOCKMAW_EVENT:
				    uiEncounter[2] = data;
				    break;
				    */
			}

			if (data == DONE)
				SaveToDB();
		}

		uint32 GetData(uint32 type) const
        {
			switch (type)
            {
                // ADD THIS CASES WITH CORRECT BOSS EVENT ID
                /*
			    case DATA_GENERAL_HUSAM_EVENT:
				    return uiEncounter[0];
			    case DATA_HIGH_PROPHET_BARIM_EVENT:
				    return uiEncounter[1];
			    case DATA_LOCKMAW_EVENT:
				    return uiEncounter[2];*/
			}
			return 0;
		}

		std::string GetSaveData() 
        {
			OUT_SAVE_INST_DATA;

			std::string str_data;
			std::ostringstream saveStream;
			saveStream << "H T" << uiEncounter[0] << " " << uiEncounter[1] << " " << uiEncounter[2];
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
			uint16 data0, data1, data2;

			std::istringstream loadStream(in);
			loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2;

			if (dataHead1 == 'H' && dataHead2 == 'T') 
            {
				uiEncounter[0] = data0;
				uiEncounter[1] = data1;
				uiEncounter[2] = data2;

				for (uint8 i = 0; i < ENCOUNTERS; ++i)
					if (uiEncounter[i] == IN_PROGRESS)
						uiEncounter[i] = NOT_STARTED;
			} else
				OUT_LOAD_INST_DATA_FAIL;

			OUT_LOAD_INST_DATA_COMPLETE;
		}
	};
};

void AddSC_instance_hour_of_twilight()
{
	new instance_hour_of_twilight();
}
