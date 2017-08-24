//HowToMakeAnMMORPG.com
//the ultimate resource

//function: initiate global variables

scr_GetMemories();

//Server
obj_Connection.server_port = get_string("Please enter the desired port number", "25563"); //Port to use
obj_Connection.server_listening_socket = -1;

scr_SaveMemories(obj_Connection.server_port);
