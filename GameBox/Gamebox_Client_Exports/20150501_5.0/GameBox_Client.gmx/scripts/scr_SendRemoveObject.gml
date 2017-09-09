clearbuffer();
writebyte(removeobject);
writebyte(Index); //object roster key

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    
