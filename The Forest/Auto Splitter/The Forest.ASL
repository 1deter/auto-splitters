state("TheForest"){}

startup
{
    Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
    vars.Helper.GameName = "The Forest";

    settings.Add("Preferences");

    settings.Add("mealStart", true, "Start timer on plane meal interact", "Preferences");
    settings.Add("velocityStart", false, "Start timer on velocity > 0", "Preferences");
    settings.Add("menuReset", true, "Reset timer when quitting out to main menu", "Preferences");
    settings.Add("endSplits", true, "Split on endgame cutscenes", "Preferences");

    settings.Add("Cave Splits", true);

    //TODO: make cave settings recursive so it's a bit easier to read

    settings.Add("Cave01", true, "Cave 1 - Dead Cave", "Cave Splits");
    settings.Add("Cave01EnterSplit", true, "Split on enter", "Cave01");
    settings.Add("Cave01ExitSplit", true, "Split on exit", "Cave01");

    settings.Add("Cave02", true, "Cave 2 - Hanging Cave", "Cave Splits");
    settings.Add("Cave02EnterSplit", true, "Split on enter", "Cave02");
    settings.Add("Cave02ExitSplit", true, "Split on exit", "Cave02");

    settings.Add("Cave03", true, "Cave 3 - Wet Cave", "Cave Splits");
    settings.Add("Cave03EnterSplit", true, "Split on enter", "Cave03");
    settings.Add("Cave03ExitSplit", true, "Split on exit", "Cave03");

    settings.Add("Cave04", true, "Cave 4 - Baby Cave", "Cave Splits");
    settings.Add("Cave04EnterSplit", true, "Split on enter", "Cave04");
    settings.Add("Cave04ExitSplit", true, "Split on exit", "Cave04");

    settings.Add("Cave05", true, "Cave 5 - Submerged Cave", "Cave Splits");
    settings.Add("Cave05EnterSplit", true, "Split on enter", "Cave05");
    settings.Add("Cave05ExitSplit", true, "Split on exit", "Cave05");

    settings.Add("Cave06", true, "Cave 6 - Lawyer Cave", "Cave Splits");
    settings.Add("Cave06EnterSplit", true, "Split on enter", "Cave06");
    settings.Add("Cave06ExitSplit", true, "Split on exit", "Cave06");

    settings.Add("Cave07", true, "Cave 7 - Chasm Cave", "Cave Splits");
    settings.Add("Cave07EnterSplit", true, "Split on enter", "Cave07");
    settings.Add("Cave07ExitSplit", true, "Split on exit", "Cave07");

    settings.Add("Cave08", true, "Cave 8 - Sinkhole Cave", "Cave Splits");
    settings.Add("Cave08EnterSplit", true, "Split on enter", "Cave08");
    settings.Add("Cave08ExitSplit", true, "Split on exit", "Cave08");

    settings.Add("Cave09", true, "Cave 9 - Ledge Cave", "Cave Splits");
    settings.Add("Cave09EnterSplit", true, "Split on enter", "Cave09");
    settings.Add("Cave09ExitSplit", true, "Split on exit", "Cave09");

    settings.Add("Cave10", true, "Cave 10 - Waterfall Cave", "Cave Splits");
    settings.Add("Cave10EnterSplit", true, "Split on enter", "Cave10");
    settings.Add("Cave10ExitSplit", true, "Split on exit", "Cave10");

    settings.Add("HellCave", true, "Hell Cave", "Cave Splits");
    settings.Add("HellCaveEnterSplit", true, "Split on enter", "HellCave");
    settings.Add("HellCaveExitSplit", true, "Split on exit", "HellCave");

    settings.Add("SnowCave", true, "Snow Cave", "Cave Splits");
    settings.Add("SnowCaveEnterSplit", true, "Split on enter", "SnowCave");
    settings.Add("SnowCaveExitSplit", true, "Split on exit", "SnowCave");

    settings.Add("UnderwaterCave", true, "Underwater Cave 1", "Cave Splits");
    settings.Add("UnderwaterCaveEnterSplit", true, "Split on enter", "UnderwaterCave");
    settings.Add("UnderwaterCaveExitSplit", true, "Split on exit", "UnderwaterCave");

    settings.Add("UnderwaterCave2", true, "Underwater Cave 2", "Cave Splits");
    settings.Add("UnderwaterCave2EnterSplit", true, "Split on enter", "UnderwaterCave2");
    settings.Add("UnderwaterCave2ExitSplit", true, "Split on exit", "UnderwaterCave2");

    settings.Add("UnderwaterCave3", true, "Underwater Cave 3", "Cave Splits");
    settings.Add("UnderwaterCave3EnterSplit", true, "Split on enter", "UnderwaterCave3");
    settings.Add("UnderwaterCave3ExitSplit", true, "Split on exit", "UnderwaterCave3");

    vars.Items = new Dictionary<int, string> 
    {
        { 29, "Bomb" },
        { 31, "Circuit Board" },
        { 33, "Cloth" },
        { 34, "Leaf" },
        { 35, "Lizard Meat" },
        { 36, "Batteries" },
        { 37, "Booze" },
        { 38, "Cash" },
        { 41, "Wrist Watch" },
        { 42, "Feather" },
        { 43, "Flare" },
        { 44, "Flare Gun" },
        { 46, "Head" },
        { 47, "Leg" },
        { 48, "Lighter" },
        { 49, "Meds" },
        { 51, "Flashlight" },
        { 53, "Rock" },
        { 54, "Rope" },
        { 56, "Weak Spear" },
        { 57, "Stick" },
        { 60, "Teeth" },
        { 61, "Cassette Player" },
        { 63, "Pedometer" },
        { 67, "Marigold" },
        { 68, "Herbal Medicine" },
        { 69, "Cassette 1" },
        { 71, "Molotov" },
        { 74, "Survival Guide" },
        { 75, "Fire stick (Torch)" },
        { 76, "Rabbit Meat" },
        { 77, "Live Held Rabbit" },
        { 78, "Log" },
        { 79, "Crafted Bow" },
        { 80, "Plane Axe" },
        { 81, "Tennis Ball" },
        { 82, "Throwable Rock" },
        { 83, "Arrow" },
        { 86, "Rusty Axe" },
        { 87, "Crafted Axe" },
        { 88, "Modern Axe" },
        { 89, "Snack" },
        { 90, "Arm" },
        { 91, "Coins" },
        { 92, "Lizard Skin" },
        { 94, "Skull" },
        { 95, "Crafted Club" },
        { 96, "Club" },
        { 97, "Coneflower" },
        { 98, "Chicory" },
        { 99, "Aloe" },
        { 100, "Energy Mix" },
        { 101, "Head Bomb" },
        { 103, "Aloe Seeds" },
        { 104, "Sap" },
        { 105, "Upgraded Stick" },
        { 106, "Upgraded Rock" },
        { 107, "Flare Gun Ammo" },
        { 108, "Glass" },
        { 109, "Soda" },
        { 110, "Plane Meal" },
        { 112, "Twinberries" },
        { 113, "Snowberries" },
        { 114, "Blueberries" },
        { 115, "Amanita Mushroom" },
        { 116, "Chanterelle Mushroom" },
        { 117, "Cassette 2" },
        { 118, "Cassette 4" },
        { 119, "Cassette 3" },
        { 120, "Cassette 5" },
        { 122, "Walkie-Talkie" },
        { 123, "Meat" },
        { 126, "Deer Skin" },
        { 127, "Fish" },
        { 129, "Rabbit Fur" },
        { 130, "Pouch" },
        { 131, "Blue Paint" },
        { 132, "Orange Paint" },
        { 133, "Broken Toy Head" },
        { 134, "Broken Toy Arms" },
        { 135, "Broken Toy Legs" },
        { 136, "Broken Toy Body" },
        { 137, "Stealth Armor" },
        { 138, "Climbing Axe" },
        { 139, "Map cave 2" },
        { 140, "Crucifix" },
        { 141, "Turtle Shell" },
        { 142, "Old Pot" },
        { 143, "Rebreather" },
        { 144, "Air Canister" },
        { 145, "Waterskin" },
        { 147, "The Practical Caver" },
        { 148, "Yacht Magazine" },
        { 149, "Beneath The Limestone" },
        { 150, "Bible" },
        { 152, "Yacht Picture" },
        { 153, "Photo of Virginia 1" },
        { 154, "Sinkhole Photo" },
        { 155, "Photo of Virginia 2" },
        { 156, "Map Part 1" },
        { 157, "Map Part 2" },
        { 159, "Map Part 4" },
        { 165, "Map Part 3" },
        { 169, "Map Full" },
        { 173, "Compass" },
        { 175, "Dynamite" },
        { 176, "Milk Carton" },
        { 177, "Upgraded Spear" },
        { 178, "Bone" },
        { 179, "Timmy's Toy Full" },
        { 180, "Katana" },
        { 181, "Oyster" },
        { 182, "Polaroid Teddy Bear" },
        { 183, "Siblings Missing Newspaper" },
        { 184, "Tennis Racket" },
        { 185, "Rabbit Head" },
        { 186, "Boar Head" },
        { 187, "Deer Head" },
        { 188, "Crocodile Head" },
        { 189, "Raccoon Head" },
        { 190, "Lizard Head" },
        { 191, "Seagull Head" },
        { 192, "Squirrel Head" },
        { 193, "Tortoise Head" },
        { 194, "Goose Head" },
        { 195, "Shark Head" },
        { 196, "Map" },
        { 197, "Passenger Manifest" },
        { 198, "Metal Tin Tray" },
        { 199, "Snowshoes" },
        { 200, "Quiver" },
        { 201, "Rabbit Fur Boots" },
        { 202, "Fortune" },
        { 203, "The Dark Haired Man Book" },
        { 204, "Bone Armor" },
        { 205, "Coneflower Seeds" },
        { 206, "Blueberry Seeds" },
        { 207, "Small Meat" },
        { 208, "Timmy Drawing" },
        { 209, "Real! Magazine" },
        { 210, "Keycard" },
        { 211, "Blackberries" },
        { 212, "Herbal Medicine+" },
        { 213, "Energy Mix" },
        { 214, "Rock Bag" },
        { 215, "Stick Bag" },
        { 216, "Artifact Sketch 1" },
        { 217, "Artifact Sketch 2" },
        { 218, "Ethical Scientist Magazine" },
        { 219, "Megan Polaroid" },
        { 220, "Photo Cache 1" },
        { 221, "Photo Cache 4" },
        { 222, "Photo Cache 5" },
        { 223, "Photo Cache 6" },
        { 224, "Photo Cache 8" },
        { 225, "Photo Cache 3" },
        { 226, "Photo Cache 2" },
        { 227, "Photo Cache 9" },
        { 229, "Cargo Manifest" },
        { 230, "Flintlock Pistol" },
        { 231, "Old Gun Ammo" },
        { 232, "Flintlock Gun Part 1" },
        { 233, "Flintlock Gun Part 2" },
        { 234, "Flintlock Gun Part 3" },
        { 235, "Flintlock Gun Part 4" },
        { 236, "Flintlock Gun Part 5" },
        { 237, "Flintlock Gun Part 6" },
        { 238, "Flintlock Gun Part 7" },
        { 240, "Paint Brush" },
        { 241, "Flintlock Gun Part 8" },
        { 242, "Keycard 2" },
        { 243, "Restraining order" },
        { 244, "Termination Email" },
        { 245, "Morgue Report" },
        { 246, "Bible Page One" },
        { 247, "Bible Page Two" },
        { 248, "Megan Crayons" },
        { 249, "Obelisk Photo" },
        { 250, "Obelisk Drawing" },
        { 251, "Megan Drawing Flowers" },
        { 252, "Megan Drawing Dad" },
        { 253, "Megan Drawing Unicorn" },
        { 254, "Megan Drawing Dinosaur" },
        { 255, "Plane Email" },
        { 256, "Megan Photo Email" },
        { 257, "Repair Tool" },
        { 258, "Polaroid Keycard 1" },
        { 259, "Polaroid Keycard 2" },
        { 260, "Polaroid Keycard 3" },
        { 261, "Chainsaw" },
        { 262, "Fuel" },
        { 263, "Chainsaw Advertisement" },
        { 265, "Machete" },
        { 267, "Camcorder" },
        { 269, "Camcorder Tape 1" },
        { 270, "Camcorder Tape 3" },
        { 271, "Camcorder Tape 4" },
        { 272, "Camcorder Tape 2" },
        { 273, "Camcorder Tape 6" },
        { 274, "Camcorder Tape 5" },
        { 275, "Puff Mushroom" },
        { 276, "Liberty Cap Mushroom" },
        { 277, "Jack Mushroom" },
        { 278, "Deer Mushroom" },
        { 279, "Modern Bow" },
        { 280, "Electrical Tape" },
        { 281, "Slingshot" },
        { 282, "Throwable Rock Bag" },
        { 283, "Crafted Bow with Torch" },
        { 287, "Modern Bow with Torch" },
        { 288, "Chainsaw with Torch" },
        { 289, "Flintlock Pistol with Torch" },
        { 290, "Spear Bag" },
        { 291, "Hairspray" },
        { 292, "Boar Skin" },
        { 293, "Raccoon Skin" },
        { 294, "Artifact Ball" },
        { 295, "Armsy Head" },
        { 296, "Mutant Baby Head" },
        { 297, "Cowman Head" },
        { 298, "Virginia Head" },
        { 299, "Warmsuit" },
        { 301, "Creepy Armor" },
        { 305, "Artifact Key" },
        { 306, "Crossbow" },
        { 307, "Crossbow bolts" },
        { 308, "Schematic 1" },
        { 309, "Schematic 2" },
        { 310, "Schematic 3" },
        { 311, "Schematic 4" },
    };

    vars.Clothing = new Dictionary<int, string>
    {
        { 1, "Red Beanie" }, // wornclothes = 1, worn items = 1
        { 2, "Blue Beanie" }, // wornclothes = 1, worn items = 2
        { 3, "Green Beanie" }, // wornclothes = 1, worn items = 3
        { 4, "Blue Jeans" }, // wornclothes = 1, worn items = 4
        { 5, "Black Jeans" }, // wornclothes = 1, worn items = 5
        { 6, "Camo Jeans" }, // wornclothes = 1, worn items = 6
        { 7, "Khaki Jeans" }, // wornclothes = 1, worn items = 7
        { 8, "Beige Cargo Pants" }, // wornclothes = 1, worn items = 8
        { 9, "Blacksuit" }, // wornclothes = 1, worn items = 9
        { 10, "Dark Grey Hoodie" }, // wornclothes = 1, worn items = 10
        { 11, "Grey Hoodie" }, // wornclothes = 1, worn items = 11
        { 12, "Green Hoodie" }, // wornclothes = 1, worn items = 12
        { 14, "Jacket" }, // wornclothes = 1, worn items = 14
        { 15, "Leather Jacket" }, // wornclothes = 1, worn items = 15
        { 16, "Closed Shirt" }, // wornclothes = 1, worn items = 16
        { 17, "Open Shirt" }, // wornclothes = 1, worn items = 3
        { 18, "Dark Blue Vest" }, // wornclothes = 1, worn items = 3
        { 19, "Dark Green Vest" }, // wornclothes = 1, worn items = 3
        { 20, "Colorful Vest" }, // wornclothes = 1, worn items = 3
        { 21, "White T-Shirt" }, // wornclothes = 1, worn items = 3
        { 22, "Camo T-Shirt" }, // wornclothes = 1, worn items = 3
        { 23, "Wolf T-Shirt" }, // wornclothes = 1, worn items = 3
        { 24, "Grey T-Shirt" }, // wornclothes = 1, worn items = 3
        { 25, "Blue Button-Up Shirt" }, // wornclothes = 1, worn items = 3
        { 26, "White Button-Up Shirt" }, // wornclothes = 1, worn items = 3
        { 27, "Grey Long Shirt" }, // wornclothes = 1, worn items = 3
        { 28, "Black V-Neck Shirt" }, // wornclothes = 1, worn items = 3
        { 29, "Stewardess Dress" }, // wornclothes = 1, worn items = 3
        { 30, "Bathrobe" }, // wornclothes = 1, worn items = 3
        { 31, "Bathrobe Pants" }, // wornclothes = 1, worn items = 3
        { 32, "Tennis Outfit" }, // wornclothes = 1, worn items = 3
        { 33, "Pilot Uniform" }, // wornclothes = 1, worn items = 3
        { 34, "Old Suit" } // wornclothes = 1, worn items = 3
    };

    settings.Add("Item Splits", false);

    foreach (var item in vars.Items) 
    {
        int id = item.Key;
        string name = item.Value;
        
        string parentId = "itemSplit_" + id;
        settings.Add(parentId, false, "Split on " + name + " pickup (ID: " + id + ")", "Item Splits");

        settings.Add("multiItemSplit_" + id, false, "Split every time amount changes", parentId);
    }

    settings.Add("Clothing Splits", false);

    foreach (var outfit in vars.Clothing) 
    {
        int id = outfit.Key;
        string name = outfit.Value;
        
        settings.Add("clothingSplit_" + id, false, "Split on " + name + " equip (ID: " + id + ")", "Clothing Splits");
    }

    settings.Add("Passenger Splits", false);
    settings.SetToolTip("Passenger Splits", "This is relative to the order in which you discover passengers (found passenger count)");

    for (int counter = 1; counter < 44; counter++)
    {
        settings.Add("passengerSplit_" + counter, false, "Split on passenger " + counter, "Passenger Splits");
    }

}

