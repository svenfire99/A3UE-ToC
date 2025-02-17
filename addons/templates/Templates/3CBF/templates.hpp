    class 3CBF_Base : Base
    {
        requiredAddons[] = {"UK3CB_Factions_Vehicles_SUV"};
        logo = "UK3CB_Factions\addons\UK3CB_Factions_Common\editor\logo_3cb_ca.paa";
        basepath = QPATHTOFOLDER(Templates\3CBF);
        priority = 40;
        equipFlags[] = {"specialRHS"};
    };

    class 3CBF_Reb_ION : 3CBF_Base
    {
        side = "Reb";
        flagTexture = "uk3cb_factions\addons\uk3cb_factions_ion\flag\ion_flag_co.paa";
        name = "3CBF ION";
        file = "3CBF_Reb_ION";
        description = "";
    };

    class 3CBF_AFRF : 3CBF_Base
    {
        side = "Inv";
        flagTexture = "rhsafrf\addons\rhs_main\data\flag_rus_co.paa";
        name = "3CBF AFRF - Updated (Air Patrol)";
        file = "3CBF_AI_AFRF";
        climate[] = {"arid","temperate","tropical","arctic"};
        description = $STR_A3AP_setupFactionsTab_aegis_afrf;
    };