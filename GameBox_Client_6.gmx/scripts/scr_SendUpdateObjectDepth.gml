clearbuffer();
writebyte(updateobjectdepth);

writebyte(Index); //send object roster key

writeshort(depth); //send depth

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    