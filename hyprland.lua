------------------
---- MONITORS ----
------------------
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

---------------------
---- MY PROGRAMS ----
---------------------
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "hyprlauncher"

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_THEME", "Nordzy-cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Nordzy-cursors")
hl.env("HYPRCURSOR_SIZE", "24")

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprctl setcursor Nordzy-cursors 24")
end)

---------------
---- INPUT ----
---------------
hl.config({
    general = {
            gaps_in  = 5,
            gaps_out = 10,

            border_size = 1,

            col = {
                active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
                inactive_border = "rgba(595959aa)",
            },

            -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
            resize_on_border = false,

            -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
            allow_tearing = false,

            layout = "dwindle",
        },

        decoration = {
            rounding       = 5,
            rounding_power = 2,

            -- Change transparency of focused and unfocused windows
            active_opacity   = 0.9,
            inactive_opacity = 0.9,

            shadow = {
                enabled      = true,
                range        = 4,
                render_power = 3,
                color        = 0xee1a1a1a,
            },

            blur = {
                enabled   = true,
                size      = 3,
                passes    = 1,
                vibrancy  = 0.1696,
            },
        },

        animations = {
            enabled = true,
        },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout = "sk",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})


-- Spúšťanie programov a správa okien
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("ags toggle launcher"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- Bezpečné vypnutie s fallbackom cez hyprctl
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- Myš (Presúvanie a zmena veľkosti okien podržaním SUPER)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
