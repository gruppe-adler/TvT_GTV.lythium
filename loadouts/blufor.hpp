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
                LIST_7("rhssaf_30rnd_556x45_EPR_G36"),
                LIST_2("11Rnd_45ACP_Mag")
            };
            addItemsToVest[] = {
                LIST_1("rhssaf_mag_brd_m83_red"),
                LIST_1("rhssaf_mag_brd_m83_blue"),
                LIST_1("rhssaf_mag_brd_m83_green")
            };
        };


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
