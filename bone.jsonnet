local shiftOptMapping = (import 'core.jsonnet').shiftOptMapping;
local shiftMapping = (import 'core.jsonnet').shiftMapping;
local swallow = (import 'core.jsonnet').swallow;
local shiftSwallow = (import 'core.jsonnet').shiftSwallow;
local lockLayer = (import 'core.jsonnet').lockLayer;
local unlockLayer = (import 'core.jsonnet').unlockLayer;
local layerName = "neo2_bone";

{
    description: "Bone",
    manipulators: [
        lockLayer(layerName, ["f", "g", "h", "j"]),
        unlockLayer(layerName, ["f", "g", "h", "j"]),
        
        // numbers row
        //swallow(layerName, "non_us_backslash"),
        //swallow(layerName, "1"),
        //swallow(layerName, "2"),
        //swallow(layerName, "3"),
        //swallow(layerName, "4"),
        //swallow(layerName, "5"),
        //swallow(layerName, "6"),
        //swallow(layerName, "7"),
        //swallow(layerName, "8"),
        //swallow(layerName, "9"),
        //swallow(layerName, "0"),
        shiftMapping(layerName, "hyphen", "hyphen", ["right_shift"]),
        shiftOptMapping(layerName, "hyphen", "slash", []),
        shiftSwallow(layerName, "equal_sign"),
        shiftOptMapping(layerName, "equal_sign", "equal_sign", ["right_shift"]),
        // 1. letters row
        shiftOptMapping(layerName, "q", "j", []),
        shiftOptMapping(layerName, "w", "d",  []),
        shiftOptMapping(layerName, "e", "u",  []),
        shiftOptMapping(layerName, "r", "a",  []),
        shiftOptMapping(layerName, "t", "x",  []),
        shiftOptMapping(layerName, "y", "p",  []),
        shiftOptMapping(layerName, "u", "h", []),
        shiftOptMapping(layerName, "i", "l",  []),
        shiftOptMapping(layerName, "o", "m",  []),
        shiftOptMapping(layerName, "p", "w",  []),
        shiftSwallow(layerName, "open_bracket"),
        shiftOptMapping(layerName, "open_bracket", "hyphen", []),
        shiftSwallow(layerName, "close_bracket"),
        shiftOptMapping(layerName, "close_bracket", "equal_sign", []),
        // 2. letters row
        shiftOptMapping(layerName, "a", "c",  []),
        shiftOptMapping(layerName, "s", "t",  []),
        shiftOptMapping(layerName, "d", "i",  []),
        shiftOptMapping(layerName, "f", "e",  []),
        shiftOptMapping(layerName, "g", "o",  []),
        shiftOptMapping(layerName, "h", "b",  []),
        shiftOptMapping(layerName, "j", "n",  []),
        shiftOptMapping(layerName, "k", "r",  []),
        shiftOptMapping(layerName, "l", "s",  []),
        shiftOptMapping(layerName, "semicolon", "g",  []),
        shiftOptMapping(layerName, "quote", "q",  []),
        // 3. letters row
        shiftOptMapping(layerName, "z", "f", []),
        shiftOptMapping(layerName, "x", "v",  []),
        shiftOptMapping(layerName, "c", "open_bracket",  []),
        shiftOptMapping(layerName, "v", "quote",  []),
        shiftOptMapping(layerName, "b", "semicolon",  []),
        shiftOptMapping(layerName, "n", "z", []),
        shiftOptMapping(layerName, "m", "y",  []),
        shiftMapping(layerName, "comma", "slash", []),
        shiftOptMapping(layerName, "comma", "comma",  []),
        shiftMapping(layerName, "period", "open_bracket", ["right_option"]),
        shiftOptMapping(layerName, "period", "period",  []),
        shiftOptMapping(layerName, "slash", "k",  []),
    ]
}

