fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

author 'mocha__'
name 'Lightbar Menu'
description 'Custom script using ox_lib'
version '1.0'

client_scripts {
    'client/menus/main.lua',
    'client/zones.lua',
}
shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

files {
    'client/**/*.lua',
}

