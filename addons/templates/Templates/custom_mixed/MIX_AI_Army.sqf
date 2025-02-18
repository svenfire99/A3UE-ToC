private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "BLUFOR"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "BLUFOR"]] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", "a3\data_f\flags\flag_aaf_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_AAF"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["I_SDV_01_F"]] call _fnc_saveToTemplate;

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basic = [];
private _unarmedVehicles = [];
private _armedVehicles = [];
private _Trucks = [];
private _cargoTrucks = [];
private _ammoTrucks = [];
private _repairTrucks = [];
private _fuelTrucks = [];
private _medicalTrucks = [];
private _lightAPCs = [];
private _APCs = [];
private _IFVs = [];
private _airborneVehicles = [];
private _tanks = [];
private _lightTanks = [];
private _aa = [];

private _transportBoat = [];
private _gunBoat = [];

private _planesCAS = [];
private _planesAA = [];

private _planesTransport = [];
private _gunship = [];

private _helisLight = [];
private _transportHelicopters = [];
private _helisLightAttack =  [];
private _helisAttack = [];

private _airPatrol = [];

private _artillery = [];
private _artilleryMags = [];

private _uavsAttack = [];
private _uavsPortable = [];

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:

private _militiaLightArmed = [];
private _militiaTrucks = [];
private _militiaCars = [];
private _militiaAPCs = []; 

private _policeVehs = [];

private _staticMG = [];
private _staticAT = [];
private _staticAA = [];
private _staticMortars = [];
private _howitzers =  [];

private _radar = [];
private _SAM = [];

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

private _minefieldAT = [];
private _minefieldAPERS = [];

private _variants = [];

private _faces = [];
private _voices = [];

private _insignia = [];
private _milInsignia = [];

//////////////////////////
//       Loadouts       //
//////////////////////////

private _slRifles = [];
private _rifles = [];
private _carbines = [];
private _grenadeLaunchers = [];
private _designatedGrenadeLaunchers = [];
private _SMGs = [];
private _machineGuns = [];
private _marksmanRifles = [];
private _sniperRifles = [];
private _lightATLaunchers = [];
private _lightHELaunchers = [];
private _ATLaunchers = [];
private _missleATLaunchers = [];
private _AALaunchers = [];
private _sidearms = [];
private _GLsidearms = [];

private _ATMines = [];
private _APMines = [];
private _lightExplosives = [];
private _heavyExplosives = [];

private _antiInfantryGrenades = [];
private _smokeGrenades = [];
private _signalsmokeGrenades = [];

private _maps = [];
private _watches = [];
private _compasses = [];
private _radios = [];
private _gpses = [];
private _NVGs = [];
private _binoculars = [];
private _rangefinders = [];

private _traitorUniforms = [];
private _traitorVests = [];
private _traitorHats = [];

private _officerUniforms = [];
private _officerVests = [];
private _officerHats = [];

private _cloakUniforms = [];
private _cloakVests = [];

private _uniforms = [];
private _slUniforms = [];
private _vests = [];
private _Hvests = [];
private _MGvests = [];
private _MEDvests =[] ;
private _SLvests = [];
private _SNIvests = [];
private _GLvests = [];
private _backpacks = [];
private _atBackpacks = [];
private _longRangeRadios = [];
private _helmets = [];
private _slHat = [];
private _sniHats = [];

private _slItems = [];
private _rItems = [];
private _mItems = [];
private _gItems = [];
private _eeItems = [];
private _latItems = [];
private _atItems = [];
private _aaItems = [];
private _mgItems = [];
private _mmItems = [];
private _pItems = [];
private _cItems = [];
private _uItems = [];

private _glasses = [];
private _goggles = [];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfUniform = [];
private _sfvests = [];
private _sfHvests = [];
private _sfMGvests = [];
private _sfMEDvests = [];
private _sfGLvests = [];
private _sfbackpacks = [];
private _sfhelmets = [];
private _sfNVGs = [];
private _sfbinoculars = [];
private _sfantiInfantryGrenades = [];
private _sflightATLaunchers = [];
private _sflightHELaunchers = [];

