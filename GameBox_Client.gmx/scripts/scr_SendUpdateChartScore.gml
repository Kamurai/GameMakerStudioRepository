clearbuffer();
writebyte(updatechartscore);

writebyte(Index); //send object roster key

writeshort(Score); //send score

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    