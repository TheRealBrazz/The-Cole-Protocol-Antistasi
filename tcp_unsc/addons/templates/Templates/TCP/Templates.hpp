 class TCP_Base
    {
        logo = QPATHTOFOLDER(Templates\Templates\TCP\images\flag_mod_ca.paa);
        basepath = QPATHTOFOLDER(Templates\Templates\TCP);
        priority = 16;
        climate[] = {"temperate","tropical","arid","arctic"};
    };

    class TCP_UNSC_A : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\TCP\images\flag_unsc_ca.paa);
        name = "UNSC Army";
        file = "TCP_AI_UNSC";
        climate[] = {"arid", "temperate"};
        description = "UNSC Army";
    };
    class TCP_INS_M : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\TCP\images\flag_unsc_ca.paa);
        name = "United Rebel Front";
        file = "TCP_AI_INS";
        climate[] = {"arid", "temperate"};
        description = "United Rebel Front";
    };
   