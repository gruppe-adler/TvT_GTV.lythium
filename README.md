# TvT Guard the VIP
Seit kurzem erschwert das Misstrauen der lokalen Bevölkerung der UN Friedensmission die Arbeit. Ein Funktionär der UN begibt sich auf diplomatische Rundreise durch die umliegenden Dörfer. Eine leichte Eskorte begleitet ihn.

## Ablauf
* Vorbereitungszeit
* Blufor fährt in unbestimmter Reihenfolge die Zielpunkte ab
* VIP muss am Zielpunkt FOLGT Minuten interagieren
* wird Blufor in der Nähe eines Zielpunktes angegriffen, so wird dieser Punkt für Blufor abgebrochen
* sobald alle Punkte abgebrochen/erfüllt sind, muss der VIP wieder in die Basis eskortiert werden

## Siegbedingungen
* Blufor gewinnt, wenn der VIP wieder in der Basis ist, oder alle Opfor eliminiert wurden
* Opfor gewinnt, wenn der VIP stirbt

## Funktionen

### gtv_objectives_fnc_createObjective

* Aus Init-Feld einer GameLogic benutzen, die mit einem Trigger synchronisiert ist.
* Trigger auf "Server only" stellen, sonst keine Einstellungen verändern.
* Trigger gibt die Area vor, in der der VIP stehen muss, um den Task zu erfüllen.

#### Syntax

```sqf
[logic,triggerTimeout,taskTitle,taskDescription,taskType] call gtv_objectives_fnc_createObjective
```

#### Parameter

Parameter       | Erklärung
----------------|-------------------------------------------------------------------------------------------------------------------------------------------
logic           | object - Die Spiellogik, aus deren Init-Feld die Funktion ausgeführt wird (`this`).
triggerTimeout  | number - Zeit in Sekunden, die der VIP im Trigger bleiben muss, um das Objective abzuschließen.
taskTitle       | string - Titel des zugehörigen Blufor Tasks.
taskDescription | string - Beschreibung des zugehörigen Blufor Tasks.
taskType        | string - Type des zugehörigen Blufor Tasks (siehe [Community Wiki](https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Task_types)])
