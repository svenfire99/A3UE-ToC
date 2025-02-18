_basic              append ["I_Quadbike_01_F"];
_unarmedVehicles    append ["I_MRAP_03_F"];
_armedVehicles      append ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];
_Trucks             append ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
_cargoTrucks        append ["I_Truck_02_transport_F", "I_Truck_02_covered_F","I_UGV_01_F"];
_ammoTrucks         append ["I_Truck_02_ammo_F"];
_repairTrucks       append ["I_Truck_02_box_F"];
_fuelTrucks         append ["I_Truck_02_fuel_F"];
_medicalTrucks      append ["I_Truck_02_medical_F"];
_lightAPCs          append [];
_APCs               append ["I_APC_Wheeled_03_cannon_F"];
_IFVs               append ["I_APC_Wheeled_03_cannon_F"];
_airborneVehicles   append ["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_UGV_01_rcws_F"];
_tanks              append ["I_MBT_03_cannon_F"];
_lightTanks         append ["I_UGV_01_rcws_F"];
_aa                 append ["I_LT_01_AA_F"];

_transportBoat  append ["I_Boat_Transport_01_F"];
_gunBoat        append ["I_Boat_Armed_01_minigun_F"];

_planesCAS  append ["I_Plane_Fighter_03_dynamicLoadout_F"];
_planesAA   append ["I_Plane_Fighter_03_dynamicLoadout_F"];

_planesTransport    append [];
_gunship            append [];

_helisLight             append ["I_Heli_light_03_unarmed_F"];
_transportHelicopters   append ["I_Heli_Transport_02_F"];
_helisLightAttack       append ["I_Heli_light_03_dynamicLoadout_F"];
_helisAttack            append [];
_airPatrol              append ["I_Heli_light_03_unarmed_F", "I_Heli_light_03_dynamicLoadout_F"];

_artillery      append ["I_Truck_02_MRL_F"];
_artilleryMags  append [
["I_Truck_02_MRL_F", ["12Rnd_230mm_rockets", "12Rnd_230mm_rockets_cluster"]],
["gm_pl_army_2s1",["gm_1Rnd_122x447mm_he_of462","gm_1Rnd_122x447mm_he_3of56"]],
["gm_pl_army_ural375d_mlrs",["gm_40Rnd_mlrs_122mm_he_9m22u","gm_40Rnd_mlrs_122mm_icm_9m218","gm_40Rnd_mlrs_122mm_mine_9m28k"]],
["gmx_aaf_m109_wdl",["gm_1Rnd_155mm_he_dm21","gm_1Rnd_155mm_he_dm111","gm_1Rnd_155mm_icm_dm602"]],
["gmx_aaf_kat1_463_mlrs_wdl",["gm_36Rnd_mlrs_110mm_he_dm21","gm_36Rnd_mlrs_110mm_icm_dm602","gm_36Rnd_mlrs_110mm_mine_dm711"]]
];

_uavsAttack     append ["I_UAV_02_dynamicLoadout_F"];
_uavsPortable   append ["I_UAV_01_F"];

_militiaLightArmed  append ["B_G_Offroad_01_armed_F"];
_militiaTrucks      append ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
_militiaCars        append ["B_G_Offroad_01_F"];
_militiaAPCs        append []; 

_policeVehs append ["B_GEN_Offroad_01_gen_F"];

_staticMG       append ["I_HMG_02_high_F","I_HMG_01_high_F"];
_staticAT       append ["I_static_AT_F","I_GMG_01_high_F"];
_staticAA       append ["I_static_AA_F"];
_staticMortars  append ["B_Mortar_01_F"];
_howitzers      append [];
_radar          append [];
_SAM            append [];

_minefieldAT    append ["ATMine"];
_minefieldAPERS append ["APERSMine"];

private _variants = [
    #include "..\..\vehicleVariants\Vanilla_AAF\CSLA_AAF.sqf",
    #include "..\..\vehicleVariants\GM_police.sqf",
    #include "..\..\vehicleVariants\Vanilla_AAF\RF_AAF.sqf",
    #include "..\..\vehicleVariants\Vanilla_AAF\SPE_AAF.sqf",
    #include "..\..\vehicleVariants\Vanilla_AAF\Vanilla_AAF.sqf",
    #include "..\..\vehicleVariants\Vanilla_AAF\WS_AAF.sqf",
    #include "..\..\MOD_content\CUP\Vanilla_AAF\Vehicles_variants.sqf"
];

