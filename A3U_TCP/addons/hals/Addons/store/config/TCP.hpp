		//TCP
		class handgunsTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(TCP_hgun_Pistol_M6C2, 150, PISTOL_STOCK);
			ITEM(TCP_hgun_Pistol_M6G, 0, PISTOL_STOCK);
			ITEM(TCP_hgun_Pistol_M6G2, 100, PISTOL_STOCK);
			ITEM(TCP_hgun_Pistol_FlareGun, 0, PISTOL_STOCK);
			ITEM(TCP_hgun_Pistol_FlareGun_Black, 0, PISTOL_STOCK);
		};

		class riflesTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(TCP_arifle_BR55, 300, RIFLE_STOCK);
			ITEM(TCP_arifle_BR55_Nickel, 300, RIFLE_STOCK);

			ITEM(TCP_arifle_M6J, 100, RIFLE_STOCK);

			ITEM(TCP_arifle_MA37, 300, RIFLE_STOCK);
			ITEM(TCP_arifle_MA37_GL, 320, RIFLE_STOCK);

			ITEM(TCP_arifle_MA40, 500, RIFLE_STOCK);
			ITEM(TCP_arifle_MA40_GL, 520, RIFLE_STOCK);

			ITEM(TCP_arifle_MA5B, 400, RIFLE_STOCK);
			ITEM(TCP_arifle_MA5K, 420, RIFLE_STOCK);

			ITEM(TCP_sgun_M45, 300, RIFLE_STOCK);
			ITEM(TCP_sgun_M45E, 350, RIFLE_STOCK);


		};

		class sniperRiflesTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(TCP_srifle_M392, 450, RIFLE_STOCK);

			ITEM(TCP_srifle_XBR55, 500, RIFLE_STOCK);

			ITEM(TCP_srifle_VK78, 300, RIFLE_STOCK);
			ITEM(TCP_srifle_VK78_Gray, 300, RIFLE_STOCK);

			ITEM(TCP_srifle_SRS99, 1000, 5);
	
		};

		class mgTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(TCP_LMG_M731, 650, RIFLE_STOCK);
			
		
		};

		class smgTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(TCP_SMG_M7, 100, RIFLE_STOCK);
			
		};

		class launchersTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_NLAW_F, 500, LAUNCHER_STOCK);

			ITEM(launch_RPG32_F, 500, LAUNCHER_STOCK);

			ITEM(TCP_launch_M41, 500, 25);
			
		};

		class launcherMagazinesTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class NLAW_F {
				price = 100;
				stock = 50;
			};

			class RPG32_F {
				price = 100;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 150;
				stock = 50;
			};

			class TCP_2Rnd_102mm_Mag_HEAP {
				price = 100;
				stock = 50;
			};

			class TCP_2Rnd_102mm_Mag_HEAT {
				price = 150;
				stock = 50;
			};
		};

		class navigationTCP
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_TCP", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 0, NN_STOCK);
			ITEM(ItemRadio, 0, NN_STOCK);
			ITEM(Rangefinder, 0, NN_STOCK);
			ITEM(Laserdesignator, 0, NN_STOCK);

			ITEM(NVGoggles, 0, NN_STOCK);
			ITEM(NVGoggles_INDEP, 0, NN_STOCK);
			ITEM(NVGoggles_OPFOR, 0, NN_STOCK);
		};

		class pointersTCP
		{
			displayName = __EVAL(formatText ["%1 %2 %3 %4", localize "STR_A3AU_TCP", localize "STR_A3AU_pointers", localize "STR_A3AU_and", localize "STR_A3AU_flashlights"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(TCP_acc_flashlight_M6G, 0, PN_STOCK);
			ITEM(TCP_acc_pointer_lam_M6G, 0, PN_STOCK);
			ITEM(TCP_acc_pointer_lam_MA37, 0, PN_STOCK);
			ITEM(TCP_acc_pointer_lam_M6D2, 0, PN_STOCK);
		};

		class muzzlesTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(TCP_muzzle_snds_762_01, 0, MZ_STOCK);

			ITEM(TCP_muzzle_snds_95_01, 0, MZ_STOCK);

			
		};

		class opticsTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class optic_tws {
				price = 0;
				stock = 5;
			};

			class optic_tws_mg {
				price = 0;
				stock = 5;
			};

			class optic_Nightstalker {
				price = 0;
				stock = 5;
			};

			class optic_Aco {
				price = 0; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 0; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 0; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 0; 
				stock = 100;
			};

			class optic_Arco {
				price = 0;
				stock = 100;
			};

			class optic_DMS {
				price = 0;
				stock = 100;
			};

			class optic_Hamr {
				price = 0;
				stock = 100;
			};

			class optic_Holosight {
				price = 0;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 0;
				stock = 100;
			};

			class optic_LRPS {
				price = 0;
				stock = 100;
			};

			class optic_MRCO {
				price = 0;
				stock = 100;
			};

			class optic_MRD {
				price = 0;
				stock = 100;
			};

			class optic_NVS {
				price = 0;
				stock = 100;
			};

			class optic_SOS {
				price = 0;
				stock = 100;
			};

			class optic_Yorris {
				price = 0;
				stock = 100;
			};



			class TCP_optic_ERO {
				price = 0;
				stock = 100;
			};
			class TCP_optic_EVOSD {
				price = 0;
				stock = 100;
			};
			class TCP_optic_EVOSJ {
				price = 0;
				stock = 100;
			};
			class TCP_opti_EVOSM {
				price = 0;
				stock = 100;
			};
			class TCP_optic_KFA_M6G {
				price = 0;
				stock = 100;
			};
			class TCP_optic_KFA_M6G2 {
				price = 0;
				stock = 100;
			};
			class TCP_optic_M5BSLSV {
				price = 0;
				stock = 100;
			};
			class TCP_optic_M81ERO {
				price = 0;
				stock = 100;
			};
			class TCP_optic_ORACLE_N {
				price = 100;
				stock = 100;
			};
		

		};

		class magazinesTCP
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class TCP_1Rnd_40_Shell_HE {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_TD {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Signal_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Signal_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Signal_White {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Signal_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_White {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Purple {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Blue {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_40_Shell_Smoke_Orange {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 0;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class TCP_8Rnd_127x30_46_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class TCP_8Rnd_127x30_52_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class TCP_8Rnd_127x30_46_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class TCP_8Rnd_127x30_52_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_8Rnd_127x30_46_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_8Rnd_127x30_52_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_8Rnd_127x30_46_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_8Rnd_127x30_52_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_46_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_52_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_46_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_52_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_46_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_46_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_12Rnd_127x30_52_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_24Rnd_127x30_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_24Rnd_127x30_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_24Rnd_127x30_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_24Rnd_127x30_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_127x30_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_127x30_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_127x30_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_127x30_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class TCP_30Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_30Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			 


			class TCP_32Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_32Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_36Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class TCP_36Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_60Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_1Rnd_12Gauge_Pellets {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_1Rnd_12Gauge_Slug {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class TCP_15Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_15Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_36Rnd_95x40_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_36Rnd_95x40_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			
			

			class TCP_20Rnd_65x48_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_20Rnd_65x48_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_4Rnd_127x99_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HEAP {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HEAP_Tracer_DIM {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HEAP_Tracer_Green {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HEAP_Tracer_Red {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HEAP_Tracer_Yellow {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HVAP {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HVAP_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HVAP_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HVAP_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_4Rnd_127x99_Mag_HVAP_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

	
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class TCP_100Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_100Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};



			class TCP_200Rnd_762x51_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Dual {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_200Rnd_762x51_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////

			class TCP_48Rnd_5x23_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_48Rnd_5x23_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Tracer_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Green {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Tracer_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Red {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Tracer_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Yellow {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_Tracer_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
			class TCP_60Rnd_5x23_Mag_DIM {
				price = 0;
				stock = MAGAZINE_STOCK;
			};
		};

		class miscTCP
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_TCP", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(U_I_HeliPilotCoveralls, 0, MISC_STOCK);

			ITEM(H_CrewHelmetHeli_I, 0, MISC_STOCK);

			ITEM(H_PilotHelmetHeli_I, 0, MISC_STOCK);

			ITEM(H_PilotHelmetFighter_I, 0, MISC_STOCK);

			ITEM(U_I_pilotCoveralls, 0, MISC_STOCK);
			ITEM(U_O_PilotCoveralls, 0, MISC_STOCK);

			ITEM(H_HelmetCrew_I, 0, MISC_STOCK);
			ITEM(H_HelmetCrew_B, 0, MISC_STOCK);

			ITEM(U_I_FullGhillie_ard, 0, MISC_STOCK);
			ITEM(U_B_FullGhillie_ard, 0, MISC_STOCK);
			ITEM(U_O_FullGhillie_ard, 0, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 0, MISC_STOCK);
			ITEM(U_B_FullGhillie_lsh, 0, MISC_STOCK);
			ITEM(U_O_FullGhillie_lsh, 0, MISC_STOCK);

			ITEM(U_I_FullGhillie_sard, 0, MISC_STOCK);
			ITEM(U_B_FullGhillie_sard, 0, MISC_STOCK);
			ITEM(U_O_FullGhillie_sard, 0, MISC_STOCK);

			ITEM(U_I_GhillieSuit, 0, MISC_STOCK);
			ITEM(U_O_GhillieSuit, 0, MISC_STOCK);

			ITEM(B_Carryall_cbr, 0, MISC_STOCK);
			ITEM(B_Carryall_ocamo, 0, MISC_STOCK);
			ITEM(B_Carryall_khk, 0, MISC_STOCK);
			ITEM(B_Carryall_mcamo, 0, MISC_STOCK);
			ITEM(B_Carryall_oli, 0, MISC_STOCK);
			ITEM(B_Carryall_oucamo, 0, MISC_STOCK);

			ITEM(V_TacVestIR_blk, 0, MISC_STOCK);

			ITEM(V_Press_F, 0, MISC_STOCK);

			ITEM(TCP_V_M43A_Light_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_Light_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_Light_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_Light_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_Light_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_Light_White, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_BaseSec_1_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_Black, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_BaseSec_1_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_Brown, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_BaseSec_1_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_Green, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_BaseSec_1_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_Olive, 250, MISC_STOCK);
			
			ITEM(TCP_V_M43A_BaseSec_1_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_Tan, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_BaseSec_1_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_2_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_BaseSec_3_White, 250, MISC_STOCK);


			ITEM(TCP_V_M43A_GungnirL_1_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_Black, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirL_1_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_Brown, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirL_1_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_Green, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirL_1_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_Olive, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirL_1_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_Tan, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirL_1_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_2_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirL_3_White, 250, MISC_STOCK);


			ITEM(TCP_V_M43A_GungnirS_1_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_Black, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_Black, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirS_1_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_Brown, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_Brown, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirS_1_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_Green, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_Green, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirS_1_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_Olive, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_Olive, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirS_1_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_Tan, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_Tan, 250, MISC_STOCK);

			ITEM(TCP_V_M43A_GungnirS_1_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_2_White, 250, MISC_STOCK);
			ITEM(TCP_V_M43A_GungnirS_3_White, 250, MISC_STOCK);


			ITEM(TCP_V_M43D_ODST_1_Black, 1000, MISC_STOCK);
			ITEM(TCP_V_M43D_ODST_2_Black, 1100, MISC_STOCK);
			ITEM(TCP_V_M43D_ODST_3_Black, 1200, MISC_STOCK);
			ITEM(TCP_V_M43D_ODST_4_Black, 1250, MISC_STOCK);

			ITEM(TCP_H_Helmet_ECH55D_Black_Black, 1000, MISC_STOCK);
			ITEM(TCP_H_Helmet_ECH55D_Black_Blue, 1000, MISC_STOCK);
			ITEM(TCP_H_Helmet_ECH55D_Black_Depolarized, 1000, MISC_STOCK);
			ITEM(TCP_H_Helmet_ECH55D_Black_Gold, 1000, MISC_STOCK);
			ITEM(TCP_H_Helmet_ECH55D_Black_Red, 1000, MISC_STOCK);
			ITEM(TCP_H_Helmet_ECH55D_Black_Silver, 1000, MISC_STOCK);


			ITEM(G_Diving, 0, MISC_STOCK);
			ITEM(G_I_Diving, 0, MISC_STOCK);
			ITEM(V_RebreatherIA, 0, MISC_STOCK);
			ITEM(U_B_survival_uniform, 0, MISC_STOCK);
			ITEM(U_I_Wetsuit, 0, MISC_STOCK);

			ITEM(MineDetector, 0, MISC_STOCK);

			ITEM(I_IR_Grenade, 0, MISC_STOCK);
			ITEM(O_IR_Grenade, 0, MISC_STOCK);
			ITEM(B_IR_Grenade, 0, MISC_STOCK);

			ITEM(Chemlight_blue, 0, MISC_STOCK);
			ITEM(Chemlight_green, 0, MISC_STOCK);
			ITEM(Chemlight_red, 0, MISC_STOCK);
			ITEM(Chemlight_yellow, 0, MISC_STOCK);

			ITEM(TCP_M9R_Frag, 0, MISC_STOCK);
			ITEM(TCP_M9I_Frag, 0, MISC_STOCK);

			ITEM(TCP_1Rnd_40_SmokeBlue_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokeGreen_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokeOrange_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokePurple_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokeRed_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokeWhite_Grenade_Shell, 0, MISC_STOCK);
			ITEM(TCP_1Rnd_40_SmokeYellow_Grenade_Shell, 0, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 0, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 0, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 0, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 0, MISC_STOCK);

			ITEM(ClaymoreDirectionalMine_Remote_Mag, 0, MISC_STOCK);
			ITEM(DemoCharge_Remote_Mag, 0, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 0, MISC_STOCK);
			ITEM(SLAMDirectionalMine_Wire_Mag, 0, MISC_STOCK);
			ITEM(ATMine_Range_Mag, 0, MISC_STOCK);
			ITEM(APERSMine_Range_Mag, 0, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 0, MISC_STOCK);
			ITEM(APERSTripMine_Wire_Mag, 0, MISC_STOCK);
			
			ITEM(TCP_M168_Remote_Mag, 0, MISC_STOCK);
			ITEM(TCP_M243_Remote_Mag, 0, MISC_STOCK);
			ITEM(TCP_M250_Remote_Mag, 0, MISC_STOCK);
			ITEM(TCP_M725_Remote_Mag, 0, MISC_STOCK);
			ITEM(TCP_T14_Remote_Mag, 0, MISC_STOCK);
			
			ITEM(I_UavTerminal, 0, MISC_STOCK);
			ITEM(O_UavTerminal, 0, MISC_STOCK);
			ITEM(B_UavTerminal, 0, MISC_STOCK);

			ITEM(U_C_Driver_1_black, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_blue, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_green, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_orange, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_red, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_white, 0, MISC_STOCK);
			ITEM(U_C_Driver_1_yellow, 0, MISC_STOCK);
			ITEM(U_C_Driver_1, 0, MISC_STOCK);
			ITEM(U_C_Driver_2, 0, MISC_STOCK);
			ITEM(U_C_Driver_3, 0, MISC_STOCK);
			ITEM(U_C_Driver_4, 0, MISC_STOCK);

			ITEM(H_RacingHelmet_1_black_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_blue_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_green_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_orange_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_red_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_white_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_1_yellow_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_2_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_3_F, 0, MISC_STOCK);
			ITEM(H_RacingHelmet_4_F, 0, MISC_STOCK);

			ITEM(U_I_Protagonist_VR, 0, MISC_STOCK);
			ITEM(U_C_Protagonist_VR, 0, MISC_STOCK);
			ITEM(U_O_Protagonist_VR, 0, MISC_STOCK);
			ITEM(U_B_Protagonist_VR, 0, MISC_STOCK);
		};