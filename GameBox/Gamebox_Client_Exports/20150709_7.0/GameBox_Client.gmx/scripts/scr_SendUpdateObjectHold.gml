clearbuffer();
writebyte(updateobjecthold);

writebyte(Index); //send object roster key

writeshort(Hold); //send hold

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    