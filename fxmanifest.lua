fx_version 'adamant'
games { 'rdr3', 'gta5' }

author 'KnownScripts'
description 'An radial options for qbus'





lua54 'yes'
client_scripts {
    "@PolyZone/client.lua",
    "@PolyZone/BoxZone.lua",
    "@PolyZone/EntityZone.lua",
    "@PolyZone/CircleZone.lua",
    "@PolyZone/ComboZone.lua",
    "config.lua",
    "client_menu.lua",
    "utils.lua",
    "client/stretcher.lua",
    "client/clothing.lua",
    "client/trunk.lua",
    "emotes_triggers.lua",
}

server_scripts {
   "server/stretcher.lua",
   "server/trunk.lua",
   "server/main.lua",
}

shared_script "@ks-garaaz/config.lua"

shared_script "@Framework/imports.lua"

ui_page "html/ui.html"
files {
   "html/ui.html",
   "html/css/RadialMenu.css",
   "html/js/RadialMenu.js",
   'html/css/all.min.css',
   'html/js/all.min.js',
	
}
