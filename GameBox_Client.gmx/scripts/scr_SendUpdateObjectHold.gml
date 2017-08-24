clearbuffer();
writebyte(updateobjecthold);

writebyte(Index); //send object roster key

writeshort(Hold); //send hold

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    