init
{
    Thread.Sleep(1000); // not really necessary i guess, should prevent erroring

    while (!game.HasExited) // shout out rumii in the tool dev server for this code, i was using just thread.sleep before kekw (i dont know much C#)
    {
        try
        {
            game = Process.GetProcessById(game.Id);
            if (game.Modules.Cast<ProcessModule>().Any(module => string.Equals(module.ModuleName, "fmod.dll"))) break; 
        }
        catch
        {
            Thread.Sleep(100);
        }
    }

    vars.itemTracker = new Dictionary<int, int>();

    vars.equippedClothes = new HashSet<int> {};

    vars.timeSnapshot = 0.0;
    vars.overallSpeed = 0.0;
    vars.horizontalSpeed = 0.0;

    vars.cleared = true;

    vars.Helper.TryLoad = (Func<dynamic, bool>) (mono => {

        vars.Helper["inventory"] = mono.MakeList<IntPtr>("TheForest.Utils.LocalPlayer", "Inventory", "_possessedItems"); // inventory items
        // vars.Helper["inOverlook"] = mono.Make<bool>("TheForest.Utils.LocalPlayer", "IsInOverlookArea"); // if the player is in the "overlook" place with the end buttons
        // vars.Helper["holdingMegan"] = mono.Make<bool>("TheForest.Utils.LocalPlayer", "AnimControl", "holdingGirl");  // if the player is holding megan, might not be useful if using "labCutscene", since it triggers on all of them
        vars.Helper["cave"] = mono.Make<int>("TheForest.Utils.LocalPlayer", "ActiveAreaInfo", "_currentCave"); // player's cave status
        vars.Helper["labCutscene"] = mono.Make<bool>("TheForest.Utils.LocalPlayer", "AnimControl", "endGameCutScene"); // all cutscenes/animations in the endgame.
        // planning to add some more validation for this field as it's too vague and granular control is preferred (but im also a noob).

        vars.Helper["interacting"] = mono.Make<bool>("TheForest.Utils.Input", "DelayedActionIsDown"); // press and hold interaction 
        vars.Helper["interactStart"] = mono.Make<float>("TheForest.Utils.Input", "DelayedActionStartTime"); // press and hold interaction start time, for validation
        vars.Helper["inMenu"] = mono.Make<bool>("TheForest.Utils.Input", "InMenuScene"); // old way of checking in menu, made redundant by FinishGameLoad

        vars.Helper["loaded"] = mono.Make<bool>("TheForest.Utils.Scene", "FinishGameLoad"); // when new save/save game is loaded

        vars.Helper["time"] = mono.Make<float>("WorkScheduler", "CurrentTime"); // current game time

        vars.Helper["loadCounter"] = mono.Make<int>("LevelLoader", "loadingCount"); // amount of game loads, useful for knowing when to restart for mem leak

        // vars.Helper["horizontalSpeed"] = mono.Make<float>("TheForest.Utils.LocalPlayer", "AnimControl", "horizontalSpeed");
        // vars.Helper["verticalSpeed"] = mono.Make<float>("TheForest.Utils.LocalPlayer", "AnimControl", "verticalSpeed"); // these 3 are like animation based speeds, idk
        // vars.Helper["overallSpeed"] = mono.Make<float>("TheForest.Utils.LocalPlayer", "AnimControl", "overallSpeed");

        vars.Helper["wornItemsList"] = mono.MakeList<int>("TheForest.Utils.LocalPlayer", "Clothing", "_wornClothingItems"); // actual useful list of the equipped clothing IDs
        // vars.Helper["wornItemsListFinal"] = mono.MakeList<int>("TheForest.Utils.LocalPlayer", "Clothing", "_wornClothingItemsFinal"); // not sure what the difference is from above
        // vars.Helper["wornClothes"] = mono.Make<int>("TheForest.Utils.LocalPlayer", "Clothing", "_wornClothingItemsCount"); // the amount of clothes on. if 1, then outfit, if 2, then shirt & trousers etc
        // vars.Helper["availableClothes"] = mono.MakeList<int>("TheForest.Utils.LocalPlayer", "Clothing", "_availableClothingOutfits"); // lists available clothes, but only by some weird id(?) unless im enumerating it wrong (probably)
        // maybe add counter of total clothes (?) // .Count of the hashset if you do!!!!

        vars.Helper["foundPassengers"] = mono.Make<int>("TheForest.Utils.LocalPlayer", "PassengerManifest", "_foundPassengersIdsCount"); // probably more useful for tracking
        // vars.Helper["foundPassengersList"] = mono.MakeList<int>("TheForest.Utils.LocalPlayer", "PassengerManifest", "_foundPassengersIds"); // list of found passengers. mapping IDs to passenger seats is too much effort so we just base splits off counter

        vars.Helper["fpCharacter"] = mono.Make<IntPtr>("TheForest.Utils.LocalPlayer", "FpCharacter");

        return true;
    });
}

