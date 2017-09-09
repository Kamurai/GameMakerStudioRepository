//arg0 = which clients we want to send data to: "all","others","self",default

switch (string_lower(argument0))
{
    //Send to all players
    case "all":
        if (instance_exists(obj_Player))
        {
            with (obj_Player)
            {
                //sendmessage(socket);
                //sendmessage(socket);//, "192.168.10.100", "25563");
                sendmessage(socket, 0, obj_Connection.server_port);
            }
        }
    break;
    
    //Send to all players excluding self
    case "others":
        if (instance_exists(obj_Player))
        { 
            with(obj_Player) //pivot: problems when more than one player sends their name
            {
                if (id != other.id) //not self
                {
                    //sendmessage(socket);//, "192.168.10.100", "25563");  //pivot: should this be sending more than one socket?
                    sendmessage(socket, 0, obj_Connection.server_port);
                }
            }
        }
 
    break;
    
    //Send to self
    case "self":
        //sendmessage(socket);//, "192.168.10.100", "25563");
        sendmessage(socket, 0, obj_Connection.server_port);
    break;
    
    default:
        //sendmessage(socket);//, "192.168.10.100", "25563");
        sendmessage(socket, 0, obj_Connection.server_port);
}
