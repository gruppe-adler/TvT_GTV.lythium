class blufor {
    class AllUnits {
        uniform = "";
        backpack = "";
        vest = "";
        primaryWeapon = "";
        primaryWeaponMagazine = "";
        primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
        primaryWeaponPointer = "";
        primaryWeaponUnderbarrel = "";
        primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        secondaryWeaponMuzzle = "";
        secondaryWeaponOptics = "";
        secondaryWeaponPointer = "";
        secondaryWeaponUnderbarrel = "";
        secondaryWeaponUnderbarrelMagazine = "";
        handgunWeapon = "";
        handgunWeaponMagazine = "";
        handgunWeaponMuzzle = "";
        handgunWeaponOptics = "";
        handgunWeaponPointer = "";
        handgunWeaponUnderbarrel = "";
        handgunWeaponUnderbarrelMagazine = "";
        headgear = "";
        goggles = "";
        nvgoggles = "";
        binoculars = "";
        map = "";
        gps = "";
        compass = "";
        watch = "";
        radio = "";
    };


//UN SOLDAT

    class Type {
        class Soldier_F
        {
            uniform = "rhssaf_uniform_m10_digital_desert";
            vest = "LOP_V_6B23_6Sh92_UN";
            backpack = "";
            headgear = "LOP_H_6B27M_UN";
            primaryWeapon = "rhs_weap_g36kv";
            primaryWeaponMagazine = "rhssaf_30rnd_556x45_EPR_G36";
            primaryWeaponOptics = "FHQ_optic_HWS";
            primaryWeaponMuzzle = "rhsusf_acc_SFMB556";
            handgunWeapon = "hgun_Pistol_heavy_01_F";
            handgunWeaponMagazine = "11Rnd_45ACP_Mag";
            handgunWeaponOptics = "optic_MRD";
            binoculars = "Binocular";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "ItemGPS";
            radio = "ItemRadio";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_1("ACE_epinephrine"),
                LIST_8("ACE_morphine"),
                LIST_15("ACE_fieldDressing"),
                LIST_1("ACE_MapTools")
            };
            addItemsToVest[] = {
                LIST_1("rhssaf_mag_brd_m83_red"),
                LIST_1("rhssaf_mag_brd_m83_green"),
                LIST_6("rhssaf_30rnd_556x45_EPR_G36"),
                LIST_1("11Rnd_45ACP_Mag"),
                LIST_1("rhssaf_mag_brd_m83_white"),
                LIST_1("rhssaf_mag_brd_m83_blue")
            };
        };

//UN TL

        class Soldier_TL_F:Soldier_F
        {};

//UN SQL

        class Soldier_SL_F:Soldier_F
        {};

//UN VIP

        class officer_F {
            uniform = "rhssaf_uniform_m10_digital_desert";
            vest = "LOP_V_Carrier_BLK";
            backpack = "";
            headgear = "rhsgref_un_beret";
            binoculars = "Binocular";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "ItemGPS";
            radio = "ItemRadio";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_1("FirstAidKit")
            };
            addItemsToVest[] = {
                LIST_1("rhssaf_mag_brd_m83_red"),
                LIST_1("rhssaf_mag_brd_m83_blue"),
                LIST_1("rhssaf_mag_brd_m83_green")
            };
        };
    };
};





