local mapping = (import 'core.jsonnet').mapping;
local shiftMapping = (import 'core.jsonnet').shiftMapping;
local swallow = (import 'core.jsonnet').swallow;
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
        mapping(layerName, "hyphen", "slash", []),
        swallow(layerName, "equal_sign", ["shift"]),
        mapping(layerName, "equal_sign", "equal_sign", ["right_shift"]),
        // 1. letters row
        mapping(layerName, "q", "j", []),
        mapping(layerName, "w", "d",  []),
        mapping(layerName, "e", "u",  []),
        mapping(layerName, "r", "a",  []),
        mapping(layerName, "t", "x",  []),
        mapping(layerName, "y", "p",  []),
        mapping(layerName, "u", "h", []),
        mapping(layerName, "i", "l",  []),
        mapping(layerName, "o", "m",  []),
        mapping(layerName, "p", "w",  []),
        swallow(layerName, "open_bracket", ["shift"]),
        mapping(layerName, "open_bracket", "hyphen", []),
        swallow(layerName, "close_bracket", ["shift"]),
        mapping(layerName, "close_bracket", "equal_sign", []),
        // 2. letters row
        mapping(layerName, "a", "c",  []),
        mapping(layerName, "s", "t",  []),
        mapping(layerName, "d", "i",  []),
        mapping(layerName, "f", "e",  []),
        mapping(layerName, "g", "o",  []),
        mapping(layerName, "h", "b",  []),
        mapping(layerName, "j", "n",  []),
        mapping(layerName, "k", "r",  []),
        mapping(layerName, "l", "s",  []),
        mapping(layerName, "semicolon", "g",  []),
        mapping(layerName, "quote", "q",  []),
        // 3. letters row
        mapping(layerName, "z", "f", []),
        mapping(layerName, "x", "v",  []),
        mapping(layerName, "c", "open_bracket",  []),
        mapping(layerName, "v", "quote",  []),
        mapping(layerName, "b", "semicolon",  []),
        mapping(layerName, "n", "z", []),
        mapping(layerName, "m", "y",  []),
        //shiftMapping(layerName, "comma", "slash", []),
        //mapping(layerName, "comma", "comma",  []),
        //shiftMapping(layerName, "period", "open_bracket", ["right_option"]),
        //mapping(layerName, "period", "period",  []),
        mapping(layerName, "slash", "k",  []),
    ]
}

