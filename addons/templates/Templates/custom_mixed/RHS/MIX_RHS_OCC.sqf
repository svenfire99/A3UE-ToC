_basic              append ["I_Quadbike_01_F"];
_unarmedVehicles    append ["rhsusf_m1165_usarmy_d", "rhsusf_m1151_usarmy_d", "rhsusf_m1240a1_usarmy_d", "rhsusf_m1043_d"];
_armedVehicles      append ["rhsusf_m1151_m2crows_usarmy_d", "rhsusf_m1151_mk19crows_usarmy_d", "rhsusf_m1151_m2_v1_usarmy_d", "rhsusf_m1151_m2_lras3_v1_usarmy_d", "rhsusf_m1151_m240_v1_usarmy_d", "rhsusf_m1151_mk19_v1_usarmy_d", "rhsusf_m1151_m2_v2_usarmy_d", "rhsusf_m1240a1_m2_usarmy_d", "rhsusf_m1240a1_m240_usarmy_d", "rhsusf_m1240a1_mk19_usarmy_d", "rhsusf_m1240a1_m2_uik_usarmy_d", "rhsusf_m1240a1_m240_uik_usarmy_d", "rhsusf_m1240a1_mk19_uik_usarmy_d", "rhsusf_m1240a1_m2crows_usarmy_d", "rhsusf_m1240a1_mk19crows_usarmy_d"];
_Trucks             append ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
_cargoTrucks        append ["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M977A4_usarmy_d", "rhsusf_M977A4_BKIT_usarmy_d", "rhsusf_M977A4_BKIT_M2_usarmy_d"];
_ammoTrucks         append ["rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d"];
_repairTrucks       append ["rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d"];
_fuelTrucks         append ["rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_d"];
_medicalTrucks      append ["rhsusf_m113d_usarmy_medical", "rhsusf_M1230a1_usarmy_d", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy"];
_lightAPCs          append ["rhsusf_M1117_D", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M153_MK19_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d"];
_APCs               append ["rhsusf_stryker_m1126_m2_d", "rhsusf_stryker_m1126_mk19_d", "rhsusf_stryker_m1127_m2_d", "rhsusf_stryker_m1132_m2_np_d",  "RHS_M2A2_BUSKI", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII"];
_IFVs               append [];
_airborneVehicles   append ["rhsusf_m113d_usarmy", "rhsusf_m113d_usarmy_MK19"];
_tanks              append ["rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a2sep2d_usarmy"];
_lightTanks         append ["rhsusf_stryker_m1134_d", "RHS_M2A2"];
_aa                 append ["RHS_M6"];

_transportBoat  append ["B_Boat_Transport_01_F"];
_gunBoat        append ["B_Boat_Armed_01_minigun_F"];

_planesCAS  append ["RHS_A10"];
_planesAA   append ["rhsusf_f22"];

_planesTransport    append ["RHS_C130J"];
_gunship            append [];

if (isClass (configFile >> "cfgVehicles" >> "USAF_AC130U")) then {
	_gunship pushBack "USAF_AC130U";
};

_helisLight             append ["RHS_MELB_MH6M"];
_transportHelicopters   append ["RHS_UH60M_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M2_d", "RHS_CH_47F_10", "RHS_CH_47F_light"];
_helisLightAttack       append ["RHS_MELB_AH6M", "RHS_MELB_AH6M_M", "RHS_MELB_AH6M_H"];
_helisAttack            append ["RHS_AH64D", "RHS_AH64D_CS", "RHS_AH64D_AA", "RHS_AH64D_GS"];
_airPatrol              append ["RHS_MELB_H6M"];

_artillery      append ["rhsusf_m109d_usarmy"];
_artilleryMags  append [
    // ["ARTILLERy_CLASS", ["ARTILLERY_AMMO", "ARTILLERY_AMMO"]]
    ["rhsusf_m109d_usarmy",["rhs_mag_155mm_m795_28"]]
];

_uavsAttack     append ["B_UAV_02_dynamicLoadout_F"];
_uavsPortable   append ["B_UAV_01_F"];

_militiaLightArmed  append ["rhsusf_m1025_d_m2", "rhsusf_m1043_d_m2", "rhsusf_m1025_d_Mk19", "rhsusf_m1043_d_mk19", "rhsusf_m966_d"];
_militiaTrucks      append ["rhsusf_M1078A1P2_D_fmtv_usarmy", "rhsusf_M1083A1P2_D_fmtv_usarmy"];
_militiaCars        append ["rhsusf_m998_d_4dr_fulltop", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr", "rhsusf_m1025_d", "rhsusf_m1043_d", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop", "rhsusf_m998_d_2dr"];
_militiaAPCs        append ["rhsusf_m113d_usarmy_M240", "rhsusf_m113d_usarmy"]; 

_policeVehs append ["rhsusf_m998_d_4dr_fulltop", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr"];

_staticMG       append ["RHS_M2StaticMG_D"];
_staticAT       append ["RHS_TOW_TriPod_D"];
_staticAA       append ["RHS_Stinger_AA_pod_D"];
_staticMortars  append ["RHS_M252_D"];
_howitzers      append ["RHS_M119_D"];
_radar          append ["B_Radar_System_01_F"];
_SAM            append ["B_SAM_System_03_F"];

_minefieldAT    append ["rhsusf_mine_M19"];
_minefieldAPERS append ["rhsusf_mine_m14"];

_variants append [
    ["rhsusf_stryker_m1126_m2_d", ["Tan",1]],
    ["rhsusf_stryker_m1126_mk19_d", ["Tan",1]],
    ["rhsusf_stryker_m1127_m2_d", ["Tan",1]],
    ["rhsusf_stryker_m1132_m2_np_d", ["Tan",1]],
    ["rhsusf_stryker_m1134_d", ["Tan",1]]
];

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
_lightATLaunchers append [];
_lightHELaunchers append [];
_ATLaunchers append [];
_AALaunchers append [];
_sidearms append [];
_GLsidearms append [];

_ATMines append [];
_APMines append [];
_lightExplosives append [];
_heavyExplosives append [];

_antiInfantryGrenades append [];
_smokeGrenades append [];
_signalsmokeGrenades append [];

_maps append [];
_watches append [];
_compasses append [];
_radios append [];
_gpses append [];
_NVGs append [];
_binoculars append [];
_rangefinders append [];

_traitorUniforms append [];
_traitorVests append [];
_traitorHats append [];
_officerUniforms append [];
_officerVests append [];
_officerHats append [];

_cloakUniforms append [];
_cloakVests append [];

_uniforms append [];
_MGvests append [];
_MEDvests append [];
_SLvests append [];
_SNIvests append [];
_GLvests append [];
_vests append [];
_backpacks append [];
_atBackpacks append [];
_longRangeRadios append [];
_helmets append [];
_slHat append [];
_sniHats append [];

_slItems append [];
_rItems append [];
_mItems append [];
_gItems append [];
_eeItems append [];
_latItems append [];
_atItems append [];
_aaItems append [];
_mgItems append [];
_mmItems append [];
_pItems append [];
_cItems append [];
_uItems append [];

_glasses append [];
_goggles append [];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

_sfUniform append [];
_sfvests append [];
_sfMGvests append [];
_sfMEDvests append [];
_sfGLvests append [];
_sfbackpacks append [];
_sfhelmets append [];
_sfNVGs append [];
_sfbinoculars append [];
_sfantiInfantryGrenades append [];
_sflightATLaunchers append [];
_sflightHELaunchers append [];

_sfrifles append [];
_sfcarbines append [];
_sfgrenadeLaunchers append [];
_sfSMGs append [];
_sfmachineGuns append [];
_sfmarksmanRifles append [];
_sfsniperRifles append [];
_sfsidearms append [];
_sfGLsidearms append [];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

_eliteuniforms append [];
_elitevests append [];
_eliteMGvests append [];
_eliteMEDvests append [];
_eliteGLvests append [];
_elitebackpacks append [];
_elitehelmets append [];
_eliteNVGs append [];
_elitebinoculars append [];
_eliteantiInfantryGrenades append [];
_elitelightATLaunchers append [];
_eliteATLaunchers append [];

_eliterifles append [];
_elitecarbines append [];
_elitedesignatedGrenadeLaunchers append [];
_elitegrenadeLaunchers append [];
_eliteSMGs append [];
_elitemachineGuns append [];
_elitemarksmanRifles append [];
_elitesniperRifles append [];
_elitesidearms append [];
_eliteGLsidearms append [];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

_militaryuniforms append [];
_militaryvests append [];
_militaryMGvests append [];
_militaryMEDvests append [];
_militarySLvests append [];
_militarySNIvests append [];
_militaryGLvests append [];
_militarybackpacks append [];
_militaryhelmets append [];
_militaryNVGs append [];
_militarybinoculars append [];
_militaryantiInfantryGrenades append [];
_militarylightATLaunchers append [];
_militaryATLaunchers append [];

_militaryslRifles append [];
_militaryrifles append [];
_militarycarbines append [];
_militarySMGs append [];
_militarydesignatedGrenadeLaunchers append [];
_militarygrenadeLaunchers append [];
_militarymachineGuns append [];
_militarymarksmanRifles append [];
_militarysniperRifles append [];
_militarysidearms append [];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

_policeuniforms append [];
_policevests append [];
_policehelmets append [];
_policepoliceWeapons append [];
_policesidearms append [];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

_militiauniforms append [];
_militiavests append [];
_militiabackpacks append [];
_militiaatBackpacks append [];
_militiahelmets append [];
_militiaslHat append [];

_militialightATLaunchers append [];
_militiaslRifles append [];
_militiarifles append [];
_militiacarbines append [];
_militiagrenadeLaunchers append [];
_militiaSMGs append [];
_militiamachineGuns append [];
_militiamarksmanRifles append [];
_militiasniperRifles append [];
_militiasidearms append [];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

_crewuniforms append [];
_crewvests append [];
_crewhelmets append [];
_crewcarbines append [];
_crewSMGs append [];

_pilotuniforms append [];
_pilotvests append [];
_pilothelmets append [];
_pilotSMGs append [];