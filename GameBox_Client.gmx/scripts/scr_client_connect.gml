// scr_client_connect("IP");
//obj_Connection.client_ip = argument0;
//obj_Connection.client_port = 25563;
obj_Connection.socket = -1;

//attempt connection to server
obj_Connection.socket = tcpconnect(obj_Connection.HostIP,obj_Connection.HostPort,1);

//return result of connection attempt
if (obj_Connection.socket < 0) 
    then return false 
else 
    return true;