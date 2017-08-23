//HowToMakeAnMMORPG.com
//the ultimate resource

//function: initiate the server and create a listening socket

scr_server_init_variables();

//Initiate 39dll and MyINI
dllinit(0,true,true);

//Create a listening socket
global.server_listening_socket = tcplisten(global.server_port,10,true);
