clearbuffer();
writebyte(updatecatanchartscores);

writebyte(Index); //send object roster key

writeshort(Score); //send Victory
writeshort(Gold); //send Gold

writeshort(Trade); //send Trade
writeshort(Politics); //send Politics
writeshort(Building); //send Building


sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server
    
