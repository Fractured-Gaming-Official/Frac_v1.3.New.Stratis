// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2017 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleLoadouts.sqf
//	@file Author: AgentRev

/*
	HOW TO CREATE A PYLON LOADOUT:
	 1. Create new scenario in Eden, add vehicle, adjust pylon loadout, and set Object Init to: copyToClipboard str getPylonMagazines this
	 3. Play scenario, wait until loaded, then pause game and return to Eden.
	 4. Your pylon array is now in the clipboard, which you can paste in this file, e.g. _pylons = ["PylonMissile_Missile_AA_R73_x1","","","","","","","","","","","","",""];

	Note: You can use any pylon type you want in the script, even if not shown in the editor, it should normally work! e.g. "PylonRack_12Rnd_missiles" for "B_Plane_Fighter_01_F"
*/

switch (true) do
{
	// AH-9 Pawnee
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "pawneeGun": { _pylons = ["",""] };
			case "PawneeSkyHunter": { _pylons = ["PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_04_F"] };
			case "PawneeGround": { _pylons = ["PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_04_F"] };
			default           { _pylons = ["PylonRack_12Rnd_missiles","PylonMissile_1Rnd_LG_scalpel"] };
			
				
			
		};
	};

	// HellCat
	case (_class isKindOf "	I_Heli_light_03_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "HellGun": { _pylons = ["",""] };
			case "HellShrieker": { _pylons = ["PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F"] };
			case "HellAT": { _pylons = ["PylonRack_12Rnd_PG_missiles","PylonRack_3Rnd_LG_scalpel"] };
			
				
			
		};
	};
	
	// PO-30 Orca
	case (_class isKindOf "O_Heli_Light_02_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "orcaDAGR": { _pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_PG_missiles"] };
			default          { _pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_missiles"] };
		};
	};

	// AH-99 Blackfoot
	case (_class isKindOf "Heli_Attack_01_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_LG_scalpel","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonMissile_1Rnd_LG_scalpel","PylonMissile_1Rnd_AAA_missiles"];
	};

	// Mi-48 Kajman
	case (_class isKindOf "Heli_Attack_02_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonMissile_1Rnd_LG_scalpel","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonMissile_1Rnd_LG_scalpel"];
	};

	// Y-32 Xi'an
	case ({_class isKindOf _x} count ["VTOL_02_infantry_dynamicLoadout_base_F", "VTOL_02_vehicle_dynamicLoadout_base_F"] > 0):
	{
		_pylons = ["PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AGM_01_F"];
	};

	// A-143 Buzzard
	case (_class isKindOf "Plane_Fighter_03_dynamicLoadout_base_F"):
	{
		switch (_variant) do
		{
			case "buzzardAA": { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonWeapon_300Rnd_20mm_shells","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_Missile_AA_04_F"] };
			default           { _pylons = ["PylonRack_1Rnd_LG_scalpel","PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_LG_scalpel"] };
		};
		_customCode =
		{
			_veh setAmmoOnPylon [4, 500]; // 20mm gun
		};
	};

	// A-149 Gryphon
	case (_class isKindOf "Plane_Fighter_04_Base_F"):
	{
		_mags =
		[
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]], // extra gun mags (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1"];
	};

	// F/A-181 Black Wasp
	case (_class isKindOf "B_Plane_Fighter_01_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]], // extra gun mag (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"];
	};

	// F/A-181 Black Wasp (Stealth)
	case (_class isKindOf "B_Plane_Fighter_01_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]], // extra gun mags to make up for lack of pylons (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["","","","","","","","","","","",""];
	};

	// To-201 Shikra
	case (_class isKindOf "O_Plane_Fighter_02_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]], // extra gun mag (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Bomb_KAB250_x1","PylonMissile_Bomb_KAB250_x1","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Bomb_KAB250_x1"];
	};

	// To-201 Shikra (Stealth)
	case (_class isKindOf "O_Plane_Fighter_02_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]], // extra gun mags to make up for lack of pylons (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["","","","","","","","","","","","",""];
	};

	// A-164 Wipeout CAS
	case (_class isKindOf "Plane_CAS_01_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_Missile_AGM_02_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonRack_1Rnd_Missile_AGM_02_F","PylonRack_1Rnd_Missile_AA_04_F"];
	};

	// To-199 Neophron CAS
	case (_class isKindOf "Plane_CAS_02_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonMissile_1Rnd_Bomb_03_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonMissile_1Rnd_Bomb_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F"];
	};

	/*// Greyhawk/Ababil UAVs
	case (_class isKindOf "UAV_02_dynamicLoadout_base_F"):
	{
		switch (_variant) do
		{
			default
			{
				_customCode =
				{
					_veh setAmmoOnPylon [1, 3]; // right wing
					_veh setAmmoOnPylon [2, 3]; // left wing
					
				};
			};
		};
	};*/
	// Greyhawk Bomber UAV
	case (_class isKindOf "B_UAV_02_CAS_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["2Rnd_GBU12_LGB_MI10", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["weapon_Fighter_Gun_30mm", [0]],
			["GBU12BombLauncher", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
	// Ababil Bomber UAV
	case (_class isKindOf "O_UAV_02_CAS_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["2Rnd_GBU12_LGB_MI10", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["weapon_Fighter_Gun_30mm", [0]],
			["GBU12BombLauncher", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
	// Ababil Bomber UAV
	case (_class isKindOf "I_UAV_02_CAS_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["magazine_Fighter02_Gun30mm_AA_x180", [0]],
			["2Rnd_GBU12_LGB_MI10", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["weapon_Fighter_Gun_30mm", [0]],
			["GBU12BombLauncher", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};

	// KH-3A Fenghuang UAV
	/*case (_class isKindOf "O_T_UAV_04_CAS_F"):
	{
		_customCode =
		{
			_veh setMagazineTurretAmmo ["4Rnd_LG_Jian", 2, [0]];
		};
	};*/

	// UCAV Sentinel
	case (_class isKindOf "B_UAV_05_F"):
	{
		switch (_variant) do
		{
			case "sentinelBomber": 
			{ 
				_mags =
				[
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					["magazine_Bomb_KAB250_x1", [0]],
					
					["Laserbatteries", [0]]
					
				];
				
				
				_pylons = ["PylonMissile_Bomb_KAB250_x1","PylonMissile_Bomb_KAB250_x1"];
			};
			default                { _pylons = ["PylonMissile_Missile_AGM_02_x2","PylonMissile_Missile_AGM_02_x2"] };
		};
	};

	// MQ-12 Falcon UAV (non-dynamicLoadout)
	case (_class isKindOf "B_T_UAV_03_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["1000Rnd_65x39_Belt_Green", [0]],
			["24Rnd_missiles", [0]],
			["6Rnd_LG_scalpel", [0]],
			["2Rnd_AAA_missiles", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["LMG_M200", [0]],
			["missiles_DAR", [0]],
			["missiles_SCALPEL", [0]],
			["missiles_ASRAAM", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
    // Ceasar (non-dynamicLoadout)
	case (_class isKindOf "C_Plane_Civil_01_racing_F"):
	{
		_mags =
		[
			
			["500Rnd_127x99_mag_Tracer_Green", [-1]]
			
		];
		_weapons =
		[
			["HMG_127_LSV_01", [-1]]
			
			
		];
	};
	 
	// MQ-12 Falcon UAV (non-dynamicLoadout)
	case (_class isKindOf "B_T_UAV_03_dynamicLoadout_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["200Rnd_20mm_G_belt", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["GMG_20mm", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
	
	// Subs NATO
	case (_class isKindOf "B_SDV_01_F"):
	{
		_mags =
		[
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["Laserbatteries", [0]]
			
			
		];
		_weapons =
		[
		
			["arifle_SDAR_F", [0]],
			["Laserdesignator_mounted", [0]]
			
		];
	};
};