if (_hasContact) then {
    #include "..\..\DLC_content\vehicles\Contact\police_offroad.sqf"
};

if (_hasLawsOfWar) then {
    #include "..\..\DLC_content\vehicles\Lawsofwar\police_van.sqf"
};

if (_hasApex) then {
    #include "..\..\DLC_content\vehicles\Apex\Vanilla_AAF.sqf"
};

if (_hasRF) then {
    #include "..\..\DLC_content\vehicles\RF\Vanilla_AAF.sqf"
};

//If Tank DLC
if (_hasTanks) then {
    #include "..\..\DLC_content\vehicles\Tanks\Vanilla_AAF.sqf"
};
if (_hasJets) then {
	#include "..\..\DLC_content\vehicles\Jets\Vanilla_AAF.sqf"
};
//If Western Sahara DLC
if (_hasWs) then {
    #include "..\..\DLC_content\vehicles\WS\Vanilla_AAF.sqf"
};

//If GM cdlc + extra AAF mod
if (isClass (configFile >> "cfgVehicles" >> "gmx_aaf_m113a2dk_wdl") && _hasGM) then {
    #include "..\..\DLC_content\vehicles\GM\AAF_extramod.sqf"
};

if (_hasCSLA) then {
    #include "..\..\DLC_content\vehicles\CSLA\Vanilla_AAF.sqf"
};

if (_hasSOG) then {
    #include "..\..\DLC_content\vehicles\SOG\Vanilla_AAF.sqf"
};

if (_hasSPE) then {
    #include "..\..\DLC_content\vehicles\SPE\Vanilla_AAF.sqf"
};

if (_hasEF) then {
    #include "..\..\DLC_content\vehicles\EF\Vanilla_AAF.sqf"
};

//If CUP
if (isClass (configFile >> "cfgVehicles" >> "CUP_ZSU23_Base")) then {
    #include "..\..\MOD_content\CUP\Vanilla_AAF\Vehicles_AAF.sqf"
};

_faces append [
    "GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros",
    "GreekHead_A3_10_l",
    "GreekHead_A3_10_sa",
    "GreekHead_A3_10_a"
];
if (_hasSOG) then {
    _faces append [
        #include "..\..\DLC_content\faces\SOG\SOG_faces_greek.sqf"
    ];
};
_voices append ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"];

_fac_insigniaes append ["AAF_1stRegiment", "", ""];
_milInsignia append ["AAF_3rdRegiment", "", ""];

//////////////////////////
//       Loadouts       //
//////////////////////////

