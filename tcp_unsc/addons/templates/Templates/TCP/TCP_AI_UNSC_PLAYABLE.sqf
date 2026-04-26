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

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "UNSCA"] call _fnc_saveToTemplate;

["flag", "Flag_UNSC"] call _fnc_saveToTemplate;
["flagTexture", "\tcp\Data\Flags\Flag_UNSC_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_UNSC"] call _fnc_saveToTemplate;

private _vehiclesBasic = ["TCP_B_UNSC_A_M274A"];
private _vehiclesLightUnarmed = ["TCP_B_UNSC_A_M12A", "TCP_B_UNSC_A_M831A"];
private _vehiclesLightArmed = ["TCP_B_UNSC_A_M12A_LAAG_M41"];
private _vehiclesAt = ["I_G_Offroad_01_AT_F", "TCP_B_UNSC_A_M12A_ALIM_M68A", "TCP_B_UNSC_A_M12A_ALIM_M68B"];
private _VehTruck = ["I_G_Van_01_transport_F"];
private _vehicleAA = [];

private _vehiclesBoat = ["I_C_Boat_Transport_02_F" , "I_SDV_01_F" , "I_Boat_Armed_01_minigun_F" , "O_Boat_Armed_01_hmg_F"];

private _vehiclesMedical = [];

private _vehiclesSupply = ["C_Van_01_box_F"];

private _vehiclePlane = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F"];

private _vehicleCivPlane = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F"];

private _vehiclesCivCar = ["C_Offroad_01_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_SUV_01_F"];
private _CivTruck = ["C_Truck_02_transport_F", "C_Truck_02_covered_F"];
private _civHelicopters = ["C_Heli_Light_01_civil_F", "a3a_C_Heli_Transport_02_F", "a3a_C_Heli_Light_02_blue_F"];

private _CivBoat = ["C_Boat_Civil_01_F", "C_Rubberboat"];

private _staticMG = ["TCP_B_UNSC_A_LAAG_M41"];
private _staticAT = ["I_static_AT_F", "TCP_B_UNSC_A_ALIM_M68A", "TCP_B_UNSC_A_ALIM_M68B"];
private _staticAA = ["I_static_AA_F"];
private _staticMortars = ["I_G_Mortar_01_F"];
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "TCP_M725_Remote_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag", "TCP_M250_Remote_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

