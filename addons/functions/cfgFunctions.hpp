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
