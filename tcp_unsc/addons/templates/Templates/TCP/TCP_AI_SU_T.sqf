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

["name", "Secessionist Union"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "SU"]] call _fnc_saveToTemplate;

["flag", "Flag_CSAT_F"] call _fnc_saveToTemplate;
["flagTexture", "A3\Data_F\Flags\Flag_CSAT_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_CSAT"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["O_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["Land_Pod_Heli_Transport_04_covered_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_East_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_CSAT_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["O_T_Quadbike_01_ghex_F"]] call _fnc_saveToTemplate;

private _unarmedVehicles = ["O_T_MRAP_02_ghex_F"];
private _armedVehicles = ["O_T_MRAP_02_gmg_ghex_F", "O_T_MRAP_02_hmg_ghex_F"];
["vehiclesTrucks", ["O_T_Truck_03_covered_ghex_F", "O_T_Truck_03_transport_ghex_F"]] call _fnc_saveToTemplate;
private _cargoTrucks = ["O_T_Truck_02_F", "O_T_Truck_02_transport_F", "O_T_Truck_03_covered_ghex_F", "O_T_Truck_03_transport_ghex_F","O_T_UGV_01_ghex_F"];
["vehiclesAmmoTrucks", ["O_T_Truck_03_ammo_ghex_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["O_T_Truck_03_repair_ghex_F", "O_T_Truck_02_Box_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["O_T_Truck_02_fuel_F", "O_T_Truck_03_fuel_ghex_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["O_T_Truck_02_Medical_F", "O_T_Truck_03_medical_ghex_F"]] call _fnc_saveToTemplate;
private _lightAPCs = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"];
["vehiclesAPCs", ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"]] call _fnc_saveToTemplate;
private _IFVs = ["O_T_APC_Tracked_02_cannon_ghex_F"];
private _airborneVehicles = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F","O_T_UGV_01_rcws_ghex_F"];
["vehiclesLightTanks", ["O_T_UGV_01_rcws_ghex_F"]] call _fnc_saveToTemplate;
private _tanks = ["O_T_MBT_02_cannon_ghex_F","O_T_MBT_02_railgun_ghex_F"];
private _aa = ["O_T_APC_Tracked_02_AA_ghex_F"];

private _transportBoat = ["O_Boat_Transport_01_F"];
private _gunBoat = ["O_Boat_Armed_01_hmg_F"];

private _planesCAS = ["O_Plane_CAS_02_dynamicLoadout_F","O_T_VTOL_02_infantry_dynamicLoadout_F"];
private _planesAA = ["O_Plane_CAS_02_dynamicLoadout_F","O_T_VTOL_02_infantry_dynamicLoadout_F"];

private _planesTransport = ["O_T_VTOL_02_infantry_dynamicLoadout_F"];
private _gunship = ["O_T_VTOL_02_infantry_dynamicLoadout_F"];

private _helisLight = ["O_Heli_Light_02_unarmed_F"];
private _transportHelicopters = ["O_Heli_Light_02_unarmed_F"];

["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
private _helisLightAttack = ["O_Heli_Light_02_dynamicLoadout_F"];
["vehiclesHelisAttack", ["O_Heli_Attack_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;

private _airPatrol = ["O_Heli_Light_02_unarmed_F", "O_Heli_Light_02_dynamicLoadout_F"];

["vehiclesArtillery", ["O_T_MBT_02_arty_ghex_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["O_T_MBT_02_arty_ghex_F",["32Rnd_155mm_Mo_shells_O", "2Rnd_155mm_Mo_Cluster_O", "6Rnd_155mm_Mo_mine_O"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["O_T_UAV_04_CAS_F","O_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = ["I_UAV_01_F"];

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaTrucks", ["O_T_Truck_02_transport_F", "O_T_Truck_02_F"]] call _fnc_saveToTemplate;
private _militiaLightArmed = ["B_G_Offroad_01_armed_F"];
private _militiaCars = ["B_G_Offroad_01_F"];
private _militiaAPCs = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"];

private _policeVehs = ["B_GEN_Offroad_01_gen_F"];

["staticMGs", ["I_HMG_02_high_F","O_HMG_01_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["O_static_AT_F","O_GMG_01_high_F"]] call _fnc_saveToTemplate;
private _staticAA = ["O_static_AA_F"];
["staticMortars", ["O_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers = [];

private _radar = [];
private _SAM = [];

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF","2Rnd_120mm_Mo_Cluster_RF"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["vehiclesAirPatrol", _airPatrol] call _fnc_saveToTemplate;
["vehiclesGunBoats", _gunBoat] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", _gunship] call _fnc_saveToTemplate;
["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _planesTransport] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01PER","Male02PER","Male03PER"]] call _fnc_saveToTemplate;
["sfVoices", ["male01rus","male02rus","male03rus"]] call _fnc_saveToTemplate;

private _faces = [  "AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07"];
private _sffaces = ["RussianHead_1","RussianHead_2","RussianHead_3","RussianHead_4","RussianHead_5"];

["faces", _faces] call _fnc_saveToTemplate;
["sfFaces", _sffaces] call _fnc_saveToTemplate;
["sfInsignia", ["Spetsnaz223rdDetachment", "", ""]] call _fnc_saveToTemplate;

["insignia", ["GryffinRegiment", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["CSAT_ScimitarRegiment", "", ""]] call _fnc_saveToTemplate;

"TakistaniMen" call _fnc_saveNames;

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
["launch_RPG32_green_F", "", "", "", ["RPG32_F", "RPG32_HE_F"], [], ""]
]];

_loadoutData set ["ATLaunchers", [
["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HEAT"], [], ""],
["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
]];

_loadoutData set ["missileATLaunchers", [
["launch_O_Titan_short_ghex_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""],
["launch_O_Titan_short_ghex_F", "", "acc_pointer_IR", "", ["Titan_AT", "Titan_AP"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_O_Titan_ghex_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["TCP_hgun_pistol_M6G2"]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

private _slglammo = ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"];
private _glammo = ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"];

private _MA37slglammo = ["TCP_1Rnd_40_Shell_HE","TCP_1Rnd_40_Shell_TD","TCP_1Rnd_40_Shell_Smoke_White"];
private _MA37glammo = ["TCP_1Rnd_40_Shell_HE","TCP_1Rnd_40_Shell_TD"];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_OPFOR","O_NVGoggles_ghex_F"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];
_loadoutData set ["officerUniforms", ["U_O_T_Officer_F"]];
_loadoutData set ["officerVests", ["TCP_V_M43A_Light_Green"]];
_loadoutData set ["officerHats", ["H_MilCap_ghex_F", "TCP_H_Beret_Red"]];

_loadoutData set ["cloakUniforms", ["U_O_T_FullGhillie_tna_F", "U_O_FullGhillie_lsh", "U_O_T_Sniper_F"]];
_loadoutData set ["cloakVests", ["V_HarnessO_ghex_F", "V_BandollierB_ghex_F", "V_TacVest_oli"]];

_loadoutData set ["traitorUniforms", ["U_I_L_Uniform_01_tshirt_olive_F"]];
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_I_G_resistanceLeader_F", "V_BandollierB_oli"]];
_loadoutData set ["traitorHats", ["H_Cap_grn", "TCP_H_Beret_Red"]];

_loadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", ["B_Carryall_ghex_F"]];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_ghex_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["TCP_H_Beret_Red", "H_MilCap_ghex_F"]];
_loadoutData set ["sniHats", ["H_Booniehat_oli"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "O_IR_Grenade"];
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
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack"
]];

_loadoutData set ["goggles", ["TCP_G_Balaclava_Black"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["U_O_V_Soldier_Viper_F"]];
_sfLoadoutData set ["binoculars", ["Rangefinder"]];
_sfLoadoutData set ["vests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_sfLoadoutData set ["glVests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_sfLoadoutData set ["Hvests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_sfLoadoutData set ["backpacks", ["B_ViperLightHarness_ghex_F","B_ViperHarness_ghex_F"]];
_sfLoadoutData set ["helmets", ["H_HelmetO_ViperSP_hex_F"]];

_sfLoadoutData set ["slRifles", [
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
    
]];
_sfLoadoutData set ["rifles", [
    ["arifle_CTAR_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CRS_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_ARX_blk_F", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["arifle_ARX_blk_F", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CRS_CUP", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["TCP_arifle_MA5B", "TCP_muzzle_snds_762_01", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
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
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_snds_762_01", "", "TCP_optic_M11VERO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_snds_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_launch_M319", "", "TCP_acc_pointer_lam_M6G", "", ["TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE"], _MA37slglammo, ""]
]];

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

_sfLoadoutData set ["machineGuns",  [
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M27RCO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["arifle_CTARS_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "muzzle_snds_58_blk_F", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""]
]];

_sfLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_snds_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["srifle_DMR_07_blk_F", "TCP_muzzle_snds_762_01", "", "TCP_optic_M43RCO_CRS_CUP", ["20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F"], [], ""]
]];

_sfLoadoutData set ["sniperRifles", [
    ["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""],
    ["srifle_GM6_F", "", "", "TCP_optic_ORACLE_N", ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_12Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
    ["TCP_hgun_Pistol_M6C2", "TCP_muzzle_snds_127_01", "TCP_acc_pointer_lam_M6C2", "", ["TCP_12Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2_blk"]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_eliteLoadoutData set ["vests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_eliteLoadoutData set ["glVests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_eliteLoadoutData set ["Hvests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_eliteLoadoutData set ["helmets", ["H_HelmetO_ghex_F", "H_HelmetLeaderO_ghex_F", "H_helmetSpecO_ghex_F"]];
_eliteLoadoutData set ["backpacks", ["B_Carryall_ghex_F", "B_FieldPack_ghex_F", "B_FieldPack_oli", "B_Carryall_oli"]];
_eliteLoadoutData set ["binoculars", ["Rangefinder"]];

_eliteLoadoutData set ["slRifles", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];
_eliteLoadoutData set ["rifles", [
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CRS_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_ARX_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["arifle_ARX_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CRS_CUP", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["TCP_arifle_MA5B", "TCP_muzzle_brake_762_01", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M27RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CRS", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CRS_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_sgun_M45", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"],
    ["TCP_sgun_M45E", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"]
]];
_eliteLoadoutData set ["carbines", [
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M81ERO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M27RCO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]

]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M81ERO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_launch_M319", "", "TCP_acc_pointer_lam_M6G", "", ["TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE", "TCP_1Rnd_40_Shell_HE"], _MA37slglammo, ""]
]];

_eliteLoadoutData set ["SMGs", [
    ["TCP_SMG_M7", "", "", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
    ["TCP_SMG_M7", "", "", "TCP_optic_M81ERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""],
    ["TCP_SMG_M7", "", "", "TCP_optic_EVOSD", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]
]];

_eliteLoadoutData set ["machineGuns",  [
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M27RCO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""]
]];

_eliteLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["srifle_DMR_07_blk_F", "TCP_muzzle_flash_762_01", "", "TCP_optic_M43RCO_CRS_CUP", ["20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F"], [], ""]
]];

_eliteLoadoutData set ["sniperRifles", [
    ["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""],
    ["srifle_GM6_F", "", "", "TCP_optic_ORACLE_N", ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_8Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
    ["TCP_hgun_Pistol_M6G2", "", "TCP_acc_flashlight_M6G2", "TCP_optic_KFA_M6G2", ["TCP_8Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2"]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_MilitaryLoadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_militaryLoadoutData set ["vests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green", "TCP_V_M43A_BaseSec_1_Green", "TCP_V_M43A_GungnirS_1_Green", "TCP_V_M43A_GungnirL_1_Green"]];
_militaryLoadoutData set ["glVests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green", "TCP_V_M43A_BaseSec_1_Green", "TCP_V_M43A_GungnirS_1_Green", "TCP_V_M43A_GungnirL_1_Green"]];
_militaryLoadoutData set ["Hvests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green", "TCP_V_M43A_BaseSec_1_Green", "TCP_V_M43A_GungnirS_1_Green", "TCP_V_M43A_GungnirL_1_Green"]];
_militaryLoadoutData set ["backpacks", ["B_Carryall_ghex_F", "B_FieldPack_ghex_F", "B_FieldPack_oli", "B_Carryall_oli"]];
_militaryLoadoutData set ["helmets", ["TCP_H_Helmet_ECH35J_Green_Red", "TCP_H_Helmet_ECH43A_Green_Red"]];
_militaryLoadoutData set ["binoculars", ["Rangefinder"]];

_militaryLoadoutData set ["slRifles", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];
_militaryLoadoutData set ["rifles", [
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_ARX_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["arifle_ARX_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CRS_CUP", ["30Rnd_65x39_caseless_green", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_green"], [], ""],
    ["TCP_arifle_MA5B", "TCP_muzzle_brake_762_01", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_BR55", "TCP_muzzle_flash_95_02", "", "TCP_optic_M27RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_sgun_M45", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"],
    ["TCP_sgun_M45E", "", "TCP_acc_flashlight_M45", "TCP_optic_M81ERO", ["TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Pellets"], [], "TCP_bipod_sideSaddle_M45_Pellets"]
]];
_militaryLoadoutData set ["carbines", [
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M81ERO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_M27RCO", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_M27RCO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_EVOSD", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M43RCO_CUP", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
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

_militaryLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M27RCO", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_M43RCO_CUP", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["srifle_DMR_07_blk_F", "TCP_muzzle_flash_762_01", "", "TCP_optic_M43RCO_CRS_CUP", ["20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F"], [], ""]
]];

_militaryLoadoutData set ["machineGuns", [
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_EVOSD", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M27RCO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""]
]];

_militaryLoadoutData set ["sniperRifles", [
    ["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""],
    ["srifle_GM6_F", "", "", "TCP_optic_ORACLE_N", ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["TCP_hgun_Pistol_M6G", "", "TCP_acc_flashlight_M6G", "TCP_optic_KFA_M6G", ["TCP_8Rnd_127x30_46_Mag"], [], "TCP_bipod_handGuard_M6G"],
    ["TCP_hgun_Pistol_M6G2", "", "TCP_acc_flashlight_M6G2", "TCP_optic_KFA_M6G2", ["TCP_8Rnd_127x30_52_Mag"], [], "TCP_bipod_handGuard_M6G2"]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_Marshal"]];
_policeLoadoutData set ["vests", ["TCP_V_M43A_Light_Black"]];
private _helmets = ["H_Cap_police", "TCP_H_Beret_Blue"];

_policeLoadoutData set ["helmets", _helmets];
_policeLoadoutData set ["SMGs", [
["TCP_SMG_M7", "", "", "TCP_optic_M11VERO", ["TCP_48Rnd_5x23_Mag", "TCP_48Rnd_5x23_Mag", "TCP_48Rnd_5x23_Mag_Tracer_Red"], [], ""],
["TCP_arifle_M6J", "", "", "", ["TCP_24Rnd_127x30_Mag","TCP_24Rnd_127x30_Mag","TCP_24Rnd_127x30_Mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["TCP_hgun_Pistol_M6G2"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_militiaLoadoutData set ["vests", ["TCP_V_M43A_Light_Green", "TCP_V_M43A_BaseSec_1_Green", "TCP_V_M43A_GungnirS_1_Green", "TCP_V_M43A_GungnirL_1_Green"]];
_militiaLoadoutData set ["glVests", ["TCP_V_M43A_BaseSec_1_Green", "TCP_V_M43A_GungnirS_1_Green", "TCP_V_M43A_GungnirL_1_Green"]];
_militiaLoadoutData set ["Hvests", ["TCP_V_M43A_BaseSec_2_Green", "TCP_V_M43A_GungnirS_2_Green", "TCP_V_M43A_GungnirL_2_Green"]];
_militiaLoadoutData set ["backpacks", ["B_Carryall_ghex_F", "B_FieldPack_ghex_F", "B_FieldPack_oli", "B_Carryall_oli"]];
_militiaLoadoutData set ["helmets", ["TCP_H_Helmet_ECH43A_Green_Red", "H_Bandanna_khk", "H_Shemag_olive"]];

_militiaLoadoutData set ["slRifles", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""],
    ["TCP_arifle_MA37_GL", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], _MA37slglammo, ""]
]];

_militiaLoadoutData set ["rifles", [
    ["arifle_CTAR_blk_F", "", "TCP_acc_flashlight_M6G", "", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["TCP_arifle_MA5B", "TCP_muzzle_brake_762_01", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "", "", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["TCP_arifle_MA37", "TCP_muzzle_brake_762_01", "TCP_acc_pointer_LAM_MA37", "TCP_optic_EVOSJ", ["TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["TCP_arifle_M6J", "TCP_muzzle_flash_127_01", "", "TCP_optic_EVOSD", ["TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag", "TCP_24Rnd_127x30_Mag"], [], ""],
    ["TCP_arifle_MA5K", "TCP_muzzle_brake_762_01", "", "TCP_optic_M11VERO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["arifle_CTAR_GL_blk_F", "", "TCP_acc_flashlight_M6G", "", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], _glammo, ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["TCP_LMG_M731", "TCP_muzzle_brake_762_02", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], ""],
     ["arifle_CTARS_blk_F", "", "TCP_acc_flashlight_M6G", "TCP_optic_M11VERO", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["TCP_srifle_M392", "TCP_muzzle_flash_762_01", "TCP_acc_flashlight_M392", "TCP_optic_EVOSD", ["TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag_Tracer_Red"], [], ""],
    ["srifle_DMR_07_blk_F", "TCP_muzzle_flash_762_01", "", "TCP_optic_M43RCO_CRS_CUP", ["20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F"], [], ""]
]];

_militiaLoadoutData set ["SMGs", [
    ["TCP_SMG_M7", "", "", "TCP_optic_M11VERO", ["TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["TCP_srifle_SRS99", "TCP_muzzle_brake_127_01", "", "TCP_optic_ORACLE_N", ["TCP_4Rnd_127x99_Mag","TCP_4Rnd_127x99_Mag"], [], ""],
    ["srifle_GM6_F", "", "", "TCP_optic_ORACLE_N", ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], [], ""]

]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_crewLoadoutData set ["vests", ["TCP_V_M43A_Light_Green"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_O_ghex_F"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_O_PilotCoveralls","U_O_PilotCoveralls"]];
_pilotLoadoutData set ["vests", ["TCP_V_M43A_Light_Green"]];
_pilotLoadoutData set ["helmets", ["H_CrewHelmetHeli_O", "H_PilotHelmetHeli_O"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

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
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

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
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

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

    [selectRandom["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

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