["vehiclesCivPlane", _vehicleCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehiclesSupply] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;
["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["staticMortars", _staticMortars] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopters] call _fnc_saveToTemplate;
["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclePlane] call _fnc_saveToTemplate;
["vehiclesCivTruck", _CivTruck] call _fnc_saveToTemplate;
["vehiclesTruck", _VehTruck] call _fnc_saveToTemplate;
["vehiclesCivBoat", _CivBoat] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "TCP_hgun_Pistol_M6G2", "TCP_hgun_Pistol_M6G", "TCP_hgun_Pistol_FlareGun", "TCP_hgun_Pistol_FlareGun_Black",
    "TCP_SMG_M7", "TCP_arifle_M6J", "TCP_sgun_M45", "TCP_sgun_M45E", "TCP_LMG_M731", "TCP_arifle_MA37", "TCP_arifle_MA37_GL", "TCP_srifle_SRS99", "TCP_srifle_VK78", "TCP_srifle_VK78_gray", 
    "TCP_srifle_M392", "TCP_launch_M319",
    "TCP_48Rnd_5x23_Mag", "TCP_48Rnd_5x23_Mag_Red", "TCP_60Rnd_5x23_Mag", "TCP_60Rnd_5x23_Mag_Red", "TCP_1Rnd_12Gauge_Shell_Pellets", "TCP_1Rnd_12Gauge_Shell_Slug", "TCP_20Rnd_65x48_Mag","TCP_B_65x48_Ball_Tracer_Green", "TCP_4Rnd_127x99_Mag", "TCP_4Rnd_127x99_Mag_HVAP", "TCP_15Rnd_762x51_Mag", "TCP_15Rnd_762x51_Mag__Tracer_Green", "TCP_32Rnd_762x51_Mag", "TCP_32Rnd_762x51_Mag_Tracer_Green", "TCP_100Rnd_762x51_Mag", "TCP_100Rnd_762x51_Mag_Tracer_Green", "TCP_200Rnd_762x51_Mag", "TCP_200Rnd_762x51_Mag_Tracer_Green", "TCP_1Rnd_40_Shell_HE",
    "TCP_8Rnd_127x30_46_Mag", "TCP_12Rnd_127x30_46_Mag", "TCP_8Rnd_127x30_52_Mag", "TCP_12Rnd_127x30_52_Mag", "TCP_M9R_Frag", "TCP_M9I_Frag", "TCP_M21_Smoke",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3], ["TCP_M168_Remote_Mag", 10], ["TCP_M243_Remote_Mag", 3],
    "B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk",

    "TCP_V_M43A_BaseSec_1_Tan", 
    "TCP_V_M43A_BaseSec_1_1_Tan", 
    "TCP_V_M43A_BaseSec_1_2_Tan", 
    "TCP_V_M43A_BaseSec_2_Tan", 
    "TCP_V_M43A_BaseSec_2_1_Tan", 
    "TCP_V_M43A_BaseSec_2_2_Tan", 
    "TCP_V_M43A_BaseSec_3_Tan",
    "TCP_V_M43A_BaseSec_3_1_Tan", 
    "TCP_V_M43A_BaseSec_3_2_Tan", 
    "TCP_V_M43A_GungnirS_1_Tan", 
    "TCP_V_M43A_GungnirS_1_1_Tan", 
    "TCP_V_M43A_GungnirS_1_2_Tan", 
    "TCP_V_M43A_GungnirS_2_Tan", 
    "TCP_V_M43A_GungnirS_2_1_Tan", 
    "TCP_V_M43A_GungnirS_2_2_Tan", 
    "TCP_V_M43A_GungnirS_3_Tan", 
    "TCP_V_M43A_GungnirS_3_1_Tan", 
    "TCP_V_M43A_GungnirS_3_2_Tan", 
    "TCP_V_M43A_GungnirL_1_Tan", 
    "TCP_V_M43A_GungnirL_1_1_Tan", 
    "TCP_V_M43A_GungnirL_1_2_Tan", 
    "TCP_V_M43A_GungnirL_2_Tan", 
    "TCP_V_M43A_GungnirL_2_1_Tan", 
    "TCP_V_M43A_GungnirL_2_2_Tan", 
    "TCP_V_M43A_GungnirL_3_Tan", 
    "TCP_V_M43A_GungnirL_3_1_Tan", 
    "TCP_V_M43A_GungnirL_3_2_Tan", 

    "TCP_V_M43A_Light_Tan",
    "TCP_V_M43A_Light_1_Tan",
    "TCP_V_M43A_Light_1_1_Tan",
    "TCP_V_M43A_Light_1_2_Tan",
    "TCP_V_M43A_Light_2_Tan",
    "TCP_V_M43A_Light_2_1_Tan",
    "TCP_V_M43A_Light_2_2_Tan",
    "TCP_V_M43A_Light_3_Tan",
    "TCP_V_M43A_Light_3_1_Tan",
    "TCP_V_M43A_Light_3_2_Tan",

    "TCP_V_M43A_Pads_1_Tan",
    "TCP_V_M43A_Pads_1_1_Tan",
    "TCP_V_M43A_Pads_1_2_Tan",
    "TCP_V_M43A_Pads_2_Tan",
    "TCP_V_M43A_Pads_2_1_Tan",
    "TCP_V_M43A_Pads_2_2_Tan",
    "TCP_V_M43A_Pads_3_Tan",
    "TCP_V_M43A_Pads_3_1_Tan",
    "TCP_V_M43A_Pads_3_2_Tan",


    "TCP_V_M43A_BaseSec_1_Brown", 
    "TCP_V_M43A_BaseSec_1_1_Brown", 
    "TCP_V_M43A_BaseSec_1_2_Brown", 
    "TCP_V_M43A_BaseSec_2_Brown", 
    "TCP_V_M43A_BaseSec_2_1_Brown", 
    "TCP_V_M43A_BaseSec_2_2_Brown", 
    "TCP_V_M43A_BaseSec_3_Brown",
    "TCP_V_M43A_BaseSec_3_1_Brown", 
    "TCP_V_M43A_BaseSec_3_2_Brown", 
    "TCP_V_M43A_GungnirS_1_Brown", 
    "TCP_V_M43A_GungnirS_1_1_Brown", 
    "TCP_V_M43A_GungnirS_1_2_Brown", 
    "TCP_V_M43A_GungnirS_2_Brown", 
    "TCP_V_M43A_GungnirS_2_1_Brown", 
    "TCP_V_M43A_GungnirS_2_2_Brown", 
    "TCP_V_M43A_GungnirS_3_Brown", 
    "TCP_V_M43A_GungnirS_3_1_Brown", 
    "TCP_V_M43A_GungnirS_3_2_Brown", 
    "TCP_V_M43A_GungnirL_1_Brown", 
    "TCP_V_M43A_GungnirL_1_1_Brown", 
    "TCP_V_M43A_GungnirL_1_2_Brown", 
    "TCP_V_M43A_GungnirL_2_Brown", 
    "TCP_V_M43A_GungnirL_2_1_Brown", 
    "TCP_V_M43A_GungnirL_2_2_Brown", 
    "TCP_V_M43A_GungnirL_3_Brown", 
    "TCP_V_M43A_GungnirL_3_1_Brown", 
    "TCP_V_M43A_GungnirL_3_2_Brown",

    "TCP_V_M43A_Light_Brown", 
    "TCP_V_M43A_Light_1_Brown",
    "TCP_V_M43A_Light_1_1_Brown",
    "TCP_V_M43A_Light_1_2_Brown",
    "TCP_V_M43A_Light_2_Brown",
    "TCP_V_M43A_Light_2_1_Brown",
    "TCP_V_M43A_Light_2_2_Brown",
    "TCP_V_M43A_Light_3_Brown",
    "TCP_V_M43A_Light_3_1_Brown",
    "TCP_V_M43A_Light_3_2_Brown",

    "TCP_V_M43A_Pads_1_Brown",
    "TCP_V_M43A_Pads_1_1_Brown",
    "TCP_V_M43A_Pads_1_2_Brown",
    "TCP_V_M43A_Pads_2_Brown",
    "TCP_V_M43A_Pads_2_1_Brown",
    "TCP_V_M43A_Pads_2_2_Brown",
    "TCP_V_M43A_Pads_3_Brown",
    "TCP_V_M43A_Pads_3_1_Brown",
    "TCP_V_M43A_Pads_3_2_Brown",

    "Binocular", "TCP_Binocular",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol", "TCP_bipod_handGuard_M6G2", "TCP_bipod_handGuard_M6G", "TCP_bipod_handGuard_M6G", "TCP_bipod_triggerGuard_M6G2","TCP_optic_KFA_M6G", "TCP_optic_KFA_M6G2", "TCP_acc_flashlight_M6G", "TCP_acc_pointer_lam_M6G", "TCP_optic_EVOSD", "TCP_acc_flashlight_M45", "TCP_bipod_sideSaddle_M45_Pellets", "TCP_bipod_sideSaddle_M45_Slugs", "TCP_muzzle_flash_762_01", "TCP_bipod_sideSaddle_M45_Mixed", "TCP_muzzle_flash_127_01", "TCP_Bipod_01", "TCP_optic_EVOSM", "TCP_optic_EVOSJ","TCP_acc_pointer_lam_MA37", "TCP_muzzle_brake_762_01", "TCP_muzzle_brake_762_02", "TCP_optic_Oracle_N", "TCP_muzzle_brake_127_01", "TCP_muzzle_brake_127_02", "TCP_muzzle_brake_127_03", "TCP_muzzle_brake_127_04", "TCP_muzzle_brake_65_01", "TCP_bipod_Grip_VK78", "TCP_bipod_Grip_VK78_gray", "TCP_rail_ammoCounter_VK78", "TCP_optic_M11VERO_Blue", "TCP_optic_M11VERO", "TCP_optic_M5BSLSV", "TCP_optic_M5BSLSV_Blue", "TCP_optic_M81ERO", "TCP_optic_M81ERO_Blue",    
    "B_FieldPack_blk","B_AssaultPack_blk",
    ["TCP_launch_M41", 2], ["TCP_2Rnd_102mm_Mag_HEAT", 6], ["TCP_2Rnd_102mm_Mag_HEAP", 6]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "TCP_U_B_CBUU_TShirt_Tucked_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Tan",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Tan",
    
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Tan",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Tan",

    "TCP_U_B_CBUU_TShirt_Tucked_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Tucked_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_TShirt_Untucked_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Bloused_Unzipped_Kneepads_Arid",    
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_Full_Gloves_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Kneepads_Arid",
    "TCP_U_B_CBUU_TacShirt_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Kneepads_Arid",  
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Unzipped_Kneepads_Arid",    
    "TCP_U_B_CBUU_FieldTop_Full_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_Full_Gloves_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Bloused_Unzipped_Kneepads_Arid", 
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_QuarterRoll_Gloves_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Bloused_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Unzipped_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Kneepads_Arid",
    "TCP_U_B_CBUU_FieldTop_HalfRoll_Gloves_Bloused_Unzipped_Kneepads_Arid",
];