private _sfslRifles = [];
private _sfrifles = [];
private _sfcarbines = [];
private _sfgrenadeLaunchers = [];
private _sfSMGs = [];
private _sfmachineGuns = [];
private _sfmarksmanRifles = [];
private _sfsniperRifles = [];
private _sfsidearms = [];
private _sfGLsidearms = [];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteuniforms = [];
private _elitevests = [];
private _eliteMGvests = [];
private _eliteMEDvests = [];
private _eliteGLvests = [];
private _elitebackpacks = [];
private _elitehelmets = [];
private _eliteNVGs = [];
private _elitebinoculars = [];
private _eliteantiInfantryGrenades = [];
private _elitelightATLaunchers = [];
private _eliteATLaunchers = [];

private _eliterifles = [];
private _elitecarbines = [];
private _elitedesignatedGrenadeLaunchers = [];
private _elitegrenadeLaunchers = [];
private _eliteSMGs = [];
private _elitemachineGuns = [];
private _elitemarksmanRifles = [];
private _elitesniperRifles = [];
private _elitesidearms = [];
private _eliteGLsidearms = [];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryuniforms = [];
private _militaryvests = [];
private _militaryMGvests = [];
private _militaryMEDvests = [];
private _militarySLvests = [];
private _militarySNIvests = [];
private _militaryGLvests = [];
private _militarybackpacks = [];
private _militaryhelmets = [];
private _militaryNVGs = [];
private _militarybinoculars = [];
private _militaryantiInfantryGrenades = [];
private _militarylightATLaunchers = [];
private _militaryATLaunchers = [];

private _militaryslRifles = [];
private _militaryrifles = [];
private _militarycarbines = [];
private _militarySMGs = [];
private _militarydesignatedGrenadeLaunchers = [];
private _militarygrenadeLaunchers = [];
private _militarymachineGuns = [];
private _militarymarksmanRifles = [];
private _militarysniperRifles = [];
private _militarysidearms = [];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeuniforms = [];
private _policevests = [];
private _policehelmets = [];
private _policepoliceWeapons = [];
private _policesidearms = [];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiauniforms = [];
private _militiavests = [];
private _militiabackpacks = [];
private _militiaatBackpacks = [];
private _militiahelmets = [];
private _militiaslHat = [];

private _militialightATLaunchers = [];
private _militiaslRifles = [];
private _militiarifles = [];
private _militiacarbines = [];
private _militiagrenadeLaunchers = [];
private _militiaSMGs = [];
private _militiamachineGuns = [];
private _militiamarksmanRifles = [];
private _militiasniperRifles = [];
private _militiasidearms = [];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _crewuniforms = [];
private _crewvests = [];
private _crewhelmets = [];
private _crewcarbines = [];
private _crewSMGs = [];

private _pilotuniforms = [];
private _pilotvests = [];
private _pilothelmets = [];
private _pilotSMGs = [];

//If RHS
if (isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_usarmy")) then {
    #include "RHS\MIX_RHS_OCC.sqf"
};

["vehiclesAirPatrol", _airPatrol] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", _gunship] call _fnc_saveToTemplate;
["vehiclesGunBoats", _gunBoat] call _fnc_saveToTemplate;
["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF","2Rnd_120mm_Mo_Cluster_RF"] call _fnc_saveToTemplate;
["uavsAttack", _uavsAttack] call _fnc_saveToTemplate;
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticMortars", _staticMortars] call _fnc_saveToTemplate;
["minefieldAT", _minefieldAT] call _fnc_saveToTemplate;
["minefieldAPERS", _minefieldAPERS] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _militiaTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesBasic", _basic] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _planesTransport] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _helisAttack] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesArtillery", _artillery] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray _artilleryMags] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["vehiclesLightTanks",  _lightTanks] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesTrucks", _Trucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;

#include "Vanilla_Vehicle_Attributes.sqf"

["animations", [
    #include "..\vehicleAnimations\vehicleAnimations_Vanilla.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_WS.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_RF.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_GM.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_GMX_AAF.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_CSLA.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_SOG.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_SPE.sqf",
    #include "..\vehicleAnimations\vehicleAnimations_EF.sqf",
    #include "..\MOD_content\CUP\Vehicles_Animations.sqf"
]] call _fnc_saveToTemplate;

