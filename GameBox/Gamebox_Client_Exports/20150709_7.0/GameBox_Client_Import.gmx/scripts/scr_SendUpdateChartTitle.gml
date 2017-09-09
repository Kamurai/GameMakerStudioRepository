clearbuffer();
writebyte(updatecharttitle);

writebyte(Index); //send object roster key

writestring(Title); //send hold

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    