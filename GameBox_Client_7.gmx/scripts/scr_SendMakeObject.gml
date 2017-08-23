clearbuffer();
writebyte(makeobject);

writebyte(Index); //object roster key
writebyte(MasterIndex); //object master index

writeshort(x); //x location
writeshort(y); //y location
writeshort(depth); //depth

writeshort(image_index); //color

writeshort(Hold); //Player Index

writedouble(CurrentAlpha);
writedouble(CurrentImageAngle);

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send to server


//If translated Lastx versus translated x or if translated Lasty versus translated y
