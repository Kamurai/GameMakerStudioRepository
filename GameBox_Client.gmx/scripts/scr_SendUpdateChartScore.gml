clearbuffer();
writebyte(updatechartscore);

writebyte(Index); //send object roster key

writeshort(Score); //send score

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    