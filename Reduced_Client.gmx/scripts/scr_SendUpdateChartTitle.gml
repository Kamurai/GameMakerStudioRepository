clearbuffer();
writebyte(updatecharttitle);

writebyte(Index); //send object roster key

writestring(Title); //send hold

sendmessage(obj_Connection.socket); //send name to server
    
