fx_version 'adamant'

game 'gta5'

ui_page "web/index.html"

shared_script 'customize.lua'

client_script 'client.lua'

server_script 'server.lua'

files {
  "web/index.html",
  "web/assets/*.*",
}


escrow_ignore { 'customize.lua' }

lua54 'yes'
dependency '/assetpacks'