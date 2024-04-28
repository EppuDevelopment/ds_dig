fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'DuckScripts'
description 'Simple Dig Script Using OX & ESX'
version '1.0.0'

dependencies {
    'ds_dig'
}

server_scripts {
    'config.lua',
    'server.lua',
}

client_scripts {
    'config.lua',
    'client.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
}