clearbuffer();
writebyte(updateobjectrotation);

writebyte(Index);               //send object roster key

scr_DecodeAlpha();

writeshort(AbsoluteX);          //send x location
writeshort(AbsoluteY);          //send y location
writeshort(depth);              //send depth

writeshort(CurrentAlpha);       //send angle relative to center of room
writeshort(CurrentImageAngle);  //send image angle

sendmessage(obj_Connection.socket, obj_Connection.client_ip, obj_Connection.client_port); //send name to server