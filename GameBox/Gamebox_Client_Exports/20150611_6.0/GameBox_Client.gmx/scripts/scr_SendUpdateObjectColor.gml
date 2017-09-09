clearbuffer();
writebyte(updateobjectcolor);

writebyte(Index); //send object roster key

writebyte(image_index); //send color

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send to server
    