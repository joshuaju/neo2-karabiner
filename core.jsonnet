{
    // ignores the key code
    swallow(layerName, keyCode): {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 0,
            },
        ],
        from: {
                key_code: keyCode,
                modifiers: {
                optional: ["any"]
            }
        },
        to: [],
        type: "basic",
    },

    // ignores the key code
    shiftSwallow(layerName, keyCode): {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 0,
            },
        ],
        from: {
                key_code: keyCode,
                modifiers: {
                    mandatory: ["shift"],
                    optional: ["any"]
                }
        },
        to: [],
        type: "basic",
    },

    // maps from a key code to another key code with modifiers
    mapping(layerName, fromKeyCode, toKeyCode, toModifiers): {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 0,
            },
        ],
        from: {
                key_code: fromKeyCode,
                modifiers: {
                optional: ["any"]
            }
        },
        to: [
            {
                key_code: toKeyCode,
                modifiers: toModifiers,
            },
        ],
        type: "basic",
    },

    // only if no modifier is pressed, maps from a key code to another key code with modifiers
    shiftOptMapping(layerName, fromKeyCode, toKeyCode, toModifiers): {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 0,
            },
        ],
        from: {
                key_code: fromKeyCode,
                modifiers: {
                    optional: ["shift"]
                }
        },
        to: [
            {
                key_code: toKeyCode,
                modifiers: toModifiers,
            },
        ],
        type: "basic",
    },


    // only if shift is pressed, maps from a key code to another key code with modifiers
    shiftMapping(layerName, fromKeyCode, toKeyCode, toModifiers): {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 0,
            },
        ],
        from: {
                key_code: fromKeyCode,
                modifiers: {
                    mandatory: ["shift"]
                }            
        },
        to: [
            {
                key_code: toKeyCode,
                modifiers: toModifiers,
            },
        ],
        type: "basic",
    },


    // when all keys are pressed at the same time the layer variable stays active
    lockLayer(layerName, keyCodes) : {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 2,
            },
        ],
        from: {
            simultaneous: std.map(function(keyCode) { key_code: keyCode }, keyCodes)
        },
        to: [
            {
                halt: true,
                set_variable: {
                    name: layerName,
                    value: 2,
            },
            },
        ],
        type: "basic",
    },

    // when all keys are pressed at the same time the layer variable stays active
    unlockLayer(layerName, keyCodes) : {
        conditions: [
            {
                name: layerName,
                type: "variable_if",
                value: 2,
            },
        ],
        from: {
            simultaneous: std.map(function(keyCode) { key_code: keyCode }, keyCodes)
        },
        to: [
            {
                halt: true,
                set_variable: {
                    name: layerName,
                    value: 0,
            },
            },
        ],
        type: "basic",
    },

    // while the key is down the layer variable is active
    toggleLayer(layerName, keyCode) : {
        from: {
            key_code: keyCode,
            modifiers: { optional: ["any"] },
        },
        to: [
            {
                set_variable: {
                    name: layerName,
                    value: 1,
                },
            },
        ],
        to_after_key_up: [
            {
                set_variable: {
                    name: layerName,
                    value: 0,
                },
            },
        ],
        type: "basic",
    }
}