private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

////////////////////////////
//   Rivals Information   //
///////////////////////////

["name", "Freedom and Liberation Party"] call _fnc_saveToTemplate;
["nameLeader", "Andrew Sebring"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////
private _faces = [
	"GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
	"GreekHead_A3_10_l",
	"GreekHead_A3_10_sa",
	"GreekHead_A3_10_a",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros",
	"RussianHead_1",
	"RussianHead_2",
	"RussianHead_3",
	"RussianHead_4",
	"RussianHead_5"
]; 
["voices", ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE","Male01ENGFRE","Male02ENGFRE","male01rus","male02rus","male03rus"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

private _lightArmedVehicles = ["O_G_Offroad_01_AT_F", "O_G_Offroad_01_armed_F", "TCP_B_UNSC_A_M12A_LAAG_M41"];
private _lightUnarmedVehicles = ["I_G_Offroad_01_F", "TCP_B_UNSC_A_M12A"];
private _apc = [];
private _tanks = [];
private _helis = ["B_Heli_Light_01_F","I_Heli_light_03_unarmed_F"];
private _uav = ["O_UAV_01_F"];
private _trucks = ["O_G_Van_01_transport_F"];
private _staticLowWeapons = ["O_G_HMG_02_F"];
private _staticAT = ["O_static_AT_F"];
private _staticMortars = ["O_Mortar_01_F"];


["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["handGrenadeAmmo", ["GrenadeHand"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["staticLowWeapons", _staticLowWeapons] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticMortars", _staticMortars] call _fnc_saveToTemplate;
["vehiclesRivalsLightArmed", _lightArmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", _trucks] call _fnc_saveToTemplate;
["vehiclesRivalsCars", _lightUnarmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", _apc] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", _helis] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", _uav] call _fnc_saveToTemplate;			


//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;

private _glammo = ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F", "1Rnd_Smoke_Grenade_shell"];


private _rifles = [
	["TCP_arifle_MA5B", "TCP_muzzle_brake_762_01", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]
];
private _tunedRifles = [
	["TCP_arifle_BR55", "TCP_muzzle_comp_95_02", "", "TCP_optic_M27RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""]
];
private _enforcerRifles = [
	["TCP_srifle_VK78", "TCP_muzzle_brake_65_01", "", "TCP_optic_M11VERO", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78"],
	["TCP_srifle_VK78_Gray", "TCP_muzzle_brake_65_01", "", "TCP_optic_M11VERO", ["TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag", "TCP_20Rnd_65x48_Mag_Tracer_Red"], [], "TCP_bipod_grip_VK78_Gray"]
];
private _carbines = [
	["TCP_arifle_MA5K", "TCP_muzzle_brake_762_03", "", "", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
	["TCP_arifle_MA5K", "TCP_muzzle_brake_762_03", "", "TCP_optic_M5BSLSV", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""],
	["TCP_arifle_MA5K", "TCP_muzzle_brake_762_03", "", "TCP_optic_M11VERO", ["TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag", "TCP_60Rnd_762x51_Mag_Tracer_Red"], [], ""]
];
private _gls = [

];
private _mgs = [
	["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSM", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M11VERO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_EVOSD", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"],
    ["TCP_LMG_M731", "TCP_muzzle_snds_762_01", "TCP_acc_carryHandle_M731", "TCP_optic_M27RCO", ["TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Red"], [], "TCP_bipod_01"]
];
private _marksmanRifles = [
	["TCP_srifle_BR55HB", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CRS", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""],
    ["TCP_srifle_BR55HB", "TCP_muzzle_flash_95_02", "", "TCP_optic_M43RCO_CRS_CUP", ["TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag", "TCP_36Rnd_95x40_Mag_Tracer_Red"], [], ""]
];

private _rpgs = [
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
];

private _pistols = ["TCP_hgun_pistol_M6G2"];

_loadoutData set ["lightHELaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["TCP_launch_M41", "", "", "", ["TCP_2Rnd_102mm_Mag_HEAT", "TCP_2Rnd_102mm_Mag_HEAP"], [], ""]
]];

_loadoutData set ["ATMines", ["TCP_M725_Remote_Mag", "TCP_T14_Remote_Mag"]];
_loadoutData set ["APMines", ["TCP_M250_Remote_Mag"]];
_loadoutData set ["lightExplosives", ["TCP_M243_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["TCP_M168_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["TCP_M9R_Frag", "TCP_M9I_Frag"]];
_loadoutData set ["smokeGrenades", ["TCP_M21_Smoke"]];
_loadoutData set ["signalsmokeGrenades", ["TCP_M21_SmokeYellow", "TCP_M21_SmokeRed", "TCP_M21_SmokePurple", "TCP_M21_SmokeOrange", "TCP_M21_SmokeGreen", "TCP_M21_SmokeBlue"]];

_loadoutData set ["rifles", _rifles];
_loadoutData set ["tunedRifles", _tunedRifles];
_loadoutData set ["enforcerRifles", _enforcerRifles];
_loadoutData set ["carbines", _carbines];
_loadoutData set ["grenadeLaunchers", _gls];
_loadoutData set ["machineGuns", _mgs];
_loadoutData set ["marksmanRifles", _marksmanRifles];
_loadoutData set ["lightATLaunchers", _rpgs];
_loadoutData set ["sidearms", _pistols];


_loadoutData set ["facewear", [
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_sport",
	"G_Bandanna_shades",
	"G_Bandanna_blk",
	"G_Balaclava_combat", 
	"G_Balaclava_lowprofile", 
	"G_Balaclava_blk"
]];

_loadoutData set ["fullmask", [	"G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk"]];

_loadoutData set ["headgear", [
    "TCP_H_CH43A_Olive",
	"TCP_H_CH43A_Black",
	"TCP_H_CH43A_Green",
	"TCP_H_CH43A_Brown",
	"TCP_H_CH43A_Tan",
	"TCP_H_CH43A_White"
]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", ["Rangefinder"]];

/////Vests
private _vests = [
	"TCP_V_M43A_Light_Black",
    "TCP_V_M43A_BaseSec_1_Black",
    "TCP_V_M43A_BaseSec_2_Black",
    "TCP_V_M43A_GungnirS_1_Black",
    "TCP_V_M43A_GungnirS_2_Black",
	
	"TCP_V_M43A_BaseSec_1_1_Black",
    "TCP_V_M43A_BaseSec_1_2_Black",
    "TCP_V_M43A_BaseSec_2_1_Black",
    "TCP_V_M43A_BaseSec_2_2_Black",
    "TCP_V_M43A_GungnirS_1_1_Black",
    "TCP_V_M43A_GungnirS_1_2_Black",
    "TCP_V_M43A_GungnirS_2_1_Black",
    "TCP_V_M43A_GungnirS_2_2_Black"
	];

private _heavyVests = [
	"TCP_V_M43A_GungnirL_2_Black", 
    "TCP_V_M43A_GungnirL_1_Black",
	"TCP_V_M43A_GungnirL_2_1_Black",
    "TCP_V_M43A_GungnirL_2_2_Black",
	"TCP_V_M43A_GungnirL_1_1_Black",
    "TCP_V_M43A_GungnirL_1_2_Black"
	];

/////Uniforms
_loadoutData set ["uniforms", [
	"TCP_U_B_CBUU_TShirt_Tucked_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Gray",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Gray",

    "TCP_U_B_CBUU_FieldTop_Full_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Gray",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Gray"
]];

_loadoutData set ["heavyUniforms", []]; ///don't know why it's here but could be useful in the future

/////Helmets
private _helmets = []; ///look for more helmets

private _crewhelmets = ["TCP_H_Helmet_ECH43A_Olive_Blue"];

/////
private _offuniforms = ["TCP_U_B_CBUU_FieldTop_Full_Kneepads_Gray"];
private _backpacks = ["B_ViperHarness_blk_F", "B_ViperLightHarness_blk_F"];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", _vests];
_crewLoadoutData set ["crewHelmets", _crewhelmets];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["TCP_U_B_CBUU_FieldTop_Full_Kneepads_Gray"]];
_pilotLoadoutData set ["vests", _vests];
_pilotLoadoutData set ["helmets", ["TCP_H_Helmet_ECH43A_Olive_Blue"]];


_loadoutData set ["offuniforms", _offuniforms]; ///check offuniforms later.
_loadoutData set ["vests", _vests];
_loadoutData set ["heavyVests", _heavyVests];
_loadoutData set ["backpacks", _backpacks]; ///check for backpacks later.
_loadoutData set ["helmets", _helmets];
_loadoutData set ["crewHelmets", _crewhelmets];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadleader_extras", _slItems];
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

// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _cellLeaderTemplate = {
	if (random 100 > 60) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 5] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _mercenaryTemplate = {
	["helmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["heavyVests"] call _fnc_setVest;
	[["heavyUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles", "tunedRifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _enforcerTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[["enforcerRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _partisanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["backpacks"] call _fnc_setBackpack;
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 3] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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

private _minutemanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

  	["carbines"] call _fnc_setPrimary;
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

private _saboteurTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	[["heavyUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 2] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

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
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["heavyVests"] call _fnc_setVest;
	[["heavyUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
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

private _atTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

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
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _oppressorTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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

private _sharpshooterTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
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
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _crewTemplate = {
	["crewHelmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["carbines"] call _fnc_setPrimary;
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
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _commanderTemplate = {
	[selectRandomWeighted ["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

///////////////////////
//  Rivals Units     //
///////////////////////
private _prefix = "militia";
private _unitTypes = [
	["CellLeader", _cellLeaderTemplate, [], [_prefix, true]],
	["Mercenary", _mercenaryTemplate, [], [_prefix, true]],
	["Minuteman", _minutemanTemplate, [], [_prefix, true]],
	["Enforcer", _enforcerTemplate, [], [_prefix, true]],
	["Partisan", _partisanTemplate, [], [_prefix, true]],
	["Saboteur", _saboteurTemplate, [], [_prefix, true]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix, true]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix, true]],
	["SpecialistAT", _atTemplate, [], [_prefix, true]],
	["SpecialistAA", _aaTemplate, [], [_prefix, true]],
	["Oppressor", _oppressorTemplate, [], [_prefix, true]],
	["Sharpshooter", _sharpshooterTemplate, [], [_prefix, true]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////
[_prefix, [["Crew", _crewTemplate, [], [_prefix, true]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Pilot", _crewTemplate, [], [_prefix, true]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Commander", _commanderTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _unarmedTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