_slRifles append [];
_rifles append [];
_carbines append [];
_grenadeLaunchers append [];
_designatedGrenadeLaunchers append [];
_SMGs append [];
_machineGuns append [];
_marksmanRifles append [];
_lightATLaunchers append [
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""], 2.25,
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""], 1.5,
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""], 2,
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""], 1.75,
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""], 1,
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""], 1.5
];
_lightHELaunchers append [];
_ATLaunchers append [
["launch_NLAW_F"], 10
];
_missleATLaunchers append [
["launch_I_Titan_short_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""], 10
];
_AALaunchers append [
["launch_I_Titan_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""], 10
];
_sidearms append [];
_GLsidearms append [];

_ATMines append ["ATMine_Range_Mag"];
_APMines append ["APERSMine_Range_Mag"];
_lightExplosives append ["DemoCharge_Remote_Mag"];
_heavyExplosives append ["SatchelCharge_Remote_Mag"];

_antiInfantryGrenades append ["HandGrenade", "MiniGrenade"];
_smokeGrenades append ["SmokeShell"];
_signalsmokeGrenades append ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"];

_maps append ["ItemMap"];
_watches append ["ItemWatch"];
_compasses append ["ItemCompass"];
_radios append ["ItemRadio"];
_gpses append ["ItemGPS"];
_NVGs append ["NVGoggles_INDEP"];
_binoculars append ["Binocular"];
_rangefinders append ["Rangefinder"];

_traitorUniforms append ["U_BG_Guerrilla_6_1"];
_traitorVests append ["V_TacVest_oli", "V_TacVest_camo", "V_BandollierB_oli"];
_traitorHats append ["H_Cap_grn","H_Cap_oli"];

if (_hasArtOfWar) then {
    _officerUniforms append ["officerUniforms", ["U_I_ParadeUniform_01_AAF_F", 1, "U_I_ParadeUniform_01_AAF_decorated_F", 1, "U_I_OfficerUniform", 2]];
    _officerVests append ["officerVests", ["V_Rangemaster_belt", 1]];
    _officerHats append ["officerHats", ["H_ParadeDressCap_01_AAF_F", 1, "H_Beret_grn", 2]];
} else {
    _officerUniforms append ["officerUniforms", ["U_I_OfficerUniform"]];
    _officerVests append ["officerVests", ["V_Rangemaster_belt"]];
    _officerHats append ["officerHats", ["H_MilCap_dgtl", "H_Beret_grn"]];
};

_cloakUniforms append ["U_I_FullGhillie_ard", "U_I_FullGhillie_lsh", "U_I_FullGhillie_sard", "U_I_GhillieSuit"];
_cloakVests append ["V_PlateCarrierIA1_dgtl", "V_BandollierB_oli", "V_Chestrig_oli", "V_TacVest_oli"];

_uniforms append [];
_MGvests append [];
_MEDvests append [];
_SLvests append [];
_SNIvests append ["V_Chestrig_oli"];
_GLvests append [];
_vests append [];
_backpacks append [];
_atBackpacks append ["B_Carryall_oli"];
_longRangeRadios append ["B_RadioBag_01_digi_F"];
_helmets append [];
_slHat append ["H_Beret_blk", "H_MilCap_dgtl"];
_sniHats append ["H_Booniehat_dgtl"];

_slItems append ["Laserbatteries", "Laserbatteries", "Laserbatteries", "I_IR_Grenade"];
_rItems append [];
_mItems append [];
_gItems append [];
_eeItems append ["ToolKit", "MineDetector"];
_latItems append [];
_atItems append [];
_aaItems append [];
_mgItems append [];
_mmItems append [];
_pItems append [];
_cItems append [];
_uItems append [];

_glasses append [
    "G_Shades_Black", 1.5,
    "G_Shades_Blue", 0.5,
    "G_Shades_Green", 0.5,
    "G_Shades_Red", 0.5,
    "G_Aviator", 1,
    "G_Spectacles", 1.25,
    "G_Spectacles_Tinted", 0.75,
    "G_Sport_Blackred", 0.34,
    "G_Sport_BlackWhite", 0.34,
    "G_Sport_Blackyellow", 0.33,
    "G_Sport_Greenblack", 0.33,
    "G_Sport_Checkered", 0.33,
    "G_Sport_Red", 0.33,
    "G_Squares", 1.25,
    "G_Squares_Tinted", 0.75
];
_goggles append [
    "G_Combat", 4, 
    "G_Lowprofile", 6
];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

_sfUniform append ["U_I_CombatUniform", 4, "U_I_CombatUniform_shortsleeve", 6];
_sfvests append ["V_TacVest_oli", 2, "V_PlateCarrierIA2_dgtl", 4, "V_PlateCarrierIA1_dgtl", 4];
_sfMGvests append ["V_PlateCarrierIAGL_dgtl", 4, "V_PlateCarrierIAGL_oli", 6];
_sfMEDvests append [];
_sfGLvests append [];
_sfbackpacks append ["B_TacticalPack_oli", 2, "B_FieldPack_oli", 1, "B_Carryall_oli", 1, "B_AssaultPack_dgtl", 3, "B_Kitbag_sgg", 3];
_sfhelmets append ["H_HelmetIA", 5, "H_Cap_blk_Raven", 1, "H_Cap_oli_hs", 0.25, "H_Cap_headphones", 0.25,"H_Booniehat_khk_hs", 0.25, "H_Booniehat_oli", 0.5, "H_Booniehat_dgtl", 1.5, "H_Watchcap_camo", 0.25,"H_Shemag_olive", 0.5, "H_Shemag_olive_hs", 0.5];
_sfNVGs append [];
_sfbinoculars append ["Rangefinder"];
_sfantiInfantryGrenades append [];
_sflightATLaunchers append [];
_sflightHELaunchers append [];

_sfslRifles append [
    ["arifle_Mk20_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1, "optic_Holosight_blk_F", 2, "optic_Hamr", 4, "optic_MRCO", 3], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 2.75,
    ["arifle_Mk20_plain_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1, "optic_Holosight_blk_F", 2, "optic_Hamr", 4, "optic_MRCO", 3], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 1.25,
    ["arifle_Mk20_GL_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1, "optic_Holosight_blk_F", 2, "optic_Hamr", 4, "optic_MRCO", 3], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""], 4,
    ["arifle_Mk20_GL_plain_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1, "optic_Holosight_blk_F", 2, "optic_Hamr", 4, "optic_MRCO", 3], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""], 2
];
_sfrifles append [
    ["arifle_Mk20_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 6.5,
    ["arifle_Mk20_plain_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 3.5
];
_sfcarbines append [
    ["arifle_Mk20C_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 6.5,
    ["arifle_Mk20C_plain_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 3.5
];
_sfgrenadeLaunchers append [
    ["arifle_Mk20_GL_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 6.5,
    ["arifle_Mk20_GL_plain_F", "muzzle_snds_M", ["acc_pointer_IR", 10], ["optic_ACO_grn", 1.5, "optic_Holosight_blk_F", 3.5, "optic_Hamr", 3, "optic_MRCO", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 3.5
];
_sfSMGs append [
    ["SMG_01_F", "muzzle_snds_acp", "", ["optic_Aco_smg", 3, "optic_Holosight", 7], ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"], [], ""], 2,
    ["SMG_03C_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 2,
    ["SMG_03C_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.5,
    ["SMG_03C_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.5,
    ["SMG_03C_TR_camo", "muzzle_snds_570", ["acc_pointer_IR", 10], ["optic_Aco_smg", 3, "optic_Holosight_blk_F", 7], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 3,
    ["SMG_03C_TR_khaki", "muzzle_snds_570", ["acc_pointer_IR", 10], ["optic_Aco_smg", 3, "optic_Holosight_blk_F", 7], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_03C_TR_black", "muzzle_snds_570", ["acc_pointer_IR", 10], ["optic_Aco_smg", 3, "optic_Holosight_blk_F", 7], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_02_F", "muzzle_snds_L", ["acc_pointer_IR", 10], ["optic_Aco_smg", 3, "optic_Holosight_blk_F", 7], ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""], 1.5
];
_sfmachineGuns append [
    ["LMG_Mk200_F", "muzzle_snds_H", ["acc_pointer_IR", 10], ["optic_tws_mg", 2.5, "optic_MRCO", 2, "optic_Holosight_blk_F", 2, "optic_Hamr", 3, "optic_ACO_grn", 1], ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""], 1
];
_sfmarksmanRifles append [
    ["srifle_EBR_F", "muzzle_snds_B", ["acc_pointer_IR", 10], ["optic_TWS", 4, "optic_Nightstalker", 2, "optic_DMS", 2.5, "optic_SOS", 1.5], ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""], 1
];
_sfsniperRifles append [
    ["srifle_GM6_F", "", "", ["optic_SOS", 2, "optic_LRPS", 5, "optic_Nightstalker", 3], ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""], 1
];
_sfsidearms append [
    ["hgun_ACPC2_F", "muzzle_snds_acp", "acc_flashlight_pistol", "", ["9Rnd_45ACP_Mag"], [], ""], 10
];
_sfGLsidearms append [];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

_eliteuniforms append ["U_I_CombatUniform_shortsleeve", 5, "U_I_CombatUniform", 5];
_eliteslUniforms append ["U_I_OfficerUniform", 10];
_elitevests append ["V_PlateCarrierIA2_dgtl", 3.75, "V_PlateCarrierIA1_dgtl", 3.75, "V_PlateCarrierIAGL_dgtl", 1.5,"V_PlateCarrierIAGL_oli", 1];
_eliteHvests append ["V_PlateCarrierIAGL_dgtl", 6,"V_PlateCarrierIAGL_oli", 4];
_eliteMGvests append [];
_eliteMEDvests append [];
_eliteGLvests append [];
_elitebackpacks append ["B_TacticalPack_oli", 2, "B_FieldPack_oli", 0.5, "B_Carryall_oli", 1, "B_AssaultPack_dgtl", 3,"B_Kitbag_sgg", 3.5];
_elitehelmets append ["H_HelmetIA", 6.75, "H_Cap_blk_Raven", 0.5, "H_Cap_oli_hs", 0.25, "H_Cap_headphones", 0.25, "H_Booniehat_oli", 0.5, "H_Booniehat_dgtl", 1.25, "H_Watchcap_camo", 0.25, "H_Booniehat_khk_hs", 0.25];
_eliteNVGs append [];
_elitebinoculars append ["Rangefinder"];
_eliteantiInfantryGrenades append [];
_elitelightATLaunchers append [];
_eliteATLaunchers append [];

_eliteslRifles append [
    ["arifle_Mk20_F", "", ["acc_pointer_IR", 10], ["optic_MRCO", 3, "optic_Hamr", 6, "optic_Holosight_blk_F", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 4,
    ["arifle_Mk20_GL_F", "", ["acc_pointer_IR", 10], ["optic_MRCO", 3, "optic_Hamr", 6, "optic_Holosight_blk_F", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""], 6
];
_eliterifles append [
    ["arifle_Mk20_F", "", ["acc_pointer_IR", 10], ["optic_Holosight_blk_F", 7, "optic_MRCO", 2, "optic_Hamr", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 10
];
_elitecarbines append [
    ["arifle_Mk20C_F", "", ["acc_pointer_IR", 10], ["optic_Holosight_blk_F", 7, "optic_MRCO", 2, "optic_Hamr", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 10
];
_elitedesignatedGrenadeLaunchers append [];
_elitegrenadeLaunchers append [
    ["arifle_Mk20_GL_F", "", ["acc_pointer_IR", 10], ["optic_Holosight_blk_F", 7, "optic_MRCO", 2, "optic_Hamr", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 10
];
_eliteSMGs append [
    ["SMG_01_F", "", "acc_flashlight_smg_01", ["optic_Aco_smg", 4, "optic_Holosight", 6], ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"], [], ""], 2,
    ["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 1.25, 
    ["SMG_03C_black", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_03C_TR_camo", "", ["acc_pointer_IR", 10], ["optic_Aco_smg", 4, "optic_Holosight_blk_F", 6], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 3.5,
    ["SMG_03C_TR_khaki", "", ["acc_pointer_IR", 10], ["optic_Aco_smg", 4, "optic_Holosight_blk_F", 6], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_03C_TR_black", "", ["acc_pointer_IR", 10], ["optic_Aco_smg", 4, "optic_Holosight_blk_F", 6], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 1.25,
    ["SMG_02_F", "", ["acc_pointer_IR", 10], ["optic_Aco_smg", 4, "optic_Holosight_blk_F", 6], ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""], 0.5
];
_elitemachineGuns append [
    ["LMG_Mk200_F", "", ["acc_pointer_IR", 10], ["optic_NVS", 0.75, "optic_MRCO", 4, "optic_Holosight_blk_F", 2.75, "optic_Hamr", 2.5], ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""], 10
];
_elitemarksmanRifles append [
   ["srifle_EBR_F", "", ["acc_pointer_IR", 10], ["optic_DMS", 6, "optic_NVS", 1, "optic_SOS", 3], ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"], 10
];
_elitesniperRifles append [
    ["srifle_GM6_F", "", "", ["optic_LRPS", 5, "optic_SOS", 2, "optic_TWS", 3], ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""], 10
];
_elitesidearms append [
    ["hgun_ACPC2_F", "", "acc_flashlight_pistol", "", ["9Rnd_45ACP_Mag"], [], ""], 10
];
_eliteGLsidearms append [];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

_militaryuniforms append ["U_I_CombatUniform_shortsleeve", 3, "U_I_CombatUniform", 3, "U_BG_Guerilla1_2_F", 2];
_militaryslUniforms append ["U_I_OfficerUniform", 10];
_militaryvests append ["V_TacVest_oli", 2, "V_PlateCarrierIA2_dgtl", 5, "V_PlateCarrierIA1_dgtl", 3];
_militaryHvests append ["V_PlateCarrierIAGL_dgtl", 7,"V_PlateCarrierIAGL_oli", 3];
_militaryMGvests append [];
_militaryMEDvests append [];
_militarySLvests append [];
_militarySNIvests append [];
_militaryGLvests append [];
_militarybackpacks append ["B_TacticalPack_oli", 2.5, "B_FieldPack_oli", 1, "B_Carryall_oli", 1.5, "B_AssaultPack_dgtl", 2.5, "B_Kitbag_sgg", 2.5];
_militaryhelmets append ["H_HelmetIA", 6.9, "H_Cap_blk_Raven", 1, "H_Cap_oli_hs", 0.5, "H_Cap_headphones", 0.1, "H_Booniehat_oli", 0.25, "H_Booniehat_dgtl", 1.25];
_militaryNVGs append [];
_militarybinoculars append ["Rangefinder"];
_militaryantiInfantryGrenades append [];
_militarylightATLaunchers append [];
_militaryATLaunchers append [];

_militaryslRifles append [
    ["arifle_Mk20_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_Hamr", 2, "optic_MRCO", 6, "optic_Holosight_blk_F", 2] , ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 4,
    ["arifle_Mk20_GL_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_Hamr", 2, "optic_MRCO", 6, "optic_Holosight_blk_F", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""], 6
];
_militaryrifles append [
    ["arifle_Mk20_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_ACO_grn", 6, "optic_Holosight_blk_F", 3, "", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 10
];
_militarycarbines append [
    ["arifle_Mk20C_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_ACO_grn", 6, "optic_Holosight_blk_F", 3, "", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 10
];
_militarySMGs append [
    ["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Holosight_smg", ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"], [], ""], 5,
    ["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 1.25,
    ["SMG_03C_black", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.25,
    ["SMG_03C_TR_camo", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_Holosight_smg_blk_F", 4, "optic_Aco_grn_smg", 6], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_03C_TR_black", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_Holosight_smg_blk_F", 4, "optic_Aco_grn_smg", 6], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.25,
    ["SMG_02_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_Holosight_smg_blk_F", 4, "optic_Aco_grn_smg", 6], ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""], 2.5
];
_militarydesignatedGrenadeLaunchers append [];
_militarygrenadeLaunchers append [
    ["arifle_Mk20_GL_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_ACO_grn", 6, "optic_Holosight_blk_F", 3, "", 1], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 10
];
_militarymachineGuns append [
    ["LMG_Mk200_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_MRCO", 2, "optic_Holosight_blk_F", 2, "optic_ACO_grn", 5, "optic_Hamr", 1], ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""], 10
];
_militarymarksmanRifles append [
    ["srifle_EBR_F", "", ["acc_flashlight", 7, "", 2, "acc_pointer_IR", 1], ["optic_DMS", 3, "optic_MRCO", 2.5, "optic_Hamr", 4.5], ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"], 10
];
_militarysniperRifles append [
["srifle_GM6_F", "", "", ["optic_SOS", 6, "optic_LRPS", 4] , ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""], 10
];
_militarysidearms append [
["hgun_ACPC2_F", "", "acc_flashlight_pistol", "", ["9Rnd_45ACP_Mag"], [], ""], 10
];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

_policeuniforms append ["U_Marshal", 10];
_policevests append ["V_TacVest_blk_POLICE", 6, "V_Rangemaster_belt", 4];
_policehelmets append ["H_Cap_police", 10];
_policepoliceWeapons append [
    ["SMG_01_F", "", "acc_flashlight_smg_01", ["optic_Aco_smg", 3, "", 7], ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"], [], ""], 1.5,
    ["SMG_03_black", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.5,
    ["SMG_03C_black", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 1,
    ["SMG_03_TR_black", "", ["acc_flashlight", 6, "", 4], ["optic_Aco_smg", 3, "", 7], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.25,
    ["SMG_03C_TR_black", "", ["acc_flashlight", 6, "", 4], ["optic_Aco_smg", 3, "", 7], ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 0.75,
    ["SMG_02_F", "", ["acc_flashlight", 6, "", 4], ["optic_Aco_smg", 3, "", 7], ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""], 6
];
_policesidearms append ["hgun_Rook40_F", 10];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

_militiauniforms append ["U_I_CombatUniform", 3, "U_I_CombatUniform_shortsleeve", 3, "U_BG_Guerilla1_2_F", 4];
_militiavests append ["V_BandollierB_oli", 1.25, "V_Chestrig_oli", 5, "V_TacVest_oli", 3.75];
_militiaHvests append ["V_TacVest_oli", 10];
_militiabackpacks append ["B_TacticalPack_oli", 4, "B_FieldPack_oli", 4, "B_AssaultPack_dgtl", 2];
_militiaatBackpacks append [];
_militiahelmets append ["H_HelmetIA", 4, "H_Booniehat_dgtl", 3, "H_Cap_blk_Raven", 2];
_militiaslHat append [];

_militialightATLaunchers append [];

_militiaslRifles append [
    ["arifle_Mk20_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 3.5, "optic_MRCO", 4.5, "", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 6,
    ["arifle_Mk20_GL_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 3.5, "optic_MRCO", 4.5, "", 2], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""], 4
];
_militiarifles append [
    ["arifle_Mk20_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 7.5,
    ["arifle_TRG21_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 2.5
];
_militiacarbines append [
    ["arifle_Mk20C_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 7.5, 
    ["arifle_TRG20_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""], 2.5
];
_militiagrenadeLaunchers append [
    ["arifle_Mk20_GL_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 7.5,
    ["arifle_TRG21_GL_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 2, "", 8], ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""], 2.5
];
_militiaSMGs append [
    ["SMG_01_F", "", ["acc_flashlight", 4, "", 6], ["optic_Aco_smg", 3, "", 7], ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"], [], ""], 1,
    ["SMG_03C_camo", "", ["acc_flashlight", 4, "", 6], "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""], 1.5,
    ["SMG_02_F", "", ["acc_flashlight", 4, "", 6], ["optic_Aco_smg", 3, "", 7], ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""], 7.5
];
_militiamachineGuns append [
    ["LMG_Mk200_F", "", ["acc_flashlight", 4, "", 6], ["optic_ACO_grn", 1.5, "", 8.5], ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_03_F_blk"], 10
];
_militiamarksmanRifles append [
    ["srifle_EBR_F", "", ["acc_flashlight", 4, "", 6], ["optic_MRCO", 10], ["10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag"], [], "bipod_03_F_blk"], 10
];
_militiasniperRifles append [
    ["srifle_EBR_F", "", "", ["optic_SOS", 10], ["10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag"], [], "bipod_03_F_blk"], 10
];
_militiasidearms append ["hgun_ACPC2_F", 10];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

if (_hasTanks) then {
    _crewuniforms append ["U_Tank_green_F", 10];
} else {
    _crewuniforms append [["U_I_CombatUniform", 4, "U_I_CombatUniform_shortsleeve", 6]];
};
_crewvests append ["V_BandollierB_oli", 10];
_crewhelmets append ["H_HelmetCrew_I", 10];
_crewcarbines append [];
_crewSMGs append [];

_pilotuniforms append ["U_I_HeliPilotCoveralls", 5, "U_I_pilotCoveralls", 5];
_pilotvests append ["V_TacVest_oli", 10];
_pilothelmets append ["H_PilotHelmetHeli_I", 5, "H_CrewHelmetHeli_I", 5];
_pilotSMGs append [];

if (_hasMarksman) then {
	#include "..\..\DLC_content\gear\Marksman\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\Marksman\Vanilla_AAF.sqf"
};

if (_hasApex) then {
    #include "..\..\DLC_content\gear\Apex\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\Apex\Vanilla_AAF.sqf"
};

if (_hasLawsOfWar) then {
    #include "..\..\DLC_content\gear\Lawsofwar\Vanilla_AAF.sqf"
};

if (_hasContact) then {
    #include "..\..\DLC_content\gear\Contact\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\Contact\Vanilla_AAF.sqf"
};

if (_hasRF) then {
    #include "..\..\DLC_content\gear\RF\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\RF\Vanilla_AAF.sqf"
};

if (_hasWs) then {
    #include "..\..\DLC_content\gear\WS\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\WS\Vanilla_AAF.sqf"
};

if (_hasCSLA) then {
    #include "..\..\DLC_content\gear\CSLA\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\CSLA\Vanilla_AAF.sqf"
};

if (_hasGM) then {
    #include "..\..\DLC_content\gear\GM\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\GM\Vanilla_AAF.sqf"
};

if (_hasSOG) then {
    #include "..\..\DLC_content\gear\SOG\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\SOG\Vanilla_AAF.sqf"
};

if (_hasSPE) then {
    #include "..\..\DLC_content\gear\SPE\Vanilla_AAF.sqf"
    #include "..\..\DLC_content\weapons\SPE\Vanilla_AAF.sqf"
};

if (_hasEF) then {
    #include "..\..\DLC_content\gear\EF\Vanilla_AAF.sqf"
};

if (isClass (configFile >> "cfgVehicles" >> "CUP_ZSU23_Base")) then {
    #include "..\..\MOD_content\CUP\Vanilla_AAF\Gear_AAF.sqf"
    #include "..\..\MOD_content\CUP\Vanilla_AAF\Weapons_AAF.sqf"
};