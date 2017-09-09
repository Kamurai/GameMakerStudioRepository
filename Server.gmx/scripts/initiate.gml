//Initialize 39dll
dllinit(false,true,true);
//Initialize MyINI
iniStart(false);
//Start listening on the port 56320 to later accept new players
global.socket=tcplisten(56320,20,1);