["variants", _variants] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", _faces] call _fnc_saveToTemplate;
["voices", _voices] call _fnc_saveToTemplate;

["insignia", _insignia] call _fnc_saveToTemplate;
["milInsignia", _milInsignia] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

// Note on loadout array weighting:
// If a given loadoutData variable has a weighted array, make sure all mod/DLC compats also have a weighted array for the same.
// To simplify work on mod/DLC compats, the weighted arrays here are made to sum up to 10. This is so that compats have a consistent base to work off but is not strictly necessary.

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", _slRifles];
_loadoutData set ["rifles", _rifles];
_loadoutData set ["carbines", _carbines];
_loadoutData set ["grenadeLaunchers", _grenadeLaunchers];
_loadoutData set ["designatedGrenadeLaunchers", _designatedGrenadeLaunchers];
_loadoutData set ["SMGs", _SMGs];
_loadoutData set ["machineGuns", _machineGuns];
_loadoutData set ["marksmanRifles", _marksmanRifles];
_loadoutData set ["sniperRifles", _sniperRifles];

_loadoutData set ["lightATLaunchers", _lightATLaunchers];
_loadoutData set ["lightHELaunchers", _lightHELaunchers];
_loadoutData set ["ATLaunchers", _ATLaunchers];
_loadoutData set ["missileATLaunchers", _missleATLaunchers];
_loadoutData set ["AALaunchers", _AALaunchers];
_loadoutData set ["sidearms", _sidearms];
_loadoutData set ["GLsidearms", _GLsidearms];

_loadoutData set ["ATMines", _ATMines];
_loadoutData set ["APMines", _APMines];
_loadoutData set ["lightExplosives", _lightExplosives];
_loadoutData set ["heavyExplosives", _heavyExplosives];

_loadoutData set ["antiInfantryGrenades", _antiInfantryGrenades];
_loadoutData set ["smokeGrenades", _smokeGrenades];
_loadoutData set ["signalsmokeGrenades", _signalsmokeGrenades];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", _maps];
_loadoutData set ["watches", _watches];
_loadoutData set ["compasses", _compasses];
_loadoutData set ["radios", _radios];
_loadoutData set ["gpses", _gpses];
_loadoutData set ["NVGs", _NVGs];
_loadoutData set ["binoculars", _binoculars];
_loadoutData set ["rangefinders", _rangefinders];

_loadoutData set ["traitorUniforms", _traitorUniforms];
_loadoutData set ["traitorVests", _traitorVests];
_loadoutData set ["traitorHats", _traitorHats];
_loadoutData set ["officerUniforms", _officerUniforms];
_loadoutData set ["officerVests", _officerVests];
_loadoutData set ["officerHats", _officerHats];
_loadoutData set ["cloakUniforms", _cloakUniforms];
_loadoutData set ["cloakVests", _cloakVests];

_loadoutData set ["uniforms", _uniforms];
_loadoutData set ["slUniforms", _slUniforms];
_loadoutData set ["vests", _vests];
_loadoutData set ["Hvests", _Hvests];
_loadoutData set ["MGvests", _MGvests];
_loadoutData set ["MEDvests", _MEDvests];
_loadoutData set ["SLvests", _SLvests];
_loadoutData set ["sniVests", _SNIvests];
_loadoutData set ["GLvests", _GLvests];
_loadoutData set ["backpacks", _backpacks];
_loadoutData set ["atBackpacks", _atBackpacks];
_loadoutData set ["longRangeRadios", _longRangeRadios];
_loadoutData set ["helmets", _helmets];
_loadoutData set ["slHat", _slHat];
_loadoutData set ["sniHats", _sniHats];

