class Opfor {
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

        // DIGGER
        class Soldier_A_F {
            uniform = "LOP_U_AM_Fatigue_04";
            vest = "rhs_6sh92_vsr_vog";
            backpack = "";
            headgear = "H_ShemagOpen_tan";
            primaryWeapon = "rhs_weap_MP44";
            primaryWeaponMagazine = "rhsgref_30Rnd_792x33_SmE_StG";
            binoculars = "rhssaf_zrak_rd7j";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "ItemGPS";
            radio = "TFAR_fadak";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_7("rhsgref_25Rnd_792x33_SmE_StG")
            };
    	};

        // RECON
        class Soldier_AAR_F {
            uniform = "LOP_U_AM_Fatigue_03";
            vest = "rhs_6sh92_vog";
            backpack = "";
            headgear = "rds_Villager_cap1";
            primaryWeapon = "rhs_weap_aks74u";
            primaryWeaponMagazine = "rhs_30Rnd_545x39_7N6M_AK";
            primaryWeaponMuzzle = "rhs_acc_pgs64_74u";
            handgunWeapon = "rhs_weap_tr8";
            binoculars = "Rangefinder";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "O_UavTerminal";
            radio = "TFAR_fadak";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_4("rhs_30Rnd_545x39_7N6M_AK")
            };
            addItemsToVest[] = {
                LIST_2("rhs_30Rnd_545x39_7N6M_AK")
            };
        };

        // INFILTRATOR
        class support_AMG_F {
            uniform = "LOP_U_TAK_Civ_Fatigue_16";
            vest = "LOP_6sh46";
            backpack = "";
            headgear = "rds_Villager_cap2";
            primaryWeapon = "rhs_weap_m3a1_specops";
            primaryWeaponMagazine = "rhsgref_30rnd_1143x23_M1911B_SMG";
            binoculars = "Binocular";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "ItemGPS";
            radio = "TFAR_fadak";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_3("rhsgref_30rnd_1143x23_M1911B_SMG")
            };
            addItemsToVest[] = {
                LIST_4("rhsgref_30rnd_1143x23_M1911B_SMG")
            };
        };

        // HEAVY
        class support_AMort_F {
            uniform = "LOP_U_AM_Fatigue_04";
            vest = "rhs_6sh92_vsr_vog";
            backpack = "";
            headgear = "H_ShemagOpen_tan";
            primaryWeapon = "rhs_weap_m3a1";
            primaryWeaponMagazine = "rhsgref_30rnd_1143x23_M1911B_SMG";
            secondaryWeapon = "rhs_weap_panzerfaust60";
            secondaryWeaponMagazine = "rhs_panzerfaust60_mag";
            handgunWeapon = "rhs_weap_pb_6p9";
            handgunWeaponMagazine = "rhs_mag_9x18_8_57N181S";
            handgunWeaponMuzzle = "rhs_acc_6p9_suppressor";
            binoculars = "rhssaf_zrak_rd7j";
            map = "ItemMap";
            compass = "ItemCompass";
            watch = "ItemWatch";
            gps = "ItemGPS";
            radio = "TFAR_fadak";
            nvgoggles = "";
            addItemsToUniform[] = {
                LIST_5("rhsgref_30rnd_1143x23_M1911B_SMG"),
                LIST_3("rhs_mag_9x18_8_57N181S")
            };
            addItemsToVest[] = {
                LIST_2("rhsgref_30rnd_1143x23_M1911B_SMG"),
                LIST_1("rhs_panzerfaust60_mag"),
                LIST_3("rhs_mag_9x18_8_57N181S")
            };
		};
	};
};
