clearbuffer();
writebyte(updatecharttitle);

writebyte(Index); //send object roster key

writestring(Title); //send hold

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    