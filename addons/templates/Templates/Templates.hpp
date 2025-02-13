class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Base
    {
        description = "";
    };

    // ***************************** 3CB Factions *****************************

    #include "3CBF\templates.hpp"
  
    // ***************************** BWA3 *****************************

    #include "BWA3\templates.hpp"
    
    /*
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    // class Vanilla_AAF_New : Vanilla_Base
    // {
    //     basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
    //     side = "Occ"; // Inv, Occ, Reb, Riv, Civ
    //     flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
    //     name = "A3 AAF (NEW)"; // Name shown in the select menu.
    //     file = "Vanilla_AI_AAF_New"; // The template file name - .sqf, that gets appended automatically.
    //     maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
    //     climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
    //     description = "This is a new template, called the A3 AAF (NEW)!"; // If this isn't included, no description will show (unless inherited from the base class.)
    // };

    /*
        Here we are creating a completely new class that inherits from Vanilla_AAF_New.

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting Vanilla_AAF_New.

        You will see that the only values changed are name and description. These are the only differences. This faction will have the exact same equipment, flag, etc as Vanilla_AAF_New.
    */
    // class Vanilla_AAF_New_InheritanceExample : Vanilla_AAF_New
    // {
    //     name = "A3 AAF (NEW INHERITED)";
    //     description = "This is a new template, called the A3 AAF (NEW INHERITED)!";
    // };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/