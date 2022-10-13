fx_version "cerulean"
games { "gta5" }

author "Cuqui"
description "Character Manager"

ui_page "ui/ui.html"
files {
    "ui/*.html",
    "ui/*.css",
    "ui/assets/*.png",
    "ui/assets/*.js"
}

shared_script "_config.lua"

client_scripts {
    "cl_main.lua"
}

server_scripts {
    "sv_main.lua",
    "@mysql-async/lib/MySQL.lua"
}