private _dlcUniforms = [];

private _headgear = [
    "TCP_H_WatchCap_Arid",
    "TCP_H_UtilityCap_Arid",
    "TCP_H_TacticalCap_Arid",
    "TCP_H_TacticalCap_Reversed_Arid",
    "TCP_H_PatrolCap_Arid",
    "TCP_H_Cap_Arid",
    "TCP_H_boonieHat_Folded_Right_Arid",
    "TCP_H_boonieHat_Folded_Left_Arid",
    "TCP_H_boonieHat_Folded_Arid",
    "TCP_H_boonieHat_Arid",
    "TCP_H_Beret_Red",
    "TCP_H_Beret_Tan",
    "TCP_H_Beret_Green",
    "TCP_H_Beret_Blue",
    "TCP_H_Beret_Black",

    "TCP_H_Helmet_CH43A_Tan",
    "TCP_H_Helmet_ECH43A_Tan",
    "TCP_H_Helmet_ECH43A_Tan_Black",
    "TCP_H_Helmet_ECH43A_Tan_Blue",
    "TCP_H_Helmet_ECH43A_Tan_Gold",
    "TCP_H_Helmet_ECH43A_Tan_Red",
    "TCP_H_Helmet_ECH43A_Tan_Silver",
    "TCP_H_Helmet_ECH35J_Tan_Black",
    "TCP_H_Helmet_ECH35J_Tan_Blue",
    "TCP_H_Helmet_ECH35J_Tan_Gold",
    "TCP_H_Helmet_ECH35J_Tan_Red",
    "TCP_H_Helmet_ECH35J_Tan_Silver"
];

