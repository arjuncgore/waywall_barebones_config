-- ==== IMPORTS ====
local waywall = require("waywall")
local helpers = require("waywall.helpers")


-- ==== KEYS ====
local thin = "*-Alt_L"
local tall = "*-F4"
local wide = "*-V"

local toggle_ninbot = "*-apostrophe"
local launch_paceman = "Shift-P"
local fullscreen = "Shift-O"

local remapped_kb = {
    -- ["Q"] = "O",
}


-- ==== SENSITIVITIES ====
local normal_sens = 1
local tall_sens = 0.1


-- ==== PATHS ====
local home_path = os.getenv("HOME") .. "/"
local pacem_path = home_path .. "mcsr/paceman-tracker-0.7.0.jar"
local nb_path = home_path .. "mcsr/Ninjabrain-Bot-1.5.1.jar"
-- local overlay_path = home_path .. "mcsr/measuring_overlay.png"
local overlay_path = home_path .. ".config/waywall/measuring_overlay.png"


-- ==== HELPERS ====
local is_ninb_running = function()
    local handle = io.popen("pgrep -f 'Ninjabrain.*jar'")
    local result = handle:read("*l")
    handle:close()
    return result ~= nil
end
local is_pacem_running = function()
    local handle = io.popen("pgrep -f 'paceman..*'")
    local result = handle:read("*l")
    handle:close()
    return result ~= nil
end


-- ==== MIRRORS + IMAGES ====
-- == THIN ==
helpers.res_mirror( -- e counter
    {
        src = { x = 0, y = 37, w = 85, h = 9 },
        dst = { x = 1130, y = 618, w = 4 * 85, h = 4 * 9 },
    },
    340, 1080
)

-- == TALL ==
helpers.res_mirror( -- e counter
    {
        src = { x = 0, y = 37, w = 85, h = 9 },
        dst = { x = 1130, y = 618, w = 4 * 85, h = 4 * 9 },
    },
    340, 16384
)
helpers.res_mirror( -- pie chart
    {
        src = { x = 0, y = 15958, w = 340, h = 426 },
        dst = { x = 1130, y = 654, w = 340, h = 426 },
    },
    340, 16384
)
helpers.res_mirror( -- measuring window
    {
        src = { x = 155, y = 7902, w = 30, h = 580 },
        dst = { x = 0, y = 370, w = 790, h = 340 },
    },
    340, 16384
)
helpers.res_image( -- measuring overlay
    overlay_path,
    {
        dst = { x = 0, y = 370, w = 790, h = 340 },
    },
    340, 16384
)


-- ==== RESOLUTIONS ====
local resolutions = {
    thin = function()
        helpers.toggle_res(340, 1080)()
    end,

    tall = function()
        helpers.toggle_res(340, 16384, tall_sens)()
    end,

    wide = function()
        helpers.toggle_res(1920, 340)()
    end,
}


-- ==== CONFIG ====
local config = {
    input = {
        layout = "us",
        repeat_rate = 40,
        repeat_delay = 300,
        remaps = remapped_kb,
        sensitivity = normal_sens,
        confine_pointer = false,
    },
    theme = {
        background = "#00000000",
        ninb_anchor = "topright",
        ninb_opacity = 1,
    },
}

config.actions = {

    [thin] = resolutions.thin,
    [tall] = resolutions.tall,
    [wide] = resolutions.wide,

    [toggle_ninbot] = function()
        if not is_ninb_running() then
            waywall.exec("java -Dawt.useSystemAAFontSettings=on -jar " .. nb_path)
            waywall.show_floating(true)
        else
            helpers.toggle_floating()
        end
    end,

    [launch_paceman] = function()
        if not is_pacem_running() then
            waywall.exec("java -jar " .. pacem_path .. " --nogui")
        end
        if is_pacem_running() then
            print("Paceman Running")
        end
    end,

    [fullscreen] = waywall.toggle_fullscreen,
}

return config
