clearbuffer();
writebyte(updatechartscore);

writebyte((argument0).Index); //send object roster key

writeshort((argument0).Score); //send score

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server
    