update
{
    if (!vars.cleared && timer.CurrentPhase == TimerPhase.NotRunning) // !current.loaded && // && vars.itemTracker.Count > 0 && current.inMenu
    {
        print("in the if block (timer not running, vars aren't cleared)");
        foreach (int id in vars.itemTracker.Keys)
        {
            ((IDictionary<string, object>)vars)[id.ToString()] = 0;
        }
        vars.itemTracker.Clear();
        vars.equippedClothes.Clear();
        print("vars cleared");
        vars.cleared = true;
    }
    float XVel = vars.Helper.Read<float>(current.fpCharacter + 0x168);
    float YVel = vars.Helper.Read<float>(current.fpCharacter + 0x16C);
    float ZVel = vars.Helper.Read<float>(current.fpCharacter + 0x170);

    vars.overallSpeed = Math.Truncate(Math.Sqrt(Math.Pow(XVel, 2) + Math.Pow(YVel, 2) + Math.Pow(ZVel, 2)) * 100) / 100; // ((IDictionary<string, object>)vars)["overallSpeed"]
    vars.horizontalSpeed =  Math.Truncate(Math.Sqrt(Math.Pow(XVel, 2) + Math.Pow(ZVel, 2)) * 100) / 100; // ((IDictionary<string, object>)vars)["horizontalSpeed"]
}

