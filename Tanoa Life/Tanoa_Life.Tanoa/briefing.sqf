waitUntil {!isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["rules","Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/

    player createDiaryRecord ["rules",
        [
            "Rules",
                "
To Be Anounced - It is your responsibility to keep up with the latest rules.<br/><br/>
                "
        ]
    ];
    
    // Controls Section

    player createDiaryRecord ["controls",
        [
            "Police and Medic controls.",
                "
F: Vehicle siren.<br/>
L: Speed radar (police only and weapon is P07 Suppressed).<br/>
Left Shift + L: Activates siren lights.<br/>
Left Shift + R: Restrain (police only).<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "Civilian Controls",
                "
Left Shift + G: Knock out / stun (Weapon required. Used for robbing).<br/>
Spacebar: Place storage container.<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "General Controls",
                "
Y: Open Player Menu.<br/>
U: Lock and unlock vehicles and houses.<br/>
T: Vehicle trunk and house virtual item storage.<br/>
Left Shift + F1: Surrender (hands on head).<br/>
Left Windows: Main interaction key. Used for interacting with objects like vehicles, houses, ATMs, and restrained players. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10.<br/>
Left Shift + H: Holsters the weapon in your hands.<br/>
Left Ctrl + H: Revert holster action.<br/>
Shift + Spacebar: Jump.<br/>
End on the numpad: Put in and take out earplugs.<br/><br/>
                "
        ]
    ];

//General info section

    player createDiaryRecord ["General",
    [
        "Legal Money making",
                "
Mining: Grab yourself a pickaxe and a vehicle and make your way to one of the mineral mines (Rock, Iron, Copper, Oil, Diamond). Then make your way to the corrersponding processer and process your raw minerals (Make sure you have the cash to buy the processer license if you don't already have it). 
Then take your processed materials to the correct trader and sell them.
Delivery Missions : Go to any of the DP markers or the missions shop and get yourself a humanitarain supply mission. Once you have started the mission you will be alerted of the drop point then find the corrersponding marker on the map and make your way there when you deliver the package you will be awarded for your service 
Crop Dusting: To dust crops you will need a small fixed wing aircraft (Ceaser BTT) and also pesticide. make sure you have the pesticide in your inventory. Then get your plane ready to takeoff. right before you takeoff use the scrollwheel menu to start the crop spraying menu you will then be prompted through the rest of the mission
        "
        ]    
    ];