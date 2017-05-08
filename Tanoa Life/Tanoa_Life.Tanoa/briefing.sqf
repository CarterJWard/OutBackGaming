waitUntil {!isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["credits","Credits"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
//player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["forums,","Forums"];

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

    player createDiaryRecord ["credits",
        [
            "ArmaLife",
                "
ArmaLife is a GitHub project which aims to update and keep adding new features to the original 'Altis Life RPG' by Tonic.<br/><br/>
This mission file has been editied by the GIG development team:<br/>
Larry Lancelot - Development Team Leader (Scripting/Map/Server)<br/>
Fresqo - Developer (Scripting)<br/>
ItsJordan - Developer (Scripting)<br/>
Nolan - Developer (Map)<br/>
                "
        ]
    ];

    player createDiaryRecord["changelog",
        [
            "Tanoa Life Change LOG",
                "
The official changelog can be found in ArmaLife github. https://git.io/vVkhe<br/><br/>
v4.4 release 3!<br/>
By: danielstuart14<br/>
Date: 31. May 2016<br/><br/>
v4.4 release 2!<br/>
By: danielstuart14<br/>
Date: 20. March 2016<br/><br/>
v4.4 release 1!<br/>
By: danielstuart14<br/>
Date: 12. February 2016<br/><br/>
v4.3 release 4!<br/>
By: danielstuart14<br/>
Date: 31. January 2016<br/><br/>
v4.3 release 3!<br/>
By: danielstuart14<br/>
Date: Not released<br/><br/>
v4.3 release 2!<br/>
By: danielstuart14<br/>
Date: 22. January 2016<br/><br/>
v4.3 release 1!<br/>
By: danielstuart14<br/>
Date: 19. January 2016<br/><br/>
                "
        ]
    ];

    player createDiaryRecord["changelog",
        [
            "Server Change Log",
                "
Version 1.0<br/><br/>
                "
        ]
    ];

        player createDiaryRecord ["serverrules",
        [
            "ALL RULES",
                "
ALL RULES CAN BE FOUND ON OUR FORUMS @ http://globalinterlinkedgaming.mistforums.com/ and it is your duty to keep up to date with the server rules.<br/>
                "
        ]
    ];
        player createDiaryRecord ["serverrules",
        [
            "Exploits",
                "
These are considered exploits, and you will not be kicked, but banned.<br/><br/>
1. Getting out of jail via any method other than paying bail or escaping via helicopter.<br/>
2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord["safezones",
        [
            "Safe Zones",
                "
If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
Any vehicle spawn (shop or garage)<br/>
Any weapon shop<br/>
All Military HQs<br/>
Guerilla bases<br/><br/>
                "
        ]
    ];


    player createDiaryRecord ["serverrules",
        [
            "Bannable Offenses",
                "
Consider this your one and only warning.<br/><br/>
1. Hacking<br/>
2. Cheating<br/>
3. Exploiting (See 'Exploits')<br/>
4. Being kicked 3 or more times.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Military Interaction",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Civilians can be arrested for looking in mILITARY' backpacks/vehicles. Constantly doing this will result in your removal from the server.<br/>
2. Civilians can be arrested for following MILITARY in game in order to give away their position.<br/>
3. Civilians or Guerillas who take up arms to kill cops in town or elsewhere for no RP reason will be considered RDMing. See RDMing section.<br/>
4. Following and or harassing military for long periods of time will be considered griefing and/or spamming, and will result in your removal from the server.<br/>
5. Actively blocking military from doing their duties can lead to your arrest. Constantly doing this will result in your removal from the server.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Boats",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Repeatedly pushing boats without permission.<br/>
2. Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics.<br/>
3. Purposefully running over swimmers/divers.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Aviation",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Purposefully ramming a helicopter into anything. Other helicopters, vehicles, buildings.<br/>
2. Flying below 150m over the city constantly. Once is illegal, more than that you risk crashing into the city, thus against server rules.<br/>
3. Stealing helicopters without proper warning and significant time for the driver to lock the vehicle. If they land and run away without locking, fine, if they just get out and you get in before they get a chance to lock it, no no.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Vehicles",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Purposefully running people over (VRDM). There are accidents, and then there is going out of your way to run someone over.<br/>
2. Purposefully throwing yourself in front of vehicles in order to die/get hurt.<br/>
3. Ramming into other vehicles in order to cause an explosion.<br/>
4. Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP.<br/>
5. Stealing a vehicle just to crash it or otherwise destroy it.<br/>
6. Purchasing multiple vehicles for the purpose of doing any of the above.<br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Communication Rules",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Side Chat may not be used to play music or otherwise micspam.<br/>
2. Spamming any chat channel will result in your removal.<br/>
4. Teamspeak channels are split up into areas for a reason. Military must be in the respective channels at all times.<br/>
5. Civilians cannot be in any military channels on teamspeak in order to gather information on their location or movements. Civs caught doing this will be removed the channel. Repeat offenders can be kicked or banned from both the game and teamspeak.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Random Deathmatching (RDM)",
                "
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. Killing anyone without a roleplay cause.<br/>
2. If you are killed in the crossfire of a fight, it is not RDM.<br/>
3. Killing someone in an attempt to protect yourself or others is not RDMing.<br/>
4. Shooting a player without giving reasonable time to follow demands is considered RDM.<br/>
5.All RDM Rules are void when in a KOS Zone<br/><br/>
These are all judged by admins on a case by case basis.<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["serverrules",
        [
            "New Life Rule",
                "
The New Life Rule applies to police and civilians.<br/><br/>
Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
1. If you are killed you must wait 15 minutes before returning to the scene of your death.<br/>
2. If you die during roleplay your past crimes are forgotten, but you also cannot seek revenge.<br/>
3. If you are RDM'd, it is not a new life.<br/>
4. If you manually respawn, it is not a new life.<br/>
5. If you purposefully kill yourself to avoid roleplay, it is not a new life.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Don't Be A Dick!",
                "
If an admin has to tell you that you are being a dick, you are doing dickish things.<br/>
Causing others grief, disrupting roleplay, the list goes on.<br/>
Just don't be a dick okay?<br/>
This rule may be invoked at an admin's discretion.<br/><br/>
                "
        ]
    ];

// Police Section
    player createDiaryRecord ["policerules",
        [
            "The Federal Reserve",
                "
1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
4. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
5. Any civilian who actively makes an attempt to block the military from entering the building may be treated as an accomplice and will be shot.<br/>
                "
        ]
    ];
    player createDiaryRecord ["policerules",
        [
            "TeamSpeak Rule",
                "
1. All military must be on TeamSpeak 3 in a designated military channel. Failure to be on TeamSpeak during an admin check will result in your immediate dismissal from the server.<br/>
2. Please join TeamSpeak BEFORE you spawn in as military, heck, join TeamSpeak before you even join the server.<br/><br/>
                "
        ]
    ];

// Controls Section

    player createDiaryRecord ["controls",
        [
            "Military and medic controls",
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
            "Civilian controls",
                "
Left Shift + G: Knock out / stun (Weapon required. Used for robbing).<br/>
Spacebar: Place storage container.<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "General controls",
                "
Y: Open Player Menu.<br/>
U: Lock and unlock vehicles and houses.<br/>
T: Vehicle trunk and house virtual item storage.<br/>
Left Shift + B: Surrender (hands on head).<br/>
Left Windows: Main interaction key. Used for interacting with objects like vehicles, houses, ATMs, and restrained players. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10.<br/>
Left Shift + H: Holsters the weapon in your hands.<br/>
Left Ctrl + H: Revert holster action.<br/>
Shift + Spacebar: Jump.<br/>
Left Shift + O: (un)fade sound (ear plugs).<br/>
End: Basic Earplugs<br/>
Tab: Surrender<br/>
Windows Key: Interact/Pick/Mine<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["forums",
        [   
            "Forums",
            "
            All Rules can be found at http://globalinterlinkedgaming.mistforums.com/<br/><br/>
            Also Visit our teamspeak 221.121.157.130:9991<br/>
            "
        ]
    ];