clearbuffer();
writebyte(updateobjecthold);

writebyte(Index); //send object roster key

writeshort(Hold); //send hold

sendmessage(obj_Connection.socket); //send name to server
    
