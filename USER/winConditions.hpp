/*  Hier werden Siegbedingungen festgelegt
*   Beispiel:
    class bluforeliminated {
        preset = "ELIMINATION";
        presetParams[] = {"WEST"};

        condition = "";
        checkInterval = 0;

        winners[] = {"EAST","INDEPENDENT"};
        winText = "BLUFOR eliminated after %1 minutes.<br/>OPFOR wins!";
        winTextParams[] = {"round (CBA_missionTime/60)"};
    };
    class opforeliminated {
        preset = "ELIMINATION";
        presetParams[] = {"EAST"};

        condition = "";
        checkInterval = 0;

        winners[] = {"WEST","INDEPENDENT"};
        winText = "OPFOR eliminated after %1 minutes.<br/>BLUFOR wins!";
        winTextParams[] = {"round (CBA_missionTime/60)"};
    };
*/

 class opforeliminated {
    preset = "ELIMINATION";
    presetParams[] = {"EAST"};

    condition = "";
    checkInterval = 0;

    winners[] = {"WEST"};
    winText = "Alle Aufständischen innerhalb von %1 Minuten im Gebiet ausgeschaltet.<br/>UN-Truppen gewinnen!";
    winTextParams[] = {"round (CBA_missionTime/60)"};
    };

class vipeliminated {
    preset = "DESTROY";
    presetParams[] = {"vip"};

    condition = "";
    checkInterval = 0;

    winners[] = {"EAST"};
    winText = "Die Aufständischen haben den VIP nach %1 Minuten erfolgreich eleminiert.<br/>Aufständischen gewinnen!";
    winTextParams[] = {"round (CBA_missionTime/60)"};
    };

class civeliminated {
    preset = "";
    presetParams[] = {};

    condition = "civskilledblufor >= 3";
    checkInterval = 30;

    winners[] = {"EAST"};
    winText = "Die UN-Truppen haben innerhalb von %1 Minuten %2 Zivilisten ermordet. <br/>Aufständischen gewinnen!";
    winTextParams[] = {"round (CBA_missionTime/60)","civskilledblufor"};
    };

/*class Tanklastwagen {
    preset = "";
    presetParams[] = {};

    condition = "triggerActivated tankwagen";
    checkInterval = 1;

    winners[] = {"WEST"};
    winText = "Der UN-General hat die Angehörigen der Bombenopfer besucht.";
    winTextParams[] = {""};
    }; */ 

