local mapping = (import 'core.jsonnet').mapping;
local swallow = (import 'core.jsonnet').swallow;
local lockLayer = (import 'core.jsonnet').lockLayer;
local toggleLayer = (import 'core.jsonnet').toggleLayer;
local layerName = "neo2_layer3";

{
  description: "Neo2 Layer 3",
  manipulators: [
    // layer toggling
    lockLayer(layerName, ["caps_lock", "backslash"]),
    toggleLayer(layerName, "caps_lock"),
    toggleLayer(layerName, "backslash"),
    // numbers row
    swallow(layerName, "non_us_backslash"),
    swallow(layerName, "1"),
    swallow(layerName, "2"),
    swallow(layerName, "3"),
    swallow(layerName, "4"),
    swallow(layerName, "5"),
    swallow(layerName, "6"),
    swallow(layerName, "7"),
    swallow(layerName, "8"),
    swallow(layerName, "9"),
    swallow(layerName, "0"),
    swallow(layerName, "hyphen"),
    swallow(layerName, "equal_sign"),
    // 1. letters row
    mapping(layerName, "q", "period", ["right_option"]),
    mapping(layerName, "w", "slash",  ["right_shift"]),
    mapping(layerName, "e", "5",  ["right_option"]),
    mapping(layerName, "r", "6",  ["right_option"]),
    mapping(layerName, "t", "non_us_backslash",  []),
    mapping(layerName, "y", "1",  ["right_shift"]),
    mapping(layerName, "u", "grave_accent_and_tilde", []),  
    mapping(layerName, "i", "grave_accent_and_tilde",  ["right_shift"]),
    mapping(layerName, "o", "0",  ["right_shift"]),
    mapping(layerName, "p", "6",  ["right_shift"]),
    swallow(layerName, "open_bracket"),
    swallow(layerName, "close_bracket"),
    // 2. letters row
    mapping(layerName, "a", "7",  ["right_option", "right_shift"]),
    mapping(layerName, "s", "7",  ["right_shift"]),
    mapping(layerName, "d", "8",  ["right_option"]),
    mapping(layerName, "f", "9",  ["right_option"]),
    mapping(layerName, "g", "close_bracket",  ["right_shift"]),
    mapping(layerName, "h", "hyphen",  ["right_shift"]),
    mapping(layerName, "j", "8",  ["right_shift"]),
    mapping(layerName, "k", "9",  ["right_shift"]),
    mapping(layerName, "l", "slash",  []),
    mapping(layerName, "semicolon", "period",  ["right_shift"]),
    mapping(layerName, "quote", "l",  ["right_option"]),
    // 3. letters row
    mapping(layerName, "z", "backslash", []),
    mapping(layerName, "x", "4",  ["right_shift"]),
    mapping(layerName, "c", "7",  ["right_option"]),
    mapping(layerName, "v", "n",  ["right_option"]),
    mapping(layerName, "b", "equal_sign",  ["right_shift"]),
    mapping(layerName, "n", "close_bracket", []),
    mapping(layerName, "m", "5",  ["right_shift"]),
    mapping(layerName, "comma", "2",  ["right_shift"]),
    mapping(layerName, "period", "equal_sign",  ["right_option"]),
    mapping(layerName, "slash", "comma",  ["right_shift"]),
  ]
}