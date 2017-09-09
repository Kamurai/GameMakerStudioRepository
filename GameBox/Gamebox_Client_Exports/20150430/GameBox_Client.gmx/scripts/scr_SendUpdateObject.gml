clearbuffer();
writebyte(updateobject);

writebyte(Index); //send object roster key

writeshort(x); //send x location
writeshort(y); //send y location

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    