start
{
    if (settings["mealStart"])
    {
        if (old.interactStart != current.interactStart)
        {
            print("we detected a new interact start time, snapshotting the igt");
            vars.timeSnapshot = current.time;
        }

        if (current.interacting && current.loaded)
        { 
            print(current.time.ToString() + " " + vars.timeSnapshot.ToString());
            float diff = current.time - vars.timeSnapshot;
            print(diff.ToString());
            print("we have a potentially valid start split, here's the diff");
            return (diff == 0); 
        }
    }

    if (settings["velocityStart"])
    {
        return (current.loaded && vars.overallSpeed > 0.05); // tweak higher/lower to adjust sensitivity
    }
}

split
{
    if (vars.cleared)
    {
        vars.cleared = false;
    }

    if (settings["Item Splits"])
    {
        foreach (IntPtr itemPtr in current.inventory) 
        {
            int itemId = vars.Helper.Read<int>(itemPtr + 0x10);
            if (itemId > 311 || itemId < 29 || itemId == 302) continue;

            int amount = vars.Helper.Read<int>(itemPtr + 0x14);

            bool alreadyTracked = vars.itemTracker.ContainsKey(itemId);

            if (!alreadyTracked)
            {   
                print("We detected a new item entering the itemtracker: " + itemId + " amount: " + amount);
                vars.itemTracker[itemId] = amount;
                ((IDictionary<string, object>)vars)[itemId.ToString()] = amount;

                if (settings["itemSplit_" + itemId] && settings["Item Splits"])
                {
                    print("item splitting is on for new items so setting the newpickup var");
                    return true;
                }
            }
            else
            {
                int oldAmount = vars.itemTracker[itemId];

                if (oldAmount != amount)
                {
                    print(itemId + " changed to amount " + amount);
                    vars.itemTracker[itemId] = amount;
                    ((IDictionary<string, object>)vars)[itemId.ToString()] = amount;
                    if (settings["multiItemSplit_" + itemId] && settings["Item Splits"])
                    {
                        print("Multisplit was enabled so we're splitting");
                        return true;
                    }
                }
            }
        }
    }

    if (settings["Cave Splits"])
    {
        string[] caveNames = new string[] {"Cave01","Cave02","Cave03","Cave04","Cave05","Cave06","Cave07","Cave08","Cave09","Cave10","HellCave","SnowCave","UnderwaterCave","UnderwaterCave2","UnderwaterCave3"};

        for (int id = 0; id < caveNames.Length; id++) 
        {
            string name = caveNames[id];

            if (!settings[name])
            {
                continue;
            }
                
            bool entered = (old.cave == -1 && current.cave == id);
            bool exited  = (old.cave == id && current.cave == -1);

            if ((settings[name + "EnterSplit"] && entered) || (settings[name + "ExitSplit"] && exited)) 
            {
                return true;
            }
        }
    }

    if (settings["Clothing Splits"])
    {
        foreach (int clothingId in current.wornItemsList)
        {
            if (!vars.equippedClothes.Contains(clothingId))
            {
                vars.equippedClothes.Add(clothingId);
                if (settings["clothingSplit_" + clothingId])
                {
                    return true;
                }
            }
        }
    }

    if (settings["Passenger Splits"])
    {
        if (old.foundPassengers != current.foundPassengers && settings["passengerSplit_" + current.foundPassengers])
        {
            return true;
        }
    }

    if (settings["endSplits"]) 
    {
        return (!old.labCutscene && current.labCutscene);
    }
}

reset
{
    if (settings["menuReset"])
    {
        return !current.loaded;
    }
}