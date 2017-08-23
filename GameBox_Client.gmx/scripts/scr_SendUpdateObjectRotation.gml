clearbuffer();
writebyte(updateobjectrotation);

writebyte(Index);               //send object roster key

scr_DecodeAlpha();

writeshort(AbsoluteX);          //send x location
writeshort(AbsoluteY);          //send y location
writeshort(depth);              //send depth

writedouble(CurrentAlpha);       //send angle relative to center of room
writedouble(CurrentImageAngle);  //send image angle

sendmessage(obj_Connection.socket, obj_Connection.HostIP, obj_Connection.HostPort); //send name to server