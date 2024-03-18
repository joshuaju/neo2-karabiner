local mapping = (import 'core.jsonnet').mapping;
local swallow = (import 'core.jsonnet').swallow;
local lockLayer = (import 'core.jsonnet').lockLayer;
local toggleLayer = (import 'core.jsonnet').toggleLayer;
local layerName = "neo2_layer4";

{
  description: "Neo2 Layer 4",
  manipulators: [
    // layer toggling
    lockLayer(layerName, ["grave_accent_and_tilde", "right_command"]),
    toggleLayer(layerName, "grave_accent_and_tilde"),
    toggleLayer(layerName, "right_command"),
    // numbers row
    swallow(layerName, "non_us_backslash"),
    swallow(layerName, "1"),
    swallow(layerName, "2"),
    swallow(layerName, "3"),
    swallow(layerName, "4"),
    swallow(layerName, "5"),
    swallow(layerName, "6"),
    swallow(layerName, "7"),
    mapping(layerName, "8", "tab", []),
    mapping(layerName, "9", "keypad_slash", []),
    mapping(layerName, "0", "keypad_asterisk", []),
    mapping(layerName, "hyphen", "keypad_hyphen", []),
    swallow(layerName, "equal_sign"),
    // 1. letters row
    mapping(layerName, "q", "page_up", []),
    mapping(layerName, "w", "delete_or_backspace", []),
    mapping(layerName, "e", "up_arrow", []),
    mapping(layerName, "r", "delete_forward", []),
    mapping(layerName, "t", "page_down",  []),
    swallow(layerName, "y"),
    mapping(layerName, "u", "keypad_7", []),  
    mapping(layerName, "i", "keypad_8", []),
    mapping(layerName, "o", "keypad_9", []),
    mapping(layerName, "p", "keypad_plus", []),
    mapping(layerName, "open_bracket", "slash", ["right_option"]),
    swallow(layerName, "close_bracket"),
    // 2. letters row
    mapping(layerName, "a", "left_arrow", ["left_command"]),
    mapping(layerName, "s", "left_arrow", []),
    mapping(layerName, "d", "down_arrow", []),
    mapping(layerName, "f", "right_arrow", []),
    mapping(layerName, "g", "right_arrow", ["left_command"]),
    swallow(layerName, "h"),
    mapping(layerName, "j", "keypad_4", []),
    mapping(layerName, "k", "keypad_5", []),
    mapping(layerName, "l", "keypad_6", []),
    mapping(layerName, "semicolon", "comma",  []),
    mapping(layerName, "quote", "period",  []),
    // 3. letters row
    mapping(layerName, "z", "escape", []),
    mapping(layerName, "x", "tab", []),
    swallow(layerName, "c"),
    mapping(layerName, "v", "return_or_enter", []),
    mapping(layerName, "b", "b", ["left_command"]),
    mapping(layerName, "n", "period", ["right_shift"]),
    mapping(layerName, "m", "keypad_1", []),
    mapping(layerName, "comma", "keypad_2",  []),
    mapping(layerName, "period", "keypad_3",  []),
    mapping(layerName, "slash", "comma", ["right_shift"]),
    // other keys
    mapping(layerName, "spacebar", "keypad_0", [])
  ],
}