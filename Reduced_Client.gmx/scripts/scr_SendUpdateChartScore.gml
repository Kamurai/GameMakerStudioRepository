clearbuffer();
writebyte(updatechartscore);

writebyte(Index); //send object roster key

writeshort(Score); //send score

sendmessage(obj_Connection.socket); //send name to server
    
