clearbuffer();
writebyte(makeobject);

writebyte(Index); //object roster key
writebyte(MasterIndex); //object master index

writeshort(x); //x location
writeshort(y); //y location

writeshort(image_index); //color

writeshort(Hold); //Player Index

sendmessage(obj_Connection.socket); //send to server
       