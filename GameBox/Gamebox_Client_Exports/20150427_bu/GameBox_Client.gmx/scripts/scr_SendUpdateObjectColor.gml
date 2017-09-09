clearbuffer();
writebyte(updateobjectcolor);

writebyte(Index); //send object roster key

writebyte(image_index); //send color

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send to server
    
