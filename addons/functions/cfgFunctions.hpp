class CfgFunctions 
{
    //be careful when overwriting functions as version updates can break your extension
    class A3A 
    {
        class CREATE {
            class createAttackForceAir      { file = QPATHTOFOLDER(CREATE\fn_createAttackForceAir.sqf); };
            class createAttackForceMixed    { file = QPATHTOFOLDER(CREATE\fn_createAttackForceMixed.sqf); };
            class createAttackForceOrbital  { file = QPATHTOFOLDER(CREATE\fn_createAttackForceOrbital.sqf); };
            class wavedAttack               { file = QPATHTOFOLDER(CREATE\fn_wavedAttack.sqf); };
        }

        class Supports {
            class createSupport             { file = QPATHTOFOLDER(Supports\fn_createSupport.sqf); };
            class initSupports              { file = QPATHTOFOLDER(Supports\fn_initSupports.sqf); };
            class maxDefenceSpend           { file = QPATHTOFOLDER(Supports\fn_maxDefenceSpend.sqf); };
            class requestArtillery          { file = QPATHTOFOLDER(Supports\fn_requestArtillery.sqf); };
            class requestSupport            { file = QPATHTOFOLDER(Supports\fn_requestSupport.sqf); };
            class SUP_QRFAir                { file = QPATHTOFOLDER(Supports\fn_SUP_QRFAir.sqf); };
            class SUP_QRFAirAvailable       { file = QPATHTOFOLDER(Supports\fn_SUP_QRFAirAvailable.sqf); };
            class SUP_QRFLand               { file = QPATHTOFOLDER(Supports\fn_SUP_QRFLand.sqf); };
            class SUP_QRFLandAvailable      { file = QPATHTOFOLDER(Supports\fn_SUP_QRFLandAvailable.sqf); };
            class SUP_QRFOrbital            { file = QPATHTOFOLDER(Supports\fn_SUP_QRFOrbital.sqf); };
            class SUP_QRFOrbitalAvailable   { file = QPATHTOFOLDER(Supports\fn_SUP_QRFOrbitalAvailable.sqf); };
            class SUP_QRFRoutine            { file = QPATHTOFOLDER(Supports\fn_SUP_QRFRoutine.sqf); };
            class SUP_UAVRoutine            { file = QPATHTOFOLDER(Supports\fn_SUP_UAVRoutine.sqf); };
        }

        class Loadouts {
            class loadout_setBackpack           { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_addEquipment.sqf); };
            class loadout_addEquipment          { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setBackpack.sqf); };
            class loadout_setHelmet             { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setHelmet.sqf); };
            class loadout_setFacewear           { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setFacewear.sqf); };
            class loadout_addItems              { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_addItems.sqf); };
            class loadout_additionalMuzzleMags  { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_additionalMuzzleMags.sqf); };
            class loadout_setUniform            { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setUniform.sqf); };
            class loadout_setVest               { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setVest.sqf); };
            class loadout_setWeapon             { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_setWeapon.sqf); };
            class loadout_builder               { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_builder.sqf); };
            class loadout_createBase            { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_createBase.sqf); };
            class loadout_defaultWeaponMag      { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_defaultWeaponMag.sqf); };
            class loadout_itemLoad              { file = QPATHTOFOLDER(Templates\Loadouts\fn_loadout_itemLoad.sqf); };
        }
    };

    //your own functions should be kept here
    class ADDON
    {
        // class Events 
        // { //these two functions are used to demonstrate use of events
        //     file = QPATHTOFOLDER(Events);
        //     class addExampleEventListener { postInit = 1; };
        //     class AIVehInit {};
        // };
    };
};
