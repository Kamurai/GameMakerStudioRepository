clearbuffer();
writebyte(removeobject);
writebyte(Index); //object roster key

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    