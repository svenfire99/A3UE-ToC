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

["name", "NATO"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "BLUFOR"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "a3\Data_F\Flags\Flag_NATO_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_NATO"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

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

private _SDV = [];
private _DropPod = [];

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

private _animations = [];
private _variants = [];

private _faces = [];
private _voices = [];
private _sfVoices = [];
private _eliteVoices = [];

private _insignia = [];
private _sfInsignia = [];
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

private _sfslRifles = [];
private _sfrifles = [];
private _sfcarbines = [];
private _sfgrenadeLaunchers = [];
private _sfdesignatedGrenadeLaunchers = [];
private _sfSMGs = [];
private _sfmachineGuns = [];
private _sfmarksmanRifles = [];
private _sfsniperRifles = [];
private _sflightATLaunchers = [];
private _sflightHELaunchers = [];
private _sfATLaunchers = [];
private _sfmissleATLaunchers = [];
private _sfAALaunchers = [];
private _sfsidearms = [];
private _sfGLsidearms = [];

private _sfATMines = [];
private _sfAPMines = [];
private _sflightExplosives = [];
private _sfheavyExplosives = [];

private _sfantiInfantryGrenades = [];
private _sfsmokeGrenades = [];
private _sfsignalsmokeGrenades = [];

private _sfmaps = [];
private _sfwatches = [];
private _sfcompasses = [];
private _sfradios = [];
private _sfgpses = [];
private _sfNVGs = [];
private _sfbinoculars = [];
private _sfrangefinders = [];

private _sfuniforms = [];
private _sfslUniforms = [];
private _sfvests = [];
private _sfHvests = [];
private _sfMGvests = [];
private _sfMEDvests = [];
private _sfSLvests = [];
private _sfSNIvests = [];
private _sfGLvests = [];
private _sfbackpacks = [];
private _sfatBackpacks = [];
private _sflongRangeRadios = [];
private _sfhelmets = [];
private _sfslHat = [];
private _sfsniHats = [];
private _sfglasses = [];
private _sfgoggles = [];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteslRifles = [];
private _eliterifles = [];
private _elitecarbines = [];
private _elitegrenadeLaunchers = [];
private _elitedesignatedGrenadeLaunchers = [];
private _eliteSMGs = [];
private _elitemachineGuns = [];
private _elitemarksmanRifles = [];
private _elitesniperRifles = [];
private _elitelightATLaunchers = [];
private _elitelightHELaunchers = [];
private _eliteATLaunchers = [];
private _elitemissleATLaunchers = [];
private _eliteAALaunchers = [];
private _elitesidearms = [];
private _eliteGLsidearms = [];

private _eliteATMines = [];
private _eliteAPMines = [];
private _elitelightExplosives = [];
private _eliteheavyExplosives = [];

private _eliteantiInfantryGrenades = [];
private _elitesmokeGrenades = [];
private _elitesignalsmokeGrenades = [];

private _elitemaps = [];
private _elitewatches = [];
private _elitecompasses = [];
private _eliteradios = [];
private _elitegpses = [];
private _eliteNVGs = [];
private _elitebinoculars = [];
private _eliterangefinders = [];

private _eliteuniforms = [];
private _eliteslUniforms = [];
private _elitevests = [];
private _eliteHvests = [];
private _eliteMGvests = [];
private _eliteMEDvests = [];
private _eliteSLvests = [];
private _eliteSNIvests = [];
private _eliteGLvests = [];
private _elitebackpacks = [];
private _eliteatBackpacks = [];
private _elitelongRangeRadios = [];
private _elitehelmets = [];
private _eliteslHat = [];
private _elitesniHats = [];
private _eliteglasses = [];
private _elitegoggles = [];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryslRifles = [];
private _militaryrifles = [];
private _militarycarbines = [];
private _militarygrenadeLaunchers = [];
private _militarydesignatedGrenadeLaunchers = [];
private _militarySMGs = [];
private _militarymachineGuns = [];
private _militarymarksmanRifles = [];
private _militarysniperRifles = [];
private _militarylightATLaunchers = [];
private _militarylightHELaunchers = [];
private _militaryATLaunchers = [];
private _militarymissleATLaunchers = [];
private _militaryAALaunchers = [];
private _militarysidearms = [];
private _militaryGLsidearms = [];

private _militaryATMines = [];
private _militaryAPMines = [];
private _militarylightExplosives = [];
private _militaryheavyExplosives = [];

private _militaryantiInfantryGrenades = [];
private _militarysmokeGrenades = [];
private _militarysignalsmokeGrenades = [];

private _militarymaps = [];
private _militarywatches = [];
private _militarycompasses = [];
private _militaryradios = [];
private _militarygpses = [];
private _militaryNVGs = [];
private _militarybinoculars = [];
private _militaryrangefinders = [];

private _militaryuniforms = [];
private _militaryslUniforms = [];
private _militaryvests = [];
private _militaryHvests = [];
private _militaryMGvests = [];
private _militaryMEDvests = [];
private _militarySLvests = [];
private _militarySNIvests = [];
private _militaryGLvests = [];
private _militarybackpacks = [];
private _militaryatBackpacks = [];
private _militarylongRangeRadios = [];
private _militaryhelmets = [];
private _militaryslHat = [];
private _militarysniHats = [];
private _militaryglasses = [];
private _militarygoggles = [];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeuniforms = [];
private _policevests = [];
private _policehelmets = [];
private _policepoliceSMGs = [];
private _policesidearms = [];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaslRifles = [];
private _militiarifles = [];
private _militiacarbines = [];
private _militiagrenadeLaunchers = [];
private _militiadesignatedGrenadeLaunchers = [];
private _militiaSMGs = [];
private _militiamachineGuns = [];
private _militiamarksmanRifles = [];
private _militiasniperRifles = [];
private _militialightATLaunchers = [];
private _militialightHELaunchers = [];
private _militiaATLaunchers = [];
private _militiamissleATLaunchers = [];
private _militiaAALaunchers = [];
private _militiasidearms = [];
private _militiaGLsidearms = [];

private _militiaATMines = [];
private _militiaAPMines = [];
private _militialightExplosives = [];
private _militiaheavyExplosives = [];

private _militiaantiInfantryGrenades = [];
private _militiasmokeGrenades = [];
private _militiasignalsmokeGrenades = [];

private _militiamaps = [];
private _militiawatches = [];
private _militiacompasses = [];
private _militiaradios = [];
private _militiagpses = [];
private _militiaNVGs = [];
private _militiabinoculars = [];
private _militiarangefinders = [];

private _militiauniforms = [];
private _militiaslUniforms = [];
private _militiavests = [];
private _militiaHvests = [];
private _militiaMGvests = [];
private _militiaMEDvests = [];
private _militiaSLvests = [];
private _militiaSNIvests = [];
private _militiaGLvests = [];
private _militiabackpacks = [];
private _militiaatBackpacks = [];
private _militialongRangeRadios = [];
private _militiahelmets = [];
private _militiaslHat = [];
private _militiasniHats = [];
private _militiaglasses = [];
private _militiagoggles = [];

/////////////////////////////
//    Misc Loadout Data    //
/////////////////////////////

private _crewuniforms = [];
private _crewvests = [];
private _crewhelmets = [];
private _crewcarbines = [];
private _crewSMGs = [];

private _pilotuniforms = [];
private _pilotvests = [];
private _pilothelmets = [];
private _pilotSMGs = [];


/////////////////////////////////
//    Include Factions here    //
/////////////////////////////////

#include "Vanilla\MIX_AAF.sqf"
#include "Vanilla\MIX_NATO_Arid.sqf"

#include "Vanilla\Vanilla_Vehicle_Attributes.sqf"

// if (isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_usarmy")) then {
//     #include "RHS\MIX_US_Army_D.sqf"
//     #include "RHS\RHS_Vehicle_Attributes.sqf"
// };

//////////////////////////////////
//  End Include Factions here   //
//////////////////////////////////

["vehiclesSDV", _SDV] call _fnc_saveToTemplate;
["vehiclesDropPod", _DropPod] call _fnc_saveToTemplate; 

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

["animations", _animations] call _fnc_saveToTemplate;
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
_loadoutData set ["goggles", _goggles];

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
if (count _sfslRifles > 0) then { _sfLoadoutData set ["slRifles", _sfslRifles]; };
if (count _sfrifles > 0) then { _sfLoadoutData set ["rifles", _sfrifles]; };
if (count _sfcarbines > 0) then { _sfLoadoutData set ["carbines", _sfcarbines]; };
if (count _sfgrenadeLaunchers > 0) then { _sfLoadoutData set ["grenadeLaunchers", _sfgrenadeLaunchers]; };
if (count _sfdesignatedGrenadeLaunchers > 0) then { _sfLoadoutData set ["designatedGrenadeLaunchers", _sfdesignatedGrenadeLaunchers]; };
if (count _sfSMGs > 0) then { _sfLoadoutData set ["SMGs", _sfSMGs]; };
if (count _sfmachineGuns > 0) then { _sfLoadoutData set ["machineGuns", _sfmachineGuns]; };
if (count _sfmarksmanRifles > 0) then { _sfLoadoutData set ["marksmanRifles", _sfmarksmanRifles]; };
if (count _sfsniperRifles > 0) then { _sfLoadoutData set ["sniperRifles", _sfsniperRifles]; };
if (count _sflightATLaunchers > 0) then { _sfLoadoutData set ["lightATLaunchers", _sflightATLaunchers]; };
if (count _sflightHELaunchers > 0) then { _sfLoadoutData set ["lightHELaunchers", _sflightHELaunchers]; };
if (count _sfATLaunchers > 0) then { _sfLoadoutData set ["ATLaunchers", _sfATLaunchers]; };
if (count _sfmissleATLaunchers > 0) then { _sfLoadoutData set ["missileATLaunchers", _sfmissleATLaunchers]; };
if (count _sfAALaunchers > 0) then { _sfLoadoutData set ["AALaunchers", _sfAALaunchers]; };
if (count _sfsidearms > 0) then { _sfLoadoutData set ["sidearms", _sfsidearms]; };
if (count _sfGLsidearms > 0) then { _sfLoadoutData set ["GLsidearms", _sfGLsidearms]; };

if (count _sfATMines > 0) then { _sfLoadoutData set ["ATMines", _sfATMines]; };
if (count _sfAPMines > 0) then { _sfLoadoutData set ["APMines", _sfAPMines]; };
if (count _sflightExplosives > 0) then { _sfLoadoutData set ["lightExplosives", _sflightExplosives]; };
if (count _sfheavyExplosives > 0) then { _sfLoadoutData set ["heavyExplosives", _sfheavyExplosives]; };

if (count _sfantiInfantryGrenades > 0) then { _sfLoadoutData set ["antiInfantryGrenades", _sfantiInfantryGrenades]; };
if (count _sfsmokeGrenades > 0) then { _sfLoadoutData set ["smokeGrenades", _sfsmokeGrenades]; };
if (count _sfsignalsmokeGrenades > 0) then { _sfLoadoutData set ["signalsmokeGrenades", _sfsignalsmokeGrenades]; };

if (count _sfmaps > 0) then { _sfLoadoutData set ["maps", _sfmaps]; };
if (count _sfwatches > 0) then { _sfLoadoutData set ["watches", _sfwatches]; };
if (count _sfcompasses > 0) then { _sfLoadoutData set ["compasses", _sfcompasses]; };
if (count _sfradios > 0) then { _sfLoadoutData set ["radios", _sfradios]; };
if (count _sfgpses > 0) then { _sfLoadoutData set ["gpses", _sfgpses]; };
if (count _sfNVGs > 0) then { _sfLoadoutData set ["NVGs", _sfNVGs]; };
if (count _sfbinoculars > 0) then { _sfLoadoutData set ["binoculars", _sfbinoculars]; };
if (count _sfrangefinders > 0) then { _sfLoadoutData set ["rangefinders", _sfrangefinders]; };

if (count _sfuniforms > 0) then { _sfLoadoutData set ["uniforms", _sfuniforms]; };
if (count _sfslUniforms > 0) then { _sfLoadoutData set ["slUniforms", _sfslUniforms]; };
if (count _sfvests > 0) then { _sfLoadoutData set ["vests", _sfvests]; };
if (count _sfHvests > 0) then { _sfLoadoutData set ["Hvests", _sfHvests]; };
if (count _sfMGvests > 0) then { _sfLoadoutData set ["MGvests", _sfMGvests]; };
if (count _sfMEDvests > 0) then { _sfLoadoutData set ["MEDvests", _sfMEDvests]; };
if (count _sfSLvests > 0) then { _sfLoadoutData set ["SLvests", _sfSLvests]; };
if (count _sfSNIvests > 0) then { _sfLoadoutData set ["sniVests", _sfSNIvests]; };
if (count _sfGLvests > 0) then { _sfLoadoutData set ["GLvests", _sfGLvests]; };
if (count _sfbackpacks > 0) then { _sfLoadoutData set ["backpacks", _sfbackpacks]; };
if (count _sfatBackpacks > 0) then { _sfLoadoutData set ["atBackpacks", _sfatBackpacks]; };
if (count _sflongRangeRadios > 0) then { _sfLoadoutData set ["longRangeRadios", _sflongRangeRadios]; };
if (count _sfhelmets > 0) then { _sfLoadoutData set ["helmets", _sfhelmets]; };
if (count _sfslHat > 0) then { _sfLoadoutData set ["slHat", _sfslHat]; };
if (count _sfsniHats > 0) then { _sfLoadoutData set ["sniHats", _sfsniHats]; };
if (count _sfglasses > 0) then { _sfLoadoutData set ["glasses", _sfglasses]; };
if (count _sfgoggles > 0) then { _sfLoadoutData set ["goggles", _sfgoggles]; };

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
if (count _eliteslRifles > 0) then { _eliteLoadoutData set ["slRifles", _eliteslRifles]; };
if (count _eliterifles > 0) then { _eliteLoadoutData set ["rifles", _eliterifles]; };
if (count _elitecarbines > 0) then { _eliteLoadoutData set ["carbines", _elitecarbines]; };
if (count _elitegrenadeLaunchers > 0) then { _eliteLoadoutData set ["grenadeLaunchers", _elitegrenadeLaunchers]; };
if (count _elitedesignatedGrenadeLaunchers > 0) then { _eliteLoadoutData set ["designatedGrenadeLaunchers", _elitedesignatedGrenadeLaunchers]; };
if (count _eliteSMGs > 0) then { _eliteLoadoutData set ["SMGs", _eliteSMGs]; };
if (count _elitemachineGuns > 0) then { _eliteLoadoutData set ["machineGuns", _elitemachineGuns]; };
if (count _elitemarksmanRifles > 0) then { _eliteLoadoutData set ["marksmanRifles", _elitemarksmanRifles]; };
if (count _elitesniperRifles > 0) then { _eliteLoadoutData set ["sniperRifles", _elitesniperRifles]; };
if (count _elitelightATLaunchers > 0) then { _eliteLoadoutData set ["lightATLaunchers", _elitelightATLaunchers]; };
if (count _elitelightHELaunchers > 0) then { _eliteLoadoutData set ["lightHELaunchers", _elitelightHELaunchers]; };
if (count _eliteATLaunchers > 0) then { _eliteLoadoutData set ["ATLaunchers", _eliteATLaunchers]; };
if (count _elitemissleATLaunchers > 0) then { _eliteLoadoutData set ["missileATLaunchers", _elitemissleATLaunchers]; };
if (count _eliteAALaunchers > 0) then { _eliteLoadoutData set ["AALaunchers", _eliteAALaunchers]; };
if (count _elitesidearms > 0) then { _eliteLoadoutData set ["sidearms", _elitesidearms]; };
if (count _eliteGLsidearms > 0) then { _eliteLoadoutData set ["GLsidearms", _eliteGLsidearms]; };

if (count _eliteATMines > 0) then { _eliteLoadoutData set ["ATMines", _eliteATMines]; };
if (count _eliteAPMines > 0) then { _eliteLoadoutData set ["APMines", _eliteAPMines]; };
if (count _elitelightExplosives > 0) then { _eliteLoadoutData set ["lightExplosives", _elitelightExplosives]; };
if (count _eliteheavyExplosives > 0) then { _eliteLoadoutData set ["heavyExplosives", _eliteheavyExplosives]; };

if (count _eliteantiInfantryGrenades > 0) then { _eliteLoadoutData set ["antiInfantryGrenades", _eliteantiInfantryGrenades]; };
if (count _elitesmokeGrenades > 0) then { _eliteLoadoutData set ["smokeGrenades", _elitesmokeGrenades]; };
if (count _elitesignalsmokeGrenades > 0) then { _eliteLoadoutData set ["signalsmokeGrenades", _elitesignalsmokeGrenades]; };

if (count _elitemaps > 0) then { _eliteLoadoutData set ["maps", _elitemaps]; };
if (count _elitewatches > 0) then { _eliteLoadoutData set ["watches", _elitewatches]; };
if (count _elitecompasses > 0) then { _eliteLoadoutData set ["compasses", _elitecompasses]; };
if (count _eliteradios > 0) then { _eliteLoadoutData set ["radios", _eliteradios]; };
if (count _elitegpses > 0) then { _eliteLoadoutData set ["gpses", _elitegpses]; };
if (count _eliteNVGs > 0) then { _eliteLoadoutData set ["NVGs", _eliteNVGs]; };
if (count _elitebinoculars > 0) then { _eliteLoadoutData set ["binoculars", _elitebinoculars]; };
if (count _eliterangefinders > 0) then { _eliteLoadoutData set ["rangefinders", _eliterangefinders]; };

if (count _eliteuniforms > 0) then { _eliteLoadoutData set ["uniforms", _eliteuniforms]; };
if (count _eliteslUniforms > 0) then { _eliteLoadoutData set ["slUniforms", _eliteslUniforms]; };
if (count _elitevests > 0) then { _eliteLoadoutData set ["vests", _elitevests]; };
if (count _eliteHvests > 0) then { _eliteLoadoutData set ["Hvests", _eliteHvests]; };
if (count _eliteMGvests > 0) then { _eliteLoadoutData set ["MGvests", _eliteMGvests]; };
if (count _eliteMEDvests > 0) then { _eliteLoadoutData set ["MEDvests", _eliteMEDvests]; };
if (count _eliteSLvests > 0) then { _eliteLoadoutData set ["SLvests", _eliteSLvests]; };
if (count _eliteSNIvests > 0) then { _eliteLoadoutData set ["sniVests", _eliteSNIvests]; };
if (count _eliteGLvests > 0) then { _eliteLoadoutData set ["GLvests", _eliteGLvests]; };
if (count _elitebackpacks > 0) then { _eliteLoadoutData set ["backpacks", _elitebackpacks]; };
if (count _eliteatBackpacks > 0) then { _eliteLoadoutData set ["atBackpacks", _eliteatBackpacks]; };
if (count _elitelongRangeRadios > 0) then { _eliteLoadoutData set ["longRangeRadios", _elitelongRangeRadios]; };
if (count _elitehelmets > 0) then { _eliteLoadoutData set ["helmets", _elitehelmets]; };
if (count _eliteslHat > 0) then { _eliteLoadoutData set ["slHat", _eliteslHat]; };
if (count _elitesniHats > 0) then { _eliteLoadoutData set ["sniHats", _elitesniHats]; };
if (count _eliteglasses > 0) then { _eliteLoadoutData set ["glasses", _eliteglasses]; };
if (count _elitegoggles > 0) then { _eliteLoadoutData set ["goggles", _elitegoggles]; };

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
if (count _militaryslRifles > 0) then { _militaryLoadoutData set ["slRifles", _militaryslRifles]; };
if (count _militaryrifles > 0) then { _militaryLoadoutData set ["rifles", _militaryrifles]; };
if (count _militarycarbines > 0) then { _militaryLoadoutData set ["carbines", _militarycarbines]; };
if (count _militarygrenadeLaunchers > 0) then { _militaryLoadoutData set ["grenadeLaunchers", _militarygrenadeLaunchers]; };
if (count _militarydesignatedGrenadeLaunchers > 0) then { _militaryLoadoutData set ["designatedGrenadeLaunchers", _militarydesignatedGrenadeLaunchers]; };
if (count _militarySMGs > 0) then { _militaryLoadoutData set ["SMGs", _militarySMGs]; };
if (count _militarymachineGuns > 0) then { _militaryLoadoutData set ["machineGuns", _militarymachineGuns]; };
if (count _militarymarksmanRifles > 0) then { _militaryLoadoutData set ["marksmanRifles", _militarymarksmanRifles]; };
if (count _militarysniperRifles > 0) then { _militaryLoadoutData set ["sniperRifles", _militarysniperRifles]; };
if (count _militarylightATLaunchers > 0) then { _militaryLoadoutData set ["lightATLaunchers", _militarylightATLaunchers]; };
if (count _militarylightHELaunchers > 0) then { _militaryLoadoutData set ["lightHELaunchers", _militarylightHELaunchers]; };
if (count _militaryATLaunchers > 0) then { _militaryLoadoutData set ["ATLaunchers", _militaryATLaunchers]; };
if (count _militarymissleATLaunchers > 0) then { _militaryLoadoutData set ["missileATLaunchers", _militarymissleATLaunchers]; };
if (count _militaryAALaunchers > 0) then { _militaryLoadoutData set ["AALaunchers", _militaryAALaunchers]; };
if (count _militarysidearms > 0) then { _militaryLoadoutData set ["sidearms", _militarysidearms]; };
if (count _militaryGLsidearms > 0) then { _militaryLoadoutData set ["GLsidearms", _militaryGLsidearms]; };

if (count _militaryATMines > 0) then { _militaryLoadoutData set ["ATMines", _militaryATMines]; };
if (count _militaryAPMines > 0) then { _militaryLoadoutData set ["APMines", _militaryAPMines]; };
if (count _militarylightExplosives > 0) then { _militaryLoadoutData set ["lightExplosives", _militarylightExplosives]; };
if (count _militaryheavyExplosives > 0) then { _militaryLoadoutData set ["heavyExplosives", _militaryheavyExplosives]; };

if (count _militaryantiInfantryGrenades > 0) then { _militaryLoadoutData set ["antiInfantryGrenades", _militaryantiInfantryGrenades]; };
if (count _militarysmokeGrenades > 0) then { _militaryLoadoutData set ["smokeGrenades", _militarysmokeGrenades]; };
if (count _militarysignalsmokeGrenades > 0) then { _militaryLoadoutData set ["signalsmokeGrenades", _militarysignalsmokeGrenades]; };

if (count _militarymaps > 0) then { _militaryLoadoutData set ["maps", _militarymaps]; };
if (count _militarywatches > 0) then { _militaryLoadoutData set ["watches", _militarywatches]; };
if (count _militarycompasses > 0) then { _militaryLoadoutData set ["compasses", _militarycompasses]; };
if (count _militaryradios > 0) then { _militaryLoadoutData set ["radios", _militaryradios]; };
if (count _militarygpses > 0) then { _militaryLoadoutData set ["gpses", _militarygpses]; };
if (count _militaryNVGs > 0) then { _militaryLoadoutData set ["NVGs", _militaryNVGs]; };
if (count _militarybinoculars > 0) then { _militaryLoadoutData set ["binoculars", _militarybinoculars]; };
if (count _militaryrangefinders > 0) then { _militaryLoadoutData set ["rangefinders", _militaryrangefinders]; };

if (count _militaryuniforms > 0) then { _militaryLoadoutData set ["uniforms", _militaryuniforms]; };
if (count _militaryslUniforms > 0) then { _militaryLoadoutData set ["slUniforms", _militaryslUniforms]; };
if (count _militaryvests > 0) then { _militaryLoadoutData set ["vests", _militaryvests]; };
if (count _militaryHvests > 0) then { _militaryLoadoutData set ["Hvests", _militaryHvests]; };
if (count _militaryMGvests > 0) then { _militaryLoadoutData set ["MGvests", _militaryMGvests]; };
if (count _militaryMEDvests > 0) then { _militaryLoadoutData set ["MEDvests", _militaryMEDvests]; };
if (count _militarySLvests > 0) then { _militaryLoadoutData set ["SLvests", _militarySLvests]; };
if (count _militarySNIvests > 0) then { _militaryLoadoutData set ["sniVests", _militarySNIvests]; };
if (count _militaryGLvests > 0) then { _militaryLoadoutData set ["GLvests", _militaryGLvests]; };
if (count _militarybackpacks > 0) then { _militaryLoadoutData set ["backpacks", _militarybackpacks]; };
if (count _militaryatBackpacks > 0) then { _militaryLoadoutData set ["atBackpacks", _militaryatBackpacks]; };
if (count _militarylongRangeRadios > 0) then { _militaryLoadoutData set ["longRangeRadios", _militarylongRangeRadios]; };
if (count _militaryhelmets > 0) then { _militaryLoadoutData set ["helmets", _militaryhelmets]; };
if (count _militaryslHat > 0) then { _militaryLoadoutData set ["slHat", _militaryslHat]; };
if (count _militarysniHats > 0) then { _militaryLoadoutData set ["sniHats", _militarysniHats]; };
if (count _militaryglasses > 0) then { _militaryLoadoutData set ["glasses", _militaryglasses]; };
if (count _militarygoggles > 0) then { _militaryLoadoutData set ["goggles", _militarygoggles]; };

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
if (count _policeuniforms > 0) then { _policeLoadoutData set ["uniforms", _policeuniforms]; };
if (count _policevests > 0) then { _policeLoadoutData set ["vests", _policevests]; };
if (count _policehelmets > 0) then { _policeLoadoutData set ["helmets", _policehelmets]; };
if (count _policepoliceSMGs > 0) then { _policeLoadoutData set ["SMGs", _policepoliceSMGs]; };
if (count _policesidearms > 0) then { _policeLoadoutData set ["sidearms", _policesidearms]; };

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
if (count _militiaslRifles > 0) then { _militiaLoadoutData set ["slRifles", _militiaslRifles]; };
if (count _militiarifles > 0) then { _militiaLoadoutData set ["rifles", _militiarifles]; };
if (count _militiacarbines > 0) then { _militiaLoadoutData set ["carbines", _militiacarbines]; };
if (count _militiagrenadeLaunchers > 0) then { _militiaLoadoutData set ["grenadeLaunchers", _militiagrenadeLaunchers]; };
if (count _militiadesignatedGrenadeLaunchers > 0) then { _militiaLoadoutData set ["designatedGrenadeLaunchers", _militiadesignatedGrenadeLaunchers]; };
if (count _militiaSMGs > 0) then { _militiaLoadoutData set ["SMGs", _militiaSMGs]; };
if (count _militiamachineGuns > 0) then { _militiaLoadoutData set ["machineGuns", _militiamachineGuns]; };
if (count _militiamarksmanRifles > 0) then { _militiaLoadoutData set ["marksmanRifles", _militiamarksmanRifles]; };
if (count _militiasniperRifles > 0) then { _militiaLoadoutData set ["sniperRifles", _militiasniperRifles]; };
if (count _militialightATLaunchers > 0) then { _militiaLoadoutData set ["lightATLaunchers", _militialightATLaunchers]; };
if (count _militialightHELaunchers > 0) then { _militiaLoadoutData set ["lightHELaunchers", _militialightHELaunchers]; };
if (count _militiaATLaunchers > 0) then { _militiaLoadoutData set ["ATLaunchers", _militiaATLaunchers]; };
if (count _militiamissleATLaunchers > 0) then { _militiaLoadoutData set ["missileATLaunchers", _militiamissleATLaunchers]; };
if (count _militiaAALaunchers > 0) then { _militiaLoadoutData set ["AALaunchers", _militiaAALaunchers]; };
if (count _militiasidearms > 0) then { _militiaLoadoutData set ["sidearms", _militiasidearms]; };
if (count _militiaGLsidearms > 0) then { _militiaLoadoutData set ["GLsidearms", _militiaGLsidearms]; };

if (count _militiaATMines > 0) then { _militiaLoadoutData set ["ATMines", _militiaATMines]; };
if (count _militiaAPMines > 0) then { _militiaLoadoutData set ["APMines", _militiaAPMines]; };
if (count _militialightExplosives > 0) then { _militiaLoadoutData set ["lightExplosives", _militialightExplosives]; };
if (count _militiaheavyExplosives > 0) then { _militiaLoadoutData set ["heavyExplosives", _militiaheavyExplosives]; };

if (count _militiaantiInfantryGrenades > 0) then { _militiaLoadoutData set ["antiInfantryGrenades", _militiaantiInfantryGrenades]; };
if (count _militiasmokeGrenades > 0) then { _militiaLoadoutData set ["smokeGrenades", _militiasmokeGrenades]; };
if (count _militiasignalsmokeGrenades > 0) then { _militiaLoadoutData set ["signalsmokeGrenades", _militiasignalsmokeGrenades]; };

if (count _militiamaps > 0) then { _militiaLoadoutData set ["maps", _militiamaps]; };
if (count _militiawatches > 0) then { _militiaLoadoutData set ["watches", _militiawatches]; };
if (count _militiacompasses > 0) then { _militiaLoadoutData set ["compasses", _militiacompasses]; };
if (count _militiaradios > 0) then { _militiaLoadoutData set ["radios", _militiaradios]; };
if (count _militiagpses > 0) then { _militiaLoadoutData set ["gpses", _militiagpses]; };
if (count _militiaNVGs > 0) then { _militiaLoadoutData set ["NVGs", _militiaNVGs]; };
if (count _militiabinoculars > 0) then { _militiaLoadoutData set ["binoculars", _militiabinoculars]; };
if (count _militiarangefinders > 0) then { _militiaLoadoutData set ["rangefinders", _militiarangefinders]; };

if (count _militiauniforms > 0) then { _militiaLoadoutData set ["uniforms", _militiauniforms]; };
if (count _militiaslUniforms > 0) then { _militiaLoadoutData set ["slUniforms", _militiaslUniforms]; };
if (count _militiavests > 0) then { _militiaLoadoutData set ["vests", _militiavests]; };
if (count _militiaHvests > 0) then { _militiaLoadoutData set ["Hvests", _militiaHvests]; };
if (count _militiaMGvests > 0) then { _militiaLoadoutData set ["MGvests", _militiaMGvests]; };
if (count _militiaMEDvests > 0) then { _militiaLoadoutData set ["MEDvests", _militiaMEDvests]; };
if (count _militiaSLvests > 0) then { _militiaLoadoutData set ["SLvests", _militiaSLvests]; };
if (count _militiaSNIvests > 0) then { _militiaLoadoutData set ["sniVests", _militiaSNIvests]; };
if (count _militiaGLvests > 0) then { _militiaLoadoutData set ["GLvests", _militiaGLvests]; };
if (count _militiabackpacks > 0) then { _militiaLoadoutData set ["backpacks", _militiabackpacks]; };
if (count _militiaatBackpacks > 0) then { _militiaLoadoutData set ["atBackpacks", _militiaatBackpacks]; };
if (count _militialongRangeRadios > 0) then { _militiaLoadoutData set ["longRangeRadios", _militialongRangeRadios]; };
if (count _militiahelmets > 0) then { _militiaLoadoutData set ["helmets", _militiahelmets]; };
if (count _militiaslHat > 0) then { _militiaLoadoutData set ["slHat", _militiaslHat]; };
if (count _militiasniHats > 0) then { _militiaLoadoutData set ["sniHats", _militiasniHats]; };
if (count _militiaglasses > 0) then { _militiaLoadoutData set ["glasses", _militiaglasses]; };
if (count _militiagoggles > 0) then { _militiaLoadoutData set ["goggles", _militiagoggles]; };

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
if (count _crewuniforms > 0) then { _crewLoadoutData set ["uniforms", _crewuniforms]; };
if (count _crewvests > 0) then { _crewLoadoutData set ["vests", _crewvests]; };
if (count _crewhelmets > 0) then { _crewLoadoutData set ["helmets", _crewhelmets]; };
if (count _crewcarbines > 0) then { _policeLoadoutData set ["carbines", _crewcarbines]; };
if (count _crewSMGs > 0) then { _policeLoadoutData set ["SMGs", _crewSMGs]; };

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
if (count _pilotuniforms > 0) then { _pilotLoadoutData set ["uniforms", _pilotuniforms]; };
if (count _pilotvests > 0) then { _pilotLoadoutData set ["vests", _pilotvests]; };
if (count _pilothelmets > 0) then { _pilotLoadoutData set ["helmets", _pilothelmets]; };
if (count _pilotSMGs > 0) then { _pilotLoadoutData set ["SMGs", _pilotSMGs]; };

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["SLvests", "Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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

    if (random 1 < 0.15) then {
		[["lightHELaunchers", "lightATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

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
    [["MEDvests", "Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["GLvests", "Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["GLsidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

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
    ["Hvests", "vests"] call _fnc_setVest;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [["MGvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
