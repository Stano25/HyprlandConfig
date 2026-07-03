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
  -- Vynúti nastavenie kurzora na pozadí plochy
  hl.exec_cmd("hyprctl setcursor Nordzy-cursors 24")
end)

---------------
---- INPUT ----
---------------
hl.config({
  input = {
    kb_layout = "sk",
    kb_variant = "",
    -- Ponechané prázdne pre správnu funkčnosť pravého Altu (AltGr)
    kb_options = "",
  },
})

---------------------
---- KEYBINDINGS ----
---------------------

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
