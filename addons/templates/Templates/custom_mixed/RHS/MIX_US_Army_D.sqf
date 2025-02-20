_basic              append ["I_Quadbike_01_F"];
_unarmedVehicles    append ["rhsusf_m1165_usarmy_d", "rhsusf_m1151_usarmy_d", "rhsusf_m1240a1_usarmy_d", "rhsusf_m1043_d"];
_armedVehicles      append ["rhsusf_m1151_m2crows_usarmy_d", "rhsusf_m1151_mk19crows_usarmy_d", "rhsusf_m1151_m2_v1_usarmy_d", "rhsusf_m1151_m2_lras3_v1_usarmy_d", "rhsusf_m1151_m240_v1_usarmy_d", "rhsusf_m1151_mk19_v1_usarmy_d", "rhsusf_m1151_m2_v2_usarmy_d", "rhsusf_m1240a1_m2_usarmy_d", "rhsusf_m1240a1_m240_usarmy_d", "rhsusf_m1240a1_mk19_usarmy_d", "rhsusf_m1240a1_m2_uik_usarmy_d", "rhsusf_m1240a1_m240_uik_usarmy_d", "rhsusf_m1240a1_mk19_uik_usarmy_d", "rhsusf_m1240a1_m2crows_usarmy_d", "rhsusf_m1240a1_mk19crows_usarmy_d"];
_Trucks             append ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
_cargoTrucks        append ["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M977A4_usarmy_d", "rhsusf_M977A4_BKIT_usarmy_d", "rhsusf_M977A4_BKIT_M2_usarmy_d"];
_ammoTrucks         append ["rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d"];
_repairTrucks       append ["rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d"];
_fuelTrucks         append ["rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_d"];
_medicalTrucks      append ["rhsusf_m113d_usarmy_medical", "rhsusf_M1230a1_usarmy_d", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy"];
_lightAPCs          append ["rhsusf_M1117_D", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M153_MK19_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d", "rhsusf_m113d_usarmy", "rhsusf_m113d_usarmy_M240", "rhsusf_m113d_usarmy_MK19", "rhsusf_m113d_usarmy_unarmed"];
_APCs               append ["rhsusf_stryker_m1126_m2_d", "rhsusf_stryker_m1126_mk19_d", "rhsusf_stryker_m1127_m2_d", "rhsusf_stryker_m1132_m2_np_d",  "rhsusf_stryker_m1132_m2_d",  "RHS_M2A2_BUSKI", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII"];
_IFVs               append [];
_airborneVehicles   append ["rhsusf_m113d_usarmy", "rhsusf_m113d_usarmy_MK19"];
_tanks              append ["rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a2sep2d_usarmy"];
_lightTanks         append ["rhsusf_stryker_m1134_d", "RHS_M2A2"];
_aa                 append ["RHS_M6"];

_SDV        append [];
_DropPod    append [];

_transportBoat  append ["B_Boat_Transport_01_F"];
_gunBoat        append ["B_Boat_Armed_01_minigun_F"];

_planesCAS  append ["RHS_A10"];
_planesAA   append ["rhsusf_f22"];

_planesTransport    append ["RHS_C130J"];
_gunship            append [];

if (isClass (configFile >> "cfgVehicles" >> "USAF_AC130U")) then {
	_gunship append "USAF_AC130U";
};

_helisLight             append ["RHS_MELB_MH6M"];
_transportHelicopters   append ["RHS_UH60M_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M2_d", "RHS_CH_47F_10", "RHS_CH_47F_light"];
_helisLightAttack       append ["RHS_MELB_AH6M", "RHS_MELB_AH6M_M", "RHS_MELB_AH6M_H"];
_helisAttack            append ["RHS_AH64D", "RHS_AH64D_CS", "RHS_AH64D_AA", "RHS_AH64D_GS"];
_airPatrol              append ["RHS_MELB_H6M"];

_artillery      append ["rhsusf_m109d_usarmy"];
_artilleryMags  append [
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

_animations append [];
_variants   append [
    ["rhsusf_stryker_m1126_m2_d", ["Tan",1]],
    ["rhsusf_stryker_m1126_mk19_d", ["Tan",1]],
    ["rhsusf_stryker_m1127_m2_d", ["Tan",1]],
    ["rhsusf_stryker_m1132_m2_np_d", ["Tan",1]],
    ["rhsusf_stryker_m1132_m2_d", ["Tan",1]],
    ["rhsusf_stryker_m1134_d", ["Tan",1]]
];

_faces append [];
_voices append [];
_sfVoices append [];
_eliteVoices append [];

_insignia append [];
_sfInsignia append [];
_milInsignia append [];

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
_missleATLaunchers append [];
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

_maps append ["ItemMap"];
_watches append ["ItemWatch"];
_compasses append ["ItemCompass"];
_radios append ["ItemRadio"];
_gpses append ["ItemGPS"];
_NVGs append ["NVGoggles"];
_binoculars append ["Binocular"];
_rangefinders append ["Rangefinder"];

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

_sfslRifles append [];
_sfrifles append [];
_sfcarbines append [];
_sfgrenadeLaunchers append [];
_sfdesignatedGrenadeLaunchers append [];
_sfSMGs append [];
_sfmachineGuns append [];
_sfmarksmanRifles append [];
_sfsniperRifles append [];
_sflightATLaunchers append [];
_sflightHELaunchers append [];
_sfATLaunchers append [];
_sfmissleATLaunchers append [];
_sfAALaunchers append [];
_sfsidearms append [];
_sfGLsidearms append [];

_sfATMines append [];
_sfAPMines append [];
_sflightExplosives append [];
_sfheavyExplosives append [];

_sfantiInfantryGrenades append [];
_sfsmokeGrenades append [];
_sfsignalsmokeGrenades append [];

_sfmaps append [];
_sfwatches append [];
_sfcompasses append [];
_sfradios append [];
_sfgpses append [];
_sfNVGs append [];
_sfbinoculars append [];
_sfrangefinders append [];

_sfuniforms append [];
_sfvests append [];
_sfHvests append [];
_sfMGvests append [];
_sfMEDvests append [];
_sfSLvests append [];
_sfSNIvests append [];
_sfGLvests append [];
_sfbackpacks append [];
_sfatBackpacks append [];
_sflongRangeRadios append [];
_sfhelmets append [];
_sfslHat append [];
_sfsniHats append [];

_sfglasses append [];
_sfgoggles append [];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////


_eliteslRifles append [];
_eliterifles append [];
_elitecarbines append [];
_elitegrenadeLaunchers append [];
_elitedesignatedGrenadeLaunchers append [];
_eliteSMGs append [];
_elitemachineGuns append [];
_elitemarksmanRifles append [];
_elitesniperRifles append [];
_elitelightATLaunchers append [];
_elitelightHELaunchers append [];
_eliteATLaunchers append [];
_elitemissleATLaunchers append [];
_eliteAALaunchers append [];
_elitesidearms append [];
_eliteGLsidearms append [];

_eliteATMines append [];
_eliteAPMines append [];
_elitelightExplosives append [];
_eliteheavyExplosives append [];

_eliteantiInfantryGrenades append [];
_elitesmokeGrenades append [];
_elitesignalsmokeGrenades append [];

_elitemaps append [];
_elitewatches append [];
_elitecompasses append [];
_eliteradios append [];
_elitegpses append [];
_eliteNVGs append [];
_elitebinoculars append [];
_eliterangefinders append [];

_eliteuniforms append [];
_elitevests append [];
_eliteHvests append [];
_eliteMGvests append [];
_eliteMEDvests append [];
_eliteSLvests append [];
_eliteSNIvests append [];
_eliteGLvests append [];
_elitebackpacks append [];
_eliteatBackpacks append [];
_elitelongRangeRadios append [];
_elitehelmets append [];
_eliteslHat append [];
_elitesniHats append [];

_eliteglasses append [];
_elitegoggles append [];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////


_militaryslRifles append [];
_militaryrifles append [];
_militarycarbines append [];
_militarygrenadeLaunchers append [];
_militarydesignatedGrenadeLaunchers append [];
_militarySMGs append [];
_militarymachineGuns append [];
_militarymarksmanRifles append [];
_militarysniperRifles append [];
_militarylightATLaunchers append [];
_militarylightHELaunchers append [];
_militaryATLaunchers append [];
_militarymissleATLaunchers append [];
_militaryAALaunchers append [];
_militarysidearms append [];
_militaryGLsidearms append [];

_militaryATMines append [];
_militaryAPMines append [];
_militarylightExplosives append [];
_militaryheavyExplosives append [];

_militaryantiInfantryGrenades append [];
_militarysmokeGrenades append [];
_militarysignalsmokeGrenades append [];

_militarymaps append [];
_militarywatches append [];
_militarycompasses append [];
_militaryradios append [];
_militarygpses append [];
_militaryNVGs append [];
_militarybinoculars append [];
_militaryrangefinders append [];

_militaryuniforms append [];
_militaryvests append [];
_militaryHvests append [];
_militaryMGvests append [];
_militaryMEDvests append [];
_militarySLvests append [];
_militarySNIvests append [];
_militaryGLvests append [];
_militarybackpacks append [];
_militaryatBackpacks append [];
_militarylongRangeRadios append [];
_militaryhelmets append [];
_militaryslHat append [];
_militarysniHats append [];

_militaryglasses append [];
_militarygoggles append [];

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


_militiaslRifles append [];
_militiarifles append [];
_militiacarbines append [];
_militiagrenadeLaunchers append [];
_militiadesignatedGrenadeLaunchers append [];
_militiaSMGs append [];
_militiamachineGuns append [];
_militiamarksmanRifles append [];
_militiasniperRifles append [];
_militialightATLaunchers append [];
_militialightHELaunchers append [];
_militiaATLaunchers append [];
_militiamissleATLaunchers append [];
_militiaAALaunchers append [];
_militiasidearms append [];
_militiaGLsidearms append [];

_militiaATMines append [];
_militiaAPMines append [];
_militialightExplosives append [];
_militiaheavyExplosives append [];

_militiaantiInfantryGrenades append [];
_militiasmokeGrenades append [];
_militiasignalsmokeGrenades append [];

_militiamaps append [];
_militiawatches append [];
_militiacompasses append [];
_militiaradios append [];
_militiagpses append [];
_militiaNVGs append [];
_militiabinoculars append [];
_militiarangefinders append [];

_militiauniforms append [];
_militiavests append [];
_militiaHvests append [];
_militiaMGvests append [];
_militiaMEDvests append [];
_militiaSLvests append [];
_militiaSNIvests append [];
_militiaGLvests append [];
_militiabackpacks append [];
_militiaatBackpacks append [];
_militialongRangeRadios append [];
_militiahelmets append [];
_militiaslHat append [];
_militiasniHats append [];

_militiaglasses append [];
_militiagoggles append [];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

_crewuniforms append [];
_crewvests append [];
_crewhelmets append [];
_crewcarbines append [];
_crewSMGs append [];

_pilotuniforms append [];
_pilotvests append [];
_pilothelmets append [];
_pilotSMGs append [];