clearbuffer();
writebyte(updatecatanchartscores);

writebyte(Index); //send object roster key

writeshort(Victory); //send Victory
writeshort(Gold); //send Gold

writeshort(Trade); //send Trade
writeshort(Politics); //send Politics
writeshort(Building); //send Building


sendmessage(obj_Connection.socket); //send name to server
    
