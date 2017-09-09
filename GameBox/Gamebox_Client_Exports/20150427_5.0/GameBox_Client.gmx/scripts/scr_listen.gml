   switch (readbyte())
    {
            
       case chat:
            var String, color;
            String=readstring();
            color=readint();
            clearbuffer();
            writebyte(chat);
            writestring(String);
            writeint(color);
            //send_client("others");
            break;
            
        case setname: 
            obj_Controller.Roster[index]=readstring();
            break;
            
        case leave:
            instance_destroy();
            break;
        
        //No identifier present in the message, so show an error message
        default:
            show_message("Unknown packet received.");
    }