_loadoutData set ["glasses", _glasses];
_loadoutData set ["goggles", ]_goggles;

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", _rItems];
_loadoutData set ["items_medic_extras", _mItems];
_loadoutData set ["items_grenadier_extras", _gItems];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", _latItems];
_loadoutData set ["items_at_extras", _atItems];
_loadoutData set ["items_aa_extras", _aaItems];
_loadoutData set ["items_machineGunner_extras", _mgItems];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", _pItems];
_loadoutData set ["items_crew_extras", _cItems];
_loadoutData set ["items_unarmed_extras", _uItems];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["slRifles", _sfslRifles];
_sfLoadoutData set ["rifles", _sfrifles];
_sfLoadoutData set ["carbines", _sfcarbines];
_sfLoadoutData set ["grenadeLaunchers", _sfgrenadeLaunchers];
_sfLoadoutData set ["designatedGrenadeLaunchers", _sfdesignatedGrenadeLaunchers];
_sfLoadoutData set ["SMGs", _sfSMGs];
_sfLoadoutData set ["machineGuns", _sfmachineGuns];
_sfLoadoutData set ["marksmanRifles", _sfmarksmanRifles];
_sfLoadoutData set ["sniperRifles", _sfsniperRifles];

_sfLoadoutData set ["lightATLaunchers", _sflightATLaunchers];
_sfLoadoutData set ["lightHELaunchers", _sflightHELaunchers];
_sfLoadoutData set ["ATLaunchers", _sfATLaunchers];
_sfLoadoutData set ["missileATLaunchers", _sfmissleATLaunchers];
_sfLoadoutData set ["AALaunchers", _sfAALaunchers];
_sfLoadoutData set ["sidearms", _sfsidearms];
_sfLoadoutData set ["GLsidearms", _sfGLsidearms];

_sfLoadoutData set ["ATMines", _sfATMines];
_sfLoadoutData set ["APMines", _sfAPMines];
_sfLoadoutData set ["lightExplosives", _sflightExplosives];
_sfLoadoutData set ["heavyExplosives", _sfheavyExplosives];

_sfLoadoutData set ["antiInfantryGrenades", _sfantiInfantryGrenades];
_sfLoadoutData set ["smokeGrenades", _sfsmokeGrenades];
_sfLoadoutData set ["signalsmokeGrenades", _sfsignalsmokeGrenades];

_sfLoadoutData set ["maps", _sfmaps];
_sfLoadoutData set ["watches", _sfwatches];
_sfLoadoutData set ["compasses", _sfcompasses];
_sfLoadoutData set ["radios", _sfradios];
_sfLoadoutData set ["gpses", _sfgpses];
_sfLoadoutData set ["NVGs", _sfNVGs];
_sfLoadoutData set ["binoculars", _sfbinoculars];
_sfLoadoutData set ["rangefinders", _sfrangefinders];

_sfLoadoutData set ["traitorUniforms", _sftraitorUniforms];
_sfLoadoutData set ["traitorVests", _sftraitorVests];
_sfLoadoutData set ["traitorHats", _sftraitorHats];
_sfLoadoutData set ["officerUniforms", _sfofficerUniforms];
_sfLoadoutData set ["officerVests", _sfofficerVests];
_sfLoadoutData set ["officerHats", _sfofficerHats];
_sfLoadoutData set ["cloakUniforms", _sfcloakUniforms];
_sfLoadoutData set ["cloakVests", _sfcloakVests];

_sfLoadoutData set ["uniforms", _sfuniforms];
_sfLoadoutData set ["slUniforms", _sfslUniforms];
_sfLoadoutData set ["vests", _sfvests];
_sfLoadoutData set ["Hvests", _sfHvests];
_sfLoadoutData set ["MGvests", _sfMGvests];
_sfLoadoutData set ["MEDvests", _sfMEDvests];
_sfLoadoutData set ["SLvests", _sfSLvests];
_sfLoadoutData set ["sniVests", _sfSNIvests];
_sfLoadoutData set ["GLvests", _sfGLvests];
_sfLoadoutData set ["backpacks", _sfbackpacks];
_sfLoadoutData set ["atBackpacks", _sfatBackpacks];
_sfLoadoutData set ["longRangeRadios", _sflongRangeRadios];
_sfLoadoutData set ["helmets", _sfhelmets];
_sfLoadoutData set ["slHat", _sfslHat];
_sfLoadoutData set ["sniHats", _sfsniHats];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["slRifles", _eliteslRifles];
_eliteLoadoutData set ["rifles", _eliterifles];
_eliteLoadoutData set ["carbines", _elitecarbines];
_eliteLoadoutData set ["grenadeLaunchers", _elitegrenadeLaunchers];
_eliteLoadoutData set ["designatedGrenadeLaunchers", _elitedesignatedGrenadeLaunchers];
_eliteLoadoutData set ["SMGs", _eliteSMGs];
_eliteLoadoutData set ["machineGuns", _elitemachineGuns];
_eliteLoadoutData set ["marksmanRifles", _elitemarksmanRifles];
_eliteLoadoutData set ["sniperRifles", _elitesniperRifles];

