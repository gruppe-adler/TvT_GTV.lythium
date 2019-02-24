class cfgMission {
    canTakeEnemyRadios = 0;                                                     // Können Spieler feindliche Funkgeräte aufsammeln? (0/1)
    canUseScopes = 1;                                                           // Können Spieler vergrößernde Visiere auf allen Waffen benutzen? (0/1) - siehe cfgScopeWeapons.hpp

    vipObjectiveTimeoutDefault = 60;                                            // Zeit in Sekunden, die der VIP in einem Objective stehen muss, um es zu erfüllen. Solange nicht von Funktion überschrieben.
    vipObjectiveTimeoutCancel = 10;                                             // Zeit in Sekunden, die der VIP außerhalb der Objective Zone verbringen kann, bevor die Zeit zurückgesetzt wird.
    vipBaseTaskTimeout = 10;                                                   // Zeit in Sekunden, die der VIP zum Schluss der Mission in seiner Basis verbringen muss, bevor Blufor gewinnt.

    vipObjectiveShotsDetectionRadius = 250;                                     // Entfernung in Metern, in der Opfor-Schüsse zum Taskabbruch führen
    vipObjectiveShotsAmountForCancel = 3;                                       // Anzahl an Schüssen, die Opfor abgeben muss, damit der Task abgebrochen wird.

    civsKilledThreshold = 3;                                                    // Anzahl an durch Blufor getöteten Zivilisten, bei der Opfor das Spiel gewinnt

    diggerTunnelAmount = 3;                                                     // Anzahl an Tunneln, die der Digger bauen kann
    diggerTunnelMinDistToObj = 300;                                             // Mindestabstand zu Zielpunkten, ab der der Digger Tunnel bauen kann

    loadoutFactionBlu = "Blufor";
    loadoutFactionOpf = "Opfor";
};
