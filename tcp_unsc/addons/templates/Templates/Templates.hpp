class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Vanilla_Base;
    /*
        Vanilla_Base is a class in the main Antistasi Ultimate mod. It contains values for factions and such.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L61-L69

        Class inheritance is a very useful thing and allows you to not have to re-define values in every class. Read more here:
        https://community.bistudio.com/wiki/Class_Inheritance
    */

    /*
        Vanilla_AAF is a class in the main Antistasi Ultimate mod.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L123-L132

        By redefining it here, we are essentially replacing the values of this class. 
        Because of inheritance and how classes work, it will only change the values that we change here. 
        If we simply wanted to rename the AAF to AAF 2, we would change the name value. Everything else would be left untouched.

        In this case we are changing the basepath value (so it can find our new template);
        The name (so we know it's different);
        And the file (so it will use our custom template instead of the normal one.)
        Everything else will be inherited from the class (link above)
    */
    class Vanilla_AAF
    { 
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        name = "A3 AAF (OVERWRITTEN)"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "Vanilla_AI_AAF";
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    class Vanilla_AAF_New : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
        name = "A3 AAF (NEW)"; // Name shown in the select menu.
        file = "Vanilla_AI_AAF_New"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "This is a new template, called the A3 AAF (NEW)!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_AAF_New.

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting Vanilla_AAF_New.

        You will see that the only values changed are name and description. These are the only differences. This faction will have the exact same equipment, flag, etc as Vanilla_AAF_New.
    */
    class Vanilla_AAF_New_InheritanceExample : Vanilla_AAF_New
    {
        name = "A3 AAF (NEW INHERITED)";
        description = "This is a new template, called the A3 AAF (NEW INHERITED)!";
    };


  // ************************************** Occupiers *******************************************************

    class TCP_Base
    {
        logo = QPATHTOFOLDER(Templates\TCP\images\flag_mod_ca.paa);
        basepath = QPATHTOFOLDER(Templates\TCP);
        priority = 16;
        climate[] = {"temperate","tropical","arid","arctic"};
    };
    class TCP_UNSC_A : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Arid)";
        file = "TCP_AI_UNSC";
        climate[] = {"arid", "temperate"};
        description = "UNSC Army (Arid)";
    };
    class TCP_UNSC_Woodland : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Woodland)";
        file = "TCP_AI_UNSC_W";
        climate[] = {"arid", "temperate"};
        description = "UNSC Army (Woodland)";
    };
    class TCP_UNSC_Urban : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Urban)";
        file = "TCP_AI_UNSC_U";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "UNSC Army (Urban)";
    };
    class TCP_UNSC_Arctic : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Arctic)";
        file = "TCP_AI_UNSC_A";
        climate[] = {"arctic"};
        description = "UNSC Army (Arctic)";
    };
     class TCP_UNSC_Tropical : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Tropic)";
        file = "TCP_AI_UNSC_T";
        climate[] = {"tropical"};
        description = "UNSC Army (Tropic)";
    };
    
  // ************************************** Rebels *********************************************************

    class TCP_INS_M : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_urf_co.paa);
        name = "United Rebel Front";
        file = "TCP_AI_INS";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "United Rebel Front";
    };

  // ************************************** (Playable UNSC) *********************************************************

    class TCP_UNSC_Playable : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Arid)";
        file = "TCP_AI_UNSC_PLAYABLE";
        climate[] = {"arid", "temperate"};
        description = "UNSC Army (Warning. This faction was created for the sake of having fun. )";
    };
     class TCP_UNSC_Playable_W : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Woodland)";
        file = "TCP_AI_UNSC_PLAYABLE_W";
        climate[] = {"arid", "temperate"};
        description = "UNSC Army (Warning. This faction was created for the sake of having fun. )";
    };
      class TCP_UNSC_Playable_U : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Urban)";
        file = "TCP_AI_UNSC_PLAYABLE_U";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "UNSC Army (Warning. This faction was created for the sake of having fun. )";
    };
     class TCP_UNSC_Playable_A : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Arctic)";
        file = "TCP_AI_UNSC_PLAYABLE_A";
        climate[] = {"arctic"};
        description = "UNSC Army (Warning. This faction was created for the sake of having fun. )";
    };
     class TCP_UNSC_Playable_T : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_unsc_co.paa);
        name = "UNSC Army (Tropic)";
        file = "TCP_AI_UNSC_PLAYABLE_T";
        climate[] = {"tropical"};
        description = "UNSC Army (Warning. This faction was created for the sake of having fun. )";
    };

  // ************************************** Rivals *********************************************************

    class TCP_INS_FLP : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Riv";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_urf_co.paa);
        name = "Freedom and Liberation Party";
        file = "TCP_AI_RIV_FLP";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "Freedom and Liberation Party";
    };

  // ************************************** Invaders *******************************************************

      class TCP_INS_SU : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Inv";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_urf_co.paa);
        name = "Secessionist Union";
        file = "TCP_AI_SU";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "Secessionist Union";
    };
      class TCP_INS_SU_T : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Inv";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_urf_co.paa);
        name = "Secessionist Union (Tropic)";
        file = "TCP_AI_SU_T";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "Secessionist Union";
    };
     class TCP_INS_SU_U : TCP_Base
    {
        requiredAddons[] = {"TCP_data"};
        side = "Inv";
        flagTexture = QPATHTOFOLDER(Templates\TCP\images\flag_urf_co.paa);
        name = "Secessionist Union (Urban)";
        file = "TCP_AI_SU_U";
        climate[] = {"arid", "temperate", "tropical", "arctic"};
        description = "Secessionist Union";
    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/