_eliteLoadoutData set ["lightATLaunchers", _elitelightATLaunchers];
_eliteLoadoutData set ["lightHELaunchers", _elitelightHELaunchers];
_eliteLoadoutData set ["ATLaunchers", _eliteATLaunchers];
_eliteLoadoutData set ["missileATLaunchers", _elitemissleATLaunchers];
_eliteLoadoutData set ["AALaunchers", _eliteAALaunchers];
_eliteLoadoutData set ["sidearms", _elitesidearms];
_eliteLoadoutData set ["GLsidearms", _eliteGLsidearms];

_eliteLoadoutData set ["ATMines", _eliteATMines];
_eliteLoadoutData set ["APMines", _eliteAPMines];
_eliteLoadoutData set ["lightExplosives", _elitelightExplosives];
_eliteLoadoutData set ["heavyExplosives", _eliteheavyExplosives];

_eliteLoadoutData set ["antiInfantryGrenades", _eliteantiInfantryGrenades];
_eliteLoadoutData set ["smokeGrenades", _elitesmokeGrenades];
_eliteLoadoutData set ["signalsmokeGrenades", _elitesignalsmokeGrenades];

_eliteLoadoutData set ["maps", _elitemaps];
_eliteLoadoutData set ["watches", _elitewatches];
_eliteLoadoutData set ["compasses", _elitecompasses];
_eliteLoadoutData set ["radios", _eliteradios];
_eliteLoadoutData set ["gpses", _elitegpses];
_eliteLoadoutData set ["NVGs", _eliteNVGs];
_eliteLoadoutData set ["binoculars", _elitebinoculars];
_eliteLoadoutData set ["rangefinders", _eliterangefinders];

_eliteLoadoutData set ["traitorUniforms", _elitetraitorUniforms];
_eliteLoadoutData set ["traitorVests", _elitetraitorVests];
_eliteLoadoutData set ["traitorHats", _elitetraitorHats];
_eliteLoadoutData set ["officerUniforms", _eliteofficerUniforms];
_eliteLoadoutData set ["officerVests", _eliteofficerVests];
_eliteLoadoutData set ["officerHats", _eliteofficerHats];
_eliteLoadoutData set ["cloakUniforms", _elitecloakUniforms];
_eliteLoadoutData set ["cloakVests", _elitecloakVests];

_eliteLoadoutData set ["uniforms", _eliteuniforms];
_eliteLoadoutData set ["slUniforms", _eliteslUniforms];
_eliteLoadoutData set ["vests", _elitevests];
_eliteLoadoutData set ["Hvests", _eliteHvests];
_eliteLoadoutData set ["MGvests", _eliteMGvests];
_eliteLoadoutData set ["MEDvests", _eliteMEDvests];
_eliteLoadoutData set ["SLvests", _eliteSLvests];
_eliteLoadoutData set ["sniVests", _eliteSNIvests];
_eliteLoadoutData set ["GLvests", _eliteGLvests];
_eliteLoadoutData set ["backpacks", _elitebackpacks];
_eliteLoadoutData set ["atBackpacks", _eliteatBackpacks];
_eliteLoadoutData set ["longRangeRadios", _elitelongRangeRadios];
_eliteLoadoutData set ["helmets", _elitehelmets];
_eliteLoadoutData set ["slHat", _eliteslHat];
_eliteLoadoutData set ["sniHats", _elitesniHats];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["slRifles", _militaryslRifles];
_militaryLoadoutData set ["rifles", _militaryrifles];
_militaryLoadoutData set ["carbines", _militarycarbines];
_militaryLoadoutData set ["grenadeLaunchers", _militarygrenadeLaunchers];
_militaryLoadoutData set ["designatedGrenadeLaunchers", _militarydesignatedGrenadeLaunchers];
_militaryLoadoutData set ["SMGs", _militarySMGs];
_militaryLoadoutData set ["machineGuns", _militarymachineGuns];
_militaryLoadoutData set ["marksmanRifles", _militarymarksmanRifles];
_militaryLoadoutData set ["sniperRifles", _militarysniperRifles];

