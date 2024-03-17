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

    // when both keys are pressed at the same time the layer variable stays active
    lockLayer(layerName, keyCode1, keyCode2) : {
        conditions: [
            {
                name: layerName,
                type: "variable_unless",
                value: 2,
            },
        ],
        from: {
            simultaneous: [
                { key_code: keyCode1 },
                { key_code: keyCode2 },
            ],
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