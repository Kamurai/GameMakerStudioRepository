clearbuffer();
writebyte(updateobjectdepth);

writebyte(Index); //send object roster key

writeshort(depth); //send depth

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    
