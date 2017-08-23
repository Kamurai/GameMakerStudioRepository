// scr_client_connect("IP");
global.client_ip = argument0;
global.client_port = 25564;
global.socket = -1;

//attempt connection to server
global.socket = tcpconnect(global.client_ip,global.client_port,true);

//return result of connection attempt
if (global.socket < 0) 
    then return false 
else return true;
