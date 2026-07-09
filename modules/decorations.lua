-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 15,

        border_size = 2,

        col = {
            -- Catppuccin Mocha: Lavender (#b4befe) a Mauve (#cba6f7)
            active_border   = { colors = {"0xffb4befe", "0xffcba6f7"}, angle = 45 },
            -- Catppuccin Mocha: Surface0 (#313244)
            inactive_border = "0xff313244",
        },

        resize_on_border = false,

        allow_tearing = false,
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.9,
        inactive_opacity = 0.85,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },

        blur = {
            enabled   = true,
            size      = 6,
            passes    = 2,
            new_optimizations = true,
            ignore_opacity    = true,
            vibrancy  = 0.2,
        },
    },

    animations = {
        enabled = true,
    },

    cursor = {
        no_hardware_cursors = true,
    },
})
