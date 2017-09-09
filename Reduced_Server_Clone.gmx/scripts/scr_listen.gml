   switch (readbyte())
    {
            
       case chat:
       //var String, color;
            String=readstring();
            color=readint();
            
            clearbuffer();
            writebyte(chat);
            writestring(String);
            writeint(color);
            send_client("others");
            break;
            
        case setname: 
        //var tempName, tempDog;
            tempName = readstring();
            
            with(obj_Player)
            {
                if(Name == other.tempName)
                {
                    other.Refused = 1;
                }   
            }
        
            if(Refused == 1)
            {
                closesocket(socket);
                instance_destroy();
               // break;
            }
            else
            {        
                obj_Controller.Roster[Index]=tempName;
                Name = tempName;
            }
            break;
            
        case leave:
            instance_destroy();
            break;
        
        //No identifier present in the message, so show an error message
        default:
            show_message("Unknown packet received.");
    }