_militaryLoadoutData set ["lightATLaunchers", _militarylightATLaunchers];
_militaryLoadoutData set ["lightHELaunchers", _militarylightHELaunchers];
_militaryLoadoutData set ["ATLaunchers", _militaryATLaunchers];
_militaryLoadoutData set ["missileATLaunchers", _militarymissleATLaunchers];
_militaryLoadoutData set ["AALaunchers", _militaryAALaunchers];
_militaryLoadoutData set ["sidearms", _militarysidearms];
_militaryLoadoutData set ["GLsidearms", _militaryGLsidearms];

_militaryLoadoutData set ["ATMines", _militaryATMines];
_militaryLoadoutData set ["APMines", _militaryAPMines];
_militaryLoadoutData set ["lightExplosives", _militarylightExplosives];
_militaryLoadoutData set ["heavyExplosives", _militaryheavyExplosives];

_militaryLoadoutData set ["antiInfantryGrenades", _militaryantiInfantryGrenades];
_militaryLoadoutData set ["smokeGrenades", _militarysmokeGrenades];
_militaryLoadoutData set ["signalsmokeGrenades", _militarysignalsmokeGrenades];

_militaryLoadoutData set ["maps", _militarymaps];
_militaryLoadoutData set ["watches", _militarywatches];
_militaryLoadoutData set ["compasses", _militarycompasses];
_militaryLoadoutData set ["radios", _militaryradios];
_militaryLoadoutData set ["gpses", _militarygpses];
_militaryLoadoutData set ["NVGs", _militaryNVGs];
_militaryLoadoutData set ["binoculars", _militarybinoculars];
_militaryLoadoutData set ["rangefinders", _militaryrangefinders];

_militaryLoadoutData set ["traitorUniforms", _militarytraitorUniforms];
_militaryLoadoutData set ["traitorVests", _militarytraitorVests];
_militaryLoadoutData set ["traitorHats", _militarytraitorHats];
_militaryLoadoutData set ["officerUniforms", _militaryofficerUniforms];
_militaryLoadoutData set ["officerVests", _militaryofficerVests];
_militaryLoadoutData set ["officerHats", _militaryofficerHats];
_militaryLoadoutData set ["cloakUniforms", _militarycloakUniforms];
_militaryLoadoutData set ["cloakVests", _militarycloakVests];

_militaryLoadoutData set ["uniforms", _militaryuniforms];
_militaryLoadoutData set ["slUniforms", _militaryslUniforms];
_militaryLoadoutData set ["vests", _militaryvests];
_militaryLoadoutData set ["Hvests", _militaryHvests];
_militaryLoadoutData set ["MGvests", _militaryMGvests];
_militaryLoadoutData set ["MEDvests", _militaryMEDvests];
_militaryLoadoutData set ["SLvests", _militarySLvests];
_militaryLoadoutData set ["sniVests", _militarySNIvests];
_militaryLoadoutData set ["GLvests", _militaryGLvests];
_militaryLoadoutData set ["backpacks", _militarybackpacks];
_militaryLoadoutData set ["atBackpacks", _militaryatBackpacks];
_militaryLoadoutData set ["longRangeRadios", _militarylongRangeRadios];
_militaryLoadoutData set ["helmets", _militaryhelmets];
_militaryLoadoutData set ["slHat", _militaryslHat];
_militaryLoadoutData set ["sniHats", _militarysniHats];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", _policeuniforms];
_policeLoadoutData set ["vests", _policevests];
_policeLoadoutData set ["helmets", _policehelmets];
_policeLoadoutData set ["SMGs", _policepoliceWeapons];
_policeLoadoutData set ["sidearms", _policesidearms];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["slRifles", _militiaslRifles];
_militiaLoadoutData set ["rifles", _militiarifles];
_militiaLoadoutData set ["carbines", _militiacarbines];
_militiaLoadoutData set ["grenadeLaunchers", _militiagrenadeLaunchers];
_militiaLoadoutData set ["designatedGrenadeLaunchers", _militiadesignatedGrenadeLaunchers];
_militiaLoadoutData set ["SMGs", _militiaSMGs];
_militiaLoadoutData set ["machineGuns", _militiamachineGuns];
_militiaLoadoutData set ["marksmanRifles", _militiamarksmanRifles];
_militiaLoadoutData set ["sniperRifles", _militiasniperRifles];

