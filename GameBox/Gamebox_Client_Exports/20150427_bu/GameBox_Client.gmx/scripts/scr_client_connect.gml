// scr_client_connect("IP");
//obj_Connection.HostIP = "192.168.10.106";
//obj_Connection.HostPort = "25563";
obj_Connection.socket = -1;

//attempt connection to server
obj_Connection.socket = tcpconnect(argument[0],argument[1],true);

//return result of connection attempt
if (obj_Connection.socket < 0) 
    then return false 
else 
    return true;
