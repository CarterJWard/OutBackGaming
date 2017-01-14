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
