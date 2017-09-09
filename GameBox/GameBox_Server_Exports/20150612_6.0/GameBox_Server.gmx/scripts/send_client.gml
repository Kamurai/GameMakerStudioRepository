//arg0 = which clients we want to send data to: "all","others","self",default

switch (string_lower(argument0))
{
    //Send to all players
    case "all":
        if (instance_exists(obj_Player))
        {
            with (obj_Player)
            {
                sendmessage(socket, 0, obj_Connection.server_port);
            }
        }
    break;
    
    //Send to all players excluding self
    case "others":
        if (instance_exists(obj_Player))
        { 
            with(obj_Player)
            {
                if (id != other.id) //not self
                {
                    sendmessage(socket, 0, obj_Connection.server_port);
                }
            }
        }
 
    break;
    
    //Send to self
    case "self":
        sendmessage(socket, 0, obj_Connection.server_port);
    break;
    
    default:
        sendmessage(socket, 0, obj_Connection.server_port);
}