private _dlcheadgear = [];

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["headgear", _headgear + _dlcheadgear] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

private _faces = ["GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04",
"GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08",
"GreekHead_A3_09","GreekHead_A3_10","GreekHead_A3_11","GreekHead_A3_12","GreekHead_A3_13",
"GreekHead_A3_14","Ioannou","Mavros","Sturrock"];
["voices", ["Male01GRE", "Male02GRE", "Male03GRE", "Male04GRE", "Male05GRE", "Male06GRE"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["uniforms", _rebUniforms + _dlcUniforms]; ///check this one

_loadoutData set ["glasses", ["G_Lady_Blue","G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];
_loadoutData set ["balaclavas", ["G_Balaclava_blk", "G_Balaclava_BlueStrips", "G_Balaclava_Flecktarn", "G_Balaclava_Halloween_01", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Balaclava_Flames1", "G_Balaclava_Scarecrow_01", "G_Balaclava_Skull1", "G_Balaclava_Tropentarn"]];
_loadoutData set ["argoFacemask", []];
_loadoutData set ["facewearWS", []];
_loadoutData set ["facewearContact", []];
_loadoutData set ["facewearLawsOfWar", []];
_loadoutData set ["facewearGM", []];
_loadoutData set ["facewearCLSA", []];
_loadoutData set ["facewearSOG", []];
_loadoutData set ["facewearSPE", []];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2,"facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2, "facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