_militiaLoadoutData set ["lightATLaunchers", _militialightATLaunchers];
_militiaLoadoutData set ["lightHELaunchers", _militialightHELaunchers];
_militiaLoadoutData set ["ATLaunchers", _militiaATLaunchers];
_militiaLoadoutData set ["missileATLaunchers", _militiamissleATLaunchers];
_militiaLoadoutData set ["AALaunchers", _militiaAALaunchers];
_militiaLoadoutData set ["sidearms", _militiasidearms];
_militiaLoadoutData set ["GLsidearms", _militiaGLsidearms];

_militiaLoadoutData set ["ATMines", _militiaATMines];
_militiaLoadoutData set ["APMines", _militiaAPMines];
_militiaLoadoutData set ["lightExplosives", _militialightExplosives];
_militiaLoadoutData set ["heavyExplosives", _militiaheavyExplosives];

_militiaLoadoutData set ["antiInfantryGrenades", _militiaantiInfantryGrenades];
_militiaLoadoutData set ["smokeGrenades", _militiasmokeGrenades];
_militiaLoadoutData set ["signalsmokeGrenades", _militiasignalsmokeGrenades];

_militiaLoadoutData set ["maps", _militiamaps];
_militiaLoadoutData set ["watches", _militiawatches];
_militiaLoadoutData set ["compasses", _militiacompasses];
_militiaLoadoutData set ["radios", _militiaradios];
_militiaLoadoutData set ["gpses", _militiagpses];
_militiaLoadoutData set ["NVGs", _militiaNVGs];
_militiaLoadoutData set ["binoculars", _militiabinoculars];
_militiaLoadoutData set ["rangefinders", _militiarangefinders];

_militiaLoadoutData set ["traitorUniforms", _militiatraitorUniforms];
_militiaLoadoutData set ["traitorVests", _militiatraitorVests];
_militiaLoadoutData set ["traitorHats", _militiatraitorHats];
_militiaLoadoutData set ["officerUniforms", _militiaofficerUniforms];
_militiaLoadoutData set ["officerVests", _militiaofficerVests];
_militiaLoadoutData set ["officerHats", _militiaofficerHats];
_militiaLoadoutData set ["cloakUniforms", _militiacloakUniforms];
_militiaLoadoutData set ["cloakVests", _militiacloakVests];

_militiaLoadoutData set ["uniforms", _militiauniforms];
_militiaLoadoutData set ["slUniforms", _militiaslUniforms];
_militiaLoadoutData set ["vests", _militiavests];
_militiaLoadoutData set ["Hvests", _militiaHvests];
_militiaLoadoutData set ["MGvests", _militiaMGvests];
_militiaLoadoutData set ["MEDvests", _militiaMEDvests];
_militiaLoadoutData set ["SLvests", _militiaSLvests];
_militiaLoadoutData set ["sniVests", _militiaSNIvests];
_militiaLoadoutData set ["GLvests", _militiaGLvests];
_militiaLoadoutData set ["backpacks", _militiabackpacks];
_militiaLoadoutData set ["atBackpacks", _militiaatBackpacks];
_militiaLoadoutData set ["longRangeRadios", _militialongRangeRadios];
_militiaLoadoutData set ["helmets", _militiahelmets];
_militiaLoadoutData set ["slHat", _militiaslHat];
_militiaLoadoutData set ["sniHats", _militiasniHats];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", _crewuniforms];
_crewLoadoutData set ["vests", _crewvests];
_crewLoadoutData set ["helmets", _crewhelmets];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", _pilotuniforms];
_pilotLoadoutData set ["vests", _pilotvests];
_pilotLoadoutData set ["helmets", _pilothelmets];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
