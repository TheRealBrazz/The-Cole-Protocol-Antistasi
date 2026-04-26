private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "UNSCA"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "UNSCA"]] call _fnc_saveToTemplate;

["flag", "flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\tcp\Data\Flags\Flag_UNSC_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_NATO"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["B_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basic = ["TCP_B_UNSC_A_U_M274R","B_Truck_01_mover_F"];
private _unarmedVehicles = ["TCP_B_UNSC_A_U_M12A", "TCP_B_UNSC_A_U_M831A"];
private _armedVehicles = ["TCP_B_UNSC_A_U_M12A_LAAG_M41", "TCP_B_UNSC_A_U_M12A_ALIM_M68A", "TCP_B_UNSC_A_U_M12A_ALIM_M68A"];
private _Trucks = ["B_Truck_01_covered_F", "B_Truck_01_transport_F"];
private _cargoTrucks = ["B_Truck_01_cargo_F", "B_Truck_01_flatbed_F", "B_UGV_01_F"];
private _ammoTrucks = ["B_Truck_01_ammo_F"];
private _repairTrucks = ["B_Truck_01_Repair_F","B_APC_Tracked_01_CRV_F"];
private _fuelTrucks = ["B_Truck_01_fuel_F"];
private _medicalTrucks = ["B_Truck_01_medical_F"];
private _lightAPCs = [];
private _APCs = ["B_APC_Wheeled_01_cannon_F","a3a_APC_Wheeled_03_cannon_blufor_F"];  // CRV has no cargo: "B_APC_Tracked_01_CRV_F"
private _IFVs = ["B_APC_Tracked_01_rcws_F"];

private _airborneVehicles = ["B_APC_Wheeled_01_cannon_F","B_UGV_01_rcws_F"];
private _lightTanks = ["B_UGV_01_rcws_F"];
private _tanks = ["B_MBT_01_TUSK_F", "B_MBT_01_cannon_F"];
private _aa = ["B_APC_Tracked_01_AA_F"];

private _transportBoat = ["B_Boat_Transport_01_F"];
private _gunBoat = ["B_Boat_Armed_01_minigun_F","a3a_Boat_Armed_01_hmg_blufor_F"];

private _planesCAS = ["B_Plane_CAS_01_dynamicLoadout_F"];
private _planesLargeCAS = [];

private _planesAA = ["B_Plane_CAS_01_dynamicLoadout_F"];
private _planesLargeAA = [];

private _planesTransport = [];
private _gunship = [];

private _transportHelicopters = ["B_Heli_Transport_01_F"];

private _helisLight = ["B_Heli_Light_01_F"];
private _helisLightAttack = ["B_Heli_Light_01_dynamicLoadout_F"];
private _helisAttack = ["B_Heli_Attack_01_dynamicLoadout_F"];

private _airPatrol = ["B_Heli_Light_01_F","B_Heli_Light_01_dynamicLoadout_F"];

private _artillery = ["B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
["magazines", createHashMapFromArray [
    ["B_MBT_01_arty_F",["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_mine"]],
    ["B_MBT_01_mlrs_F",["12Rnd_230mm_rockets", "12Rnd_230mm_rockets_cluster"]],
    ["APC_Wheeled_01_mortar_base_lxWS", ["64Rnd_60mm_Mo_guided_lxWS"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["B_UAV_02_dynamicLoadout_F", "B_UAV_05_F", "B_T_UAV_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = ["B_UAV_01_F"];

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
private _militiaLightArmed = ["B_G_Offroad_01_armed_F", "TCP_B_UNSC_A_U_M12A_LAAG_M41"];
private _militiaTrucks = ["B_Truck_01_covered_F", "B_Truck_01_transport_F"];
private _militiaCars = ["B_G_Offroad_01_F", "TCP_B_UNSC_A_U_M12A"];
private _militiaAPCs = [];

private _policeVehs = ["B_GEN_Offroad_01_gen_F"];

private _staticMG = ["B_G_HMG_02_high_F", "B_HMG_01_high_F", "TCP_B_UNSC_A_U_LAAG_M41"];
private _staticAT = ["B_static_AT_F", "B_GMG_01_high_F", "TCP_B_UNSC_A_U_ALIM_M68A", "TCP_B_UNSC_A_U_ALIM_M68B"];
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["B_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers = [];

private _radar = [];
private _SAM = [];

["howitzerMagazineHE", "magazine_ShipCannon_120mm_HE_shells_x32","magazine_ShipCannon_120mm_HE_cluster_shells_x2"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;


["vehiclesAirPatrol", _airPatrol] call _fnc_saveToTemplate;
["vehiclesGunBoats", _gunBoat] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", _planesLargeCAS] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", _planesLargeAA] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", _gunship] call _fnc_saveToTemplate;
["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _militiaTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesTrucks", _Trucks] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;
["vehiclesBasic", _basic] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;

["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _planesTransport] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _helisAttack] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesArtillery", _artillery] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["vehiclesLightTanks",  _lightTanks] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

private _voices = ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE","Male01FRE","Male02FRE","Male03FRE"];
private _sfVoices = ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"];
private _faces = ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem",
"GreekHead_A3_05","GreekHead_A3_07","WhiteHead_01","WhiteHead_02",
"WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
"WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32",
"TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_09",
"TanoanHead_A3_08","RussianHead_4","LivonianHead_5","LivonianHead_2","LivonianHead_9","RussianHead_1","LivonianHead_6","LivonianHead_3","RussianHead_3",
"LivonianHead_1","RussianHead_2","LivonianHead_10","LivonianHead_8","LivonianHead_4","LivonianHead_7","RussianHead_5","Sturrock",
"WhiteHead_22_l","WhiteHead_22_sa","WhiteHead_22_a"
];

["voices", _voices] call _fnc_saveToTemplate;
["sfVoices", ["Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB"]] call _fnc_saveToTemplate;
["eliteVoices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG",
"Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE","Male01FRE","Male02FRE","Male03FRE","Male01POL","Male02POL","Male03POL"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;
["insignia", ["TCP_UNSC_Shield", "", ""]] call _fnc_saveToTemplate;
["sfInsignia", ["TCP_ODST"]] call _fnc_saveToTemplate;

"NATOMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""],
["TCP_launch_M41_Brown", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];
_loadoutData set ["ATLaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""],
["TCP_launch_M41_Brown", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];
_loadoutData set ["missileATLaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""],
["TCP_launch_M41_Brown", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""],
["TCP_launch_M41_Brown", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];
_loadoutData set ["sidearms", ["TCP_hgun_pistol_M6G"]];

_loadoutData set ["ATMines", ["TCP_M725_Remote_Mag", "TCP_T14_Remote_Mag"]];
_loadoutData set ["APMines", ["TCP_M250_Remote_Mag"]];
_loadoutData set ["lightExplosives", ["TCP_M243_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["TCP_M168_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["TCP_M9R_Frag", "TCP_M9I_Frag"]];
_loadoutData set ["smokeGrenades", ["TCP_M21_Smoke"]];
_loadoutData set ["signalsmokeGrenades", ["TCP_M21_SmokeYellow", "TCP_M21_SmokeRed", "TCP_M21_SmokePurple", "TCP_M21_SmokeOrange", "TCP_M21_SmokeGreen", "TCP_M21_SmokeBlue"]];

private _slglammo = ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"];
private _glammo = ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"];

private _MXslglammo = ["3Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F","3Rnd_Smoke_Grenade_shell"];
private _MXglammo = ["3Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell"];

private _MA37slglammo = ["TCP_1Rnd_40_Shell_HE","TCP_1Rnd_40_Shell_TD","TCP_1Rnd_40_Shell_Smoke_White"];
private _MA37glammo = ["TCP_1Rnd_40_Shell_HE","TCP_1Rnd_40_Shell_TD"];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_OPFOR"]];
_loadoutData set ["binoculars", ["TCP_Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["TCP_U_B_CBUU_TShirt_Untucked_Black"]];
_loadoutData set ["traitorVests", ["V_BandollierB_blk", "TCP_V_M43A_Light_Black"]];
_loadoutData set ["traitorHats", ["TCP_H_PatrolCap_Urban", "TCP_H_TacticalCap_Black", "TCP_H_Beret_Blue"]];

_loadoutData set ["officerUniforms", ["TCP_U_B_CBUU_FieldTop_Full_Urban"]];
_loadoutData set ["officerVests", ["TCP_V_M43A_Light_Black"]];
_loadoutData set ["officerHats", ["TCP_H_PatrolCap_Urban", "TCP_H_Beret_Black", "TCP_H_Beret_Blue"]];

_loadoutData set ["cloakUniforms", ["U_B_FullGhillie_ard", "U_B_FullGhillie_sard", "U_B_GhillieSuit"]];
_loadoutData set ["cloakVests", ["V_Chestrig_khk"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["longRangeRadios", [
"TCP_B_ANPRC171_Black",
"TCP_B_ANPRC171_Roll_Black",
"TCP_B_ANPRC171_Patrol_Roll_Black"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["TCP_H_Beret_Blue"]];
_loadoutData set ["sniHats", ["TCP_H_boonieHat_Black"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "B_IR_Grenade"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", [
    "TCP_G_TacticalGlasses_Black",
    "TCP_G_TacticalGlasses_Blue",
    "TCP_G_TacticalGlasses_Gold",
    "TCP_G_TacticalGlasses_Red",
    "TCP_G_TacticalGlasses_Silver",
    "TCP_G_TacticalGlasses_Green",
    "TCP_G_TacticalGlasses_Yellow"
]];

_loadoutData set ["goggles", ["TCP_G_Balaclava_Black"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", ["NVGoggles_OPFOR"]];
_sfLoadoutData set ["uniforms", [  
    "TCP_U_B_CBUU_TacShirt_Full_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",

    "TCP_U_B_CBUU_TacShirt_Full_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Urban_SlimSleeve",

    "TCP_U_B_CBUU_FieldTop_Full_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",

    "TCP_U_B_CBUU_FieldTop_Full_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Urban_SlimSleeve",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Urban_SlimSleeve"
    ]]; 

_sfLoadoutData set ["vests", [
    "TCP_V_M43D_Light_Black",
    "TCP_V_M43D_ODST_1_Black",
    "TCP_V_M43D_ODST_1_1_Black",
    "TCP_V_M43D_ODST_1_2_Black",
    "TCP_V_M43D_ODST_2_Black",
    "TCP_V_M43D_ODST_2_1_Black",
    "TCP_V_M43D_ODST_2_2_Black",
    "TCP_V_M43D_ODST_3_Black",
    "TCP_V_M43D_ODST_3_1_Black",
    "TCP_V_M43D_ODST_3_2_Black",
    "TCP_V_M43D_ODST_4_Black",
    "TCP_V_M43D_ODST_4_1_Black",
    "TCP_V_M43D_ODST_4_2_Black"
    ]];

_sfLoadoutData set ["Hvests", [
    "TCP_V_M43D_BREACHER_1_Black",
    "TCP_V_M43D_BREACHER_1_1_Black",
    "TCP_V_M43D_BREACHER_1_2_Black",
    "TCP_V_M43D_BREACHER_2_Black",
    "TCP_V_M43D_BREACHER_2_1_Black",
    "TCP_V_M43D_BREACHER_2_2_Black",
    "TCP_V_M43D_BREACHER_3_Black",
    "TCP_V_M43D_BREACHER_3_1_Black",
    "TCP_V_M43D_BREACHER_3_2_Black",
    "TCP_V_M43D_BREACHER_4_Black",
    "TCP_V_M43D_BREACHER_4_1_Black",
    "TCP_V_M43D_BREACHER_4_2_Black",

    "TCP_V_M43D_SHARPSHOOTER_1_Black",
    "TCP_V_M43D_SHARPSHOOTER_1_1_Black",
    "TCP_V_M43D_SHARPSHOOTER_1_2_Black",
    "TCP_V_M43D_SHARPSHOOTER_2_Black",
    "TCP_V_M43D_SHARPSHOOTER_2_1_Black",
    "TCP_V_M43D_SHARPSHOOTER_2_2_Black",
    "TCP_V_M43D_SHARPSHOOTER_3_Black",
    "TCP_V_M43D_SHARPSHOOTER_3_1_Black",
    "TCP_V_M43D_SHARPSHOOTER_3_2_Black",
    "TCP_V_M43D_SHARPSHOOTER_4_Black",
    "TCP_V_M43D_SHARPSHOOTER_4_1_Black",
    "TCP_V_M43D_SHARPSHOOTER_4_2_Black"
    ]];

_sfLoadoutData set ["glVests", [
    "TCP_V_M43D_ODST_2_1_Black", 
    "TCP_V_M43D_ODST_2_2_Black", 
    "TCP_V_M43D_ODST_2_1_Black", 
    "TCP_V_M43D_ODST_2_2_Black", 
    "TCP_V_M43D_ODST_3_1_Black", 
    "TCP_V_M43D_ODST_3_2_Black", 
    "TCP_V_M43D_ODST_4_1_Black", 
    "TCP_V_M43D_ODST_4_2_Black"
    ]];
    
_sfLoadoutData set ["backpacks", [
"TCP_B_EM39_MLBE_Buttpack_Black",
"TCP_B_EM39_MLBE_Hardcase_Black",
"TCP_B_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Medic_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Medic_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_1_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_2_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_3_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_RTO_1_EM39_MLBE_Hardcase_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",
]];

_sfLoadoutData set ["atBackpacks", [
"TCP_B_EM39_MLBE_Buttpack_Black",
"TCP_B_EM39_MLBE_Hardcase_Black",
"TCP_B_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Assaulter_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Assaulter_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Autorifleman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Autorifleman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Breacher_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Engineer_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Grenadier_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Grenadier_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Marksman_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Medic_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Medic_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Medic_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Medic_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_1_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_2_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_NCO_3_EM39_MLBE_Hardcase_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_NCO_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_3_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_4_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_5_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_6_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Rifleman_7_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_RTO_1_EM39_MLBE_Hardcase_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_RTO_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sapper_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sniper_1_EM39_MLBE_Hardcase_Patrol_Roll_Black",

"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_M2_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_EM39_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Roll_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_EM39_Buttpack_Black",
"TCP_B_Sniper_2_EM39_MLBE_Hardcase_Patrol_Roll_Black",
]];

_sfLoadoutData set ["helmets", ["TCP_H_Helmet_ECH55D_Black_Black", "TCP_H_Helmet_ECH55D_Black_Blue", "TCP_H_Helmet_ECH55D_Black_Gold", "TCP_H_Helmet_ECH55D_Black_Red", "TCP_H_Helmet_ECH55D_Black_Silver", "TCP_H_Helmet_ECH55D_Black_Green", "TCP_H_Helmet_ECH55D_Black_Purple"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator"]];
_sfLoadoutData set ["glasses", [        ]];
_sfLoadoutData set ["goggles", ["TCP_G_Balaclava_Black"]];

_sfLoadoutData set ["SMGs", [
["TCP_SMG_M7", "TCP_muzzle_snds_523_01", "TCP_acc_pointer_lam_M7", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_01", "TCP_acc_pointer_lam_M7", "TCP_optic_M81ERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_01", "TCP_acc_pointer_lam_M7", "TCP_optic_EVOSD", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_01", "TCP_acc_pointer_lam_M7", "TCP_optic_M5BSLSV", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],   
["TCP_SMG_M7", "TCP_muzzle_snds_523_02", "", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_02", "", "TCP_optic_M81ERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_02", "", "TCP_optic_EVOSD", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_SMG_M7", "TCP_muzzle_snds_523_02", "", "TCP_optic_M5BSLSV", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]
]];

_sfLoadoutData set ["sniperRifles", [
["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_12Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
["TCP_hgun_Pistol_M6C2", "TCP_muzzle_snds_127_01", "TCP_acc_pointer_lam_M6C2", "", ["TCP_12Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2_blk"]
]];

_sfLoadoutData set ["slRifles", [
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];
_sfLoadoutData set ["rifles", [
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_snds_95_01", "", "TCP_optic_M27RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CRS", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CRS_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_sgun_M45", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"],
    ["TCP_sgun_M45E", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"]

]];
_sfLoadoutData set ["carbines", [
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M81ERO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M27RCO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M27RCO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CRS", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_snds_95_01", "", "TCP_optic_M43RCO_CRS_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["NVGoggles_OPFOR"]]; 
_eliteLoadoutData set ["uniforms", [
    "TCP_U_B_CBUU_TShirt_Tucked_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",

    "TCP_U_B_CBUU_FieldTop_Full_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban"
    ]];

_eliteLoadoutData set ["vests", [
    "TCP_V_M43A_BaseSec_3_Black", 
    "TCP_V_M43A_GungnirS_3_Black", 
    "TCP_V_M43A_GungnirL_3_Black"
    ]];

_eliteLoadoutData set ["Hvests", [
    "TCP_V_M43A_GungnirL_3_Black"
    ]];
    
_eliteLoadoutData set ["glVests", [
    "TCP_V_M43A_GungnirL_3_1_Black",
    "TCP_V_M43A_GungnirL_3_2_Black",
    "TCP_V_M43A_GungnirS_3_1_Black",
    "TCP_V_M43A_GungnirS_3_2_Black",
    "TCP_V_M43A_BaseSec_3_1_Black",
    "TCP_V_M43A_BaseSec_3_2_Black"
    ]];

_eliteLoadoutData set ["helmets", [
    "TCP_H_WatchCap_Black",
    "TCP_H_boonieHat_Black",
	"TCP_H_PatrolCap_Urban",
	"TCP_H_Helmet_ECH35J_Black_Black",
	"TCP_H_Helmet_ECH35J_Black_Blue",
	"TCP_H_Helmet_ECH35J_Black_Gold",
    "TCP_H_Helmet_ECH35J_Black_Green",
	"TCP_H_Helmet_ECH35J_Black_Red",
	"TCP_H_Helmet_ECH35J_Black_Silver"
	
]];
_eliteLoadoutData set ["glasses", [     ]];
_eliteLoadoutData set ["goggles", ["TCP_G_Balaclava_Black"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData set ["backpacks", ["TCP_B_ANPRC171_Black",
"TCP_B_ANPRC171_Roll_Black",
"TCP_B_ANPRC171_Patrol_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Black",
"TCP_B_Assaulter_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Roll_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Black",
"TCP_B_Assaulter_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Roll_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_1_Black",
"TCP_B_Autorifleman_1_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_2_Black",
"TCP_B_Autorifleman_2_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Breacher_1_Black",
"TCP_B_Breacher_1_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Engineer_1_Black",
"TCP_B_Engineer_1_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_1_Black",
"TCP_B_Marksman_1_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_2_Black",
"TCP_B_Marksman_2_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_3_Black",
"TCP_B_Marksman_3_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_1_Black",
"TCP_B_Medic_1_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_2_Black",
"TCP_B_Medic_2_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_1_Black",
"TCP_B_NCO_1_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_2_Black",
"TCP_B_NCO_2_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_3_Black",
"TCP_B_NCO_3_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Black",
"TCP_B_Rifleman_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Roll_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Black",
"TCP_B_Rifleman_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Roll_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Black",
"TCP_B_Rifleman_3_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Roll_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Black",
"TCP_B_Rifleman_4_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Roll_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Black",
"TCP_B_Rifleman_5_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Roll_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Black",
"TCP_B_Rifleman_6_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Roll_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Black",
"TCP_B_Rifleman_7_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Roll_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",

"TCP_B_RTO_1_Black",
"TCP_B_RTO_1_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Black",
"TCP_B_RTO_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Roll_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_1_Black",
"TCP_B_Sniper_1_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_2_Black",
"TCP_B_Sniper_2_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_eliteLoadoutData set ["atBackpacks", [
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_eliteLoadoutData set ["sniperRifles", [
["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_8Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
["TCP_hgun_Pistol_M6G2", "", "", "TCP_optic_KFA_M6G2", ["TCP_8Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2"]
]];

_eliteLoadoutData set ["slRifles", [
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];

_eliteLoadoutData set ["rifles", [
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_sgun_M45", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"],
["TCP_sgun_M45E", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"]
]];
_eliteLoadoutData set ["carbines", [
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M81ERO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M27RCO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_launch_M319", "", "TCP_acc_pointer_lam_M6G", "", ["TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE"], _MA37slglammo, ""]
]];

_eliteLoadoutData set ["machineGuns", [
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M27RCO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"]
]];

_eliteLoadoutData set ["marksmanRifles", [
["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_srifle_VK78_Gray", "TCP_muzzle_brake_65_01", "TCP_rail_ammocounter_VK78", "TCP_optic_M11VERO", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78_gray"],
["TCP_srifle_VK78_Gray", "TCP_muzzle_brake_65_01", "TCP_rail_ammocounter_VK78", "TCP_optic_EVOSD  ", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78_gray"]
]];

_eliteLoadoutData set ["SMGs", [
 ["TCP_SMG_M7", "", "", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
 ["TCP_SMG_M7", "", "", "TCP_optic_M81ERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
 ["TCP_SMG_M7", "", "", "TCP_optic_EVOSD", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]
]];

_eliteLoadoutData set ["sniperRifles", [
["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_8Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
["TCP_hgun_Pistol_M6G2", "", "", "TCP_optic_KFA_M6G2", ["TCP_8Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2"]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", [
    "TCP_U_B_CBUU_TShirt_Tucked_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",

    "TCP_U_B_CBUU_FieldTop_Full_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban"
    ]];
    
_militaryLoadoutData set ["vests", [
    "TCP_V_M43A_Light_Black",
    "TCP_V_M43A_BaseSec_1_Black",
    "TCP_V_M43A_BaseSec_2_Black",
    "TCP_V_M43A_BaseSec_3_Black",
    "TCP_V_M43A_GungnirS_1_Black",
    "TCP_V_M43A_GungnirS_2_Black",
    "TCP_V_M43A_GungnirS_3_Black",
    "TCP_V_M43A_GungnirL_1_Black",
    "TCP_V_M43A_GungnirL_2_Black",
    "TCP_V_M43A_GungnirL_3_Black"
    ]];

_militaryLoadoutData set ["Hvests", [
    "TCP_V_M43A_GungnirL_3_Black", 
    "TCP_V_M43A_GungnirL_2_Black", 
    "TCP_V_M43A_GungnirL_1_Black"
    ]];
    
_militaryLoadoutData set ["glVests", [
    "TCP_V_M43A_BaseSec_1_1_Black",
    "TCP_V_M43A_BaseSec_1_2_Black",
    "TCP_V_M43A_BaseSec_2_1_Black",
    "TCP_V_M43A_BaseSec_2_2_Black",
    "TCP_V_M43A_BaseSec_3_1_Black",
    "TCP_V_M43A_BaseSec_3_2_Black",
    "TCP_V_M43A_GungnirS_1_1_Black",
    "TCP_V_M43A_GungnirS_1_2_Black",
    "TCP_V_M43A_GungnirS_2_1_Black",
    "TCP_V_M43A_GungnirS_2_2_Black",
    "TCP_V_M43A_GungnirS_3_1_Black",
    "TCP_V_M43A_GungnirS_3_2_Black",
    "TCP_V_M43A_GungnirL_1_1_Black",
    "TCP_V_M43A_GungnirL_1_2_Black",
    "TCP_V_M43A_GungnirL_2_1_Black",
    "TCP_V_M43A_GungnirL_2_2_Black",
    "TCP_V_M43A_GungnirL_3_1_Black",
    "TCP_V_M43A_GungnirL_3_2_Black"
    ]];

_militaryLoadoutData set ["backpacks", ["TCP_B_ANPRC171_Black",
"TCP_B_ANPRC171_Roll_Black",
"TCP_B_ANPRC171_Patrol_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Black",
"TCP_B_Assaulter_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Roll_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Black",
"TCP_B_Assaulter_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Roll_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_1_Black",
"TCP_B_Autorifleman_1_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_2_Black",
"TCP_B_Autorifleman_2_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Breacher_1_Black",
"TCP_B_Breacher_1_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Engineer_1_Black",
"TCP_B_Engineer_1_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_1_Black",
"TCP_B_Marksman_1_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_2_Black",
"TCP_B_Marksman_2_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_3_Black",
"TCP_B_Marksman_3_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_1_Black",
"TCP_B_Medic_1_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_2_Black",
"TCP_B_Medic_2_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_1_Black",
"TCP_B_NCO_1_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_2_Black",
"TCP_B_NCO_2_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_3_Black",
"TCP_B_NCO_3_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Black",
"TCP_B_Rifleman_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Roll_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Black",
"TCP_B_Rifleman_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Roll_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Black",
"TCP_B_Rifleman_3_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Roll_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Black",
"TCP_B_Rifleman_4_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Roll_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Black",
"TCP_B_Rifleman_5_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Roll_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Black",
"TCP_B_Rifleman_6_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Roll_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Black",
"TCP_B_Rifleman_7_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Roll_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",

"TCP_B_RTO_1_Black",
"TCP_B_RTO_1_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Black",
"TCP_B_RTO_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Roll_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_1_Black",
"TCP_B_Sniper_1_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_2_Black",
"TCP_B_Sniper_2_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_militaryLoadoutData set ["atBackpacks", [
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_militaryLoadoutData set ["helmets", [
    "TCP_H_WatchCap_Black",
    "TCP_H_boonieHat_Black",
    "TCP_H_Cap_Black",
	"TCP_H_TacticalCap_Black",
	"TCP_H_UtilityCap_Black",
	"TCP_H_PatrolCap_Urban",
	"TCP_H_Helmet_CH43A_Black",
	"TCP_H_Helmet_ECH43A_Black_Black",
	"TCP_H_Helmet_ECH43A_Black_Blue",
	"TCP_H_Helmet_ECH43A_Black_Gold",
	"TCP_H_Helmet_ECH43A_Black_Red",
	"TCP_H_Helmet_ECH43A_Black_Silver",
    "TCP_H_Helmet_ECH43A_Black_Green",
	"TCP_H_Helmet_ECH43A_Black_Yellow"
]];
_militaryLoadoutData set ["slHat", ["TCP_H_Beret_Blue"]];
_militaryLoadoutData set ["sniHats", ["TCP_H_boonieHat_Black", "TCP_H_PatrolCap_Urban", "TCP_H_UtilityCap_Black", "TCP_H_TacticalCap_Black", "TCP_H_Cap_Black"]];

_militaryLoadoutData set ["slRifles", [
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];
_militaryLoadoutData set ["rifles", [
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
["TCP_sgun_M45", "", "TCP_acc_flashlight_M45", "", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], ""],
["TCP_sgun_M45E", "", "TCP_acc_flashlight_M45", "", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], ""]

]];
_militaryLoadoutData set ["carbines", [
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M81ERO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M27RCO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
["TCP_launch_M319", "", "TCP_acc_pointer_lam_M6G", "", ["TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE"], _MA37slglammo, ""]
]];
_militaryLoadoutData set ["SMGs", [
 ["TCP_SMG_M7", "", "", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
 ["TCP_SMG_M7", "", "", "TCP_optic_M81ERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
 ["TCP_SMG_M7", "", "", "TCP_optic_EVOSD", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]

]];
_militaryLoadoutData set ["machineGuns", [
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"]
]];
_militaryLoadoutData set ["sniperRifles", [
["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_8Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"]
]];

_militaryLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_VK78_Gray", "TCP_muzzle_brake_65_01", "TCP_rail_ammocounter_VK78", "TCP_optic_M11VERO", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78_gray"],
    ["TCP_srifle_VK78_Gray", "TCP_muzzle_brake_65_01", "TCP_rail_ammocounter_VK78", "TCP_optic_EVOSD  ", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78_gray"]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["TCP_U_B_CBUU_TShirt_Tucked_White"]];
_policeLoadoutData set ["vests", ["TCP_V_M43A_Light_1_Black"]];
private _helmets = ["TCP_H_TacticalCap_Black", "TCP_H_Beret_Blue"];

_policeLoadoutData set ["helmets", _helmets];
_policeLoadoutData set ["SMGs", [
["TCP_SMG_M7", "", "", "optic_Aco_smg", ["TCP_48Rnd_5x23_Mag", "TCP_48Rnd_5x23_Mag", "TCP_48Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_arifle_M6J", "", "", "", ["TCP_24Rnd_127x30_Mag","TCP_24Rnd_127x30_Mag","TCP_24Rnd_127x30_Mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["TCP_hgun_Pistol_M6G"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////
private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", [
    "TCP_U_B_CBUU_TShirt_Tucked_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",

    "TCP_U_B_CBUU_FieldTop_Full_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Urban",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Urban"
    ]];
    
_militiaLoadoutData set ["vests", [
    "TCP_V_M43A_Light_1_Black",
    "TCP_V_M43A_Light_1_1_Black",
    "TCP_V_M43A_Light_1_2_Black",
    "TCP_V_M43A_Light_2_Black",
    "TCP_V_M43A_Light_2_1_Black",
    "TCP_V_M43A_Light_2_2_Black",
    "TCP_V_M43A_Light_3_Black",
    "TCP_V_M43A_Light_3_1_Black",
    "TCP_V_M43A_Light_3_2_Black",

    "TCP_V_M43A_Pads_1_Black",
    "TCP_V_M43A_Pads_1_1_Black",
    "TCP_V_M43A_Pads_1_2_Black",
    "TCP_V_M43A_Pads_2_Black",
    "TCP_V_M43A_Pads_2_1_Black",
    "TCP_V_M43A_Pads_2_2_Black",
    "TCP_V_M43A_Pads_3_Black",
    "TCP_V_M43A_Pads_3_1_Black",
    "TCP_V_M43A_Pads_3_2_Black",

    "TCP_V_M43A_Light_Black",
    "TCP_V_M43A_BaseSec_1_Black",
    "TCP_V_M43A_BaseSec_2_Black",
    "TCP_V_M43A_GungnirS_1_Black",
    "TCP_V_M43A_GungnirS_2_Black"
    ]];

_militiaLoadoutData set ["Hvests", [
    "TCP_V_M43A_GungnirL_2_Black", 
    "TCP_V_M43A_GungnirL_1_Black"
    ]];

_militiaLoadoutData set ["glVests", [
    "TCP_V_M43A_BaseSec_1_1_Black",
    "TCP_V_M43A_BaseSec_1_2_Black",
    "TCP_V_M43A_BaseSec_2_1_Black",
    "TCP_V_M43A_BaseSec_2_2_Black",
    "TCP_V_M43A_GungnirS_1_1_Black",
    "TCP_V_M43A_GungnirS_1_2_Black",
    "TCP_V_M43A_GungnirS_2_1_Black",
    "TCP_V_M43A_GungnirS_2_2_Black",
    "TCP_V_M43A_GungnirL_1_1_Black",
    "TCP_V_M43A_GungnirL_1_2_Black",
    "TCP_V_M43A_GungnirL_2_1_Black",
    "TCP_V_M43A_GungnirL_2_2_Black"
    ]];

_militiaLoadoutData set ["backpacks", ["TCP_B_ANPRC171_Black",
"TCP_B_ANPRC171_Roll_Black",
"TCP_B_ANPRC171_Patrol_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Black",
"TCP_B_Assaulter_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Roll_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Black",
"TCP_B_Assaulter_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Roll_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_ANPRC171_Patrol_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_1_Black",
"TCP_B_Autorifleman_1_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Autorifleman_2_Black",
"TCP_B_Autorifleman_2_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Autorifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Breacher_1_Black",
"TCP_B_Breacher_1_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Breacher_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Engineer_1_Black",
"TCP_B_Engineer_1_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Engineer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_1_Black",
"TCP_B_Marksman_1_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_2_Black",
"TCP_B_Marksman_2_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Marksman_3_Black",
"TCP_B_Marksman_3_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Marksman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_1_Black",
"TCP_B_Medic_1_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Medic_2_Black",
"TCP_B_Medic_2_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Medic_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_1_Black",
"TCP_B_NCO_1_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_2_Black",
"TCP_B_NCO_2_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_NCO_3_Black",
"TCP_B_NCO_3_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_NCO_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Black",
"TCP_B_Rifleman_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Roll_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Black",
"TCP_B_Rifleman_2_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Roll_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Black",
"TCP_B_Rifleman_3_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Roll_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Black",
"TCP_B_Rifleman_4_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Roll_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Black",
"TCP_B_Rifleman_5_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Roll_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Black",
"TCP_B_Rifleman_6_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Roll_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_ANPRC171_Patrol_Roll_Black",


"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Black",
"TCP_B_Rifleman_7_ANPRC171_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Roll_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_ANPRC171_Patrol_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",

"TCP_B_RTO_1_Black",
"TCP_B_RTO_1_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Black",
"TCP_B_RTO_1_ANPRC171_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Roll_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_ANPRC171_Patrol_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_RTO_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_1_Black",
"TCP_B_Sniper_1_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sniper_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sniper_2_Black",
"TCP_B_Sniper_2_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sniper_2_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_militiaLoadoutData set ["atBackpacks", [
"TCP_B_M43_Medium_Rucksack_Black",
"TCP_B_M43_Medium_Rucksack_Roll_Black",
"TCP_B_M43_Medium_Rucksack_Patrol_Roll_Black",
"TCP_B_M2_Buttpack_Black",

"TCP_B_Ammo_Bearer_1_Black",
"TCP_B_Ammo_Bearer_1_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Ammo_Bearer_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_1_Black",
"TCP_B_Assaulter_1_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Assaulter_2_Black",
"TCP_B_Assaulter_2_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Assaulter_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_1_Black",
"TCP_B_Grenadier_1_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Grenadier_2_Black",
"TCP_B_Grenadier_2_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Grenadier_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_1_Black",
"TCP_B_Rifleman_1_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_1_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_2_Black",
"TCP_B_Rifleman_2_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_2_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_3_Black",
"TCP_B_Rifleman_3_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_3_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_4_Black",
"TCP_B_Rifleman_4_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_4_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_5_Black",
"TCP_B_Rifleman_5_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_5_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_6_Black",
"TCP_B_Rifleman_6_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_6_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Rifleman_7_Black",
"TCP_B_Rifleman_7_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Rifleman_7_M43_Medium_Rucksack_Patrol_Roll_Black",


"TCP_B_Sapper_1_Black",
"TCP_B_Sapper_1_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Assault_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Engineer_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Field_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Medical_Roll_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_M2_Buttpack_Black",
"TCP_B_Sapper_1_M43_Medium_Rucksack_Patrol_Roll_Black",
]];

_militiaLoadoutData set ["helmets", [
    "TCP_H_WatchCap_Black",
    "TCP_H_boonieHat_Black",
    "TCP_H_Cap_Black",
	"TCP_H_TacticalCap_Black",
	"TCP_H_UtilityCap_Black",
	"TCP_H_PatrolCap_Urban",
	"TCP_H_Helmet_CH43A_Black"
]];
_militiaLoadoutData set ["slHat", ["TCP_H_Beret_Blue"]];
_militiaLoadoutData set ["sniHats", ["TCP_H_boonieHat_Black", "TCP_H_PatrolCap_Urban", "TCP_H_UtilityCap_Black", "TCP_H_TacticalCap_Black", "TCP_H_Cap_Black"]];

_militiaLoadoutData set ["slRifles", [
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _ma37slglammo, ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _ma37slglammo, ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_VK78", "TCP_muzzle_brake_65_01", "", "TCP_optic_M11VERO", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78"]
]];

_militiaLoadoutData set ["SMGs", [
    ["TCP_SMG_M7", "", "", "optic_Aco_smg", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]

]];
_militiaLoadoutData set ["sniperRifles", [
    ["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", ["TCP_hgun_Pistol_M6G"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["TCP_U_B_CBUU_TacShirt_Full_Gloves_Gray"]];
_crewLoadoutData set ["vests", ["TCP_V_M43A_Light_1_Black"]];
_crewLoadoutData set ["helmets", ["TCP_H_Helmet_ECH43A_Black_Silver"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["TCP_U_B_CBUU_TacShirt_Full_Gloves_Gray"]];
_pilotLoadoutData set ["vests", ["TCP_V_M43A_Light_1_White"]];
_pilotLoadoutData set ["helmets", ["TCP_H_Helmet_ECH43A_Black_Silver"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
