   switch (readbyte())
    {
        case movement:
            var xx, yy, piece, ID, iD;
            piece=readstring();
            ID=readushort();
            xx=readshort();
            yy=readshort();
            iD=id;
            with(obj_player) 
            {
                if(id!=iD) 
                {
                    clearbuffer();
                    if(isPlayer) 
                        writebyte(movement); 
                    else 
                        writebyte(specmovement);
                    writestring(piece);
                    if(!isPlayer) 
                    {
                        writeushort(iD.myImageSingle);
                    }
                    writeushort(ID);
                    writeshort(xx);
                    writeshort(yy);
                    send_client("self");
                }
            }
            if(piece="obj_pawn") 
            {
            for(i=0;i<instance_number(obj_pawn);i+=1)
                if(ID=instance_find(obj_pawn,i).ID) 
                {
                if(instance_find(obj_pawn,i).image_single=myImageSingle) 
                {
                        with(instance_find(obj_pawn,i)) 
                        {
                            if(other.myImageSingle=1) 
                            {
                                x+=xx*-1;
                                y+=yy*-1;
                            }
                            else 
                            {
                                x+=xx;
                                y+=yy;
                            }
                            if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                instance_destroy();
                        } 
                    }
                }
            }
            else if(piece="obj_knight") 
            {
            for(i=0;i<instance_number(obj_knight);i+=1)
                if(ID=instance_find(obj_knight,i).ID) 
                {
                    if(instance_find(obj_knight,i).image_single=myImageSingle) 
                    {
                        with(instance_find(obj_knight,i)) 
                        {
                            if(other.myImageSingle=1) 
                            {
                                x+=xx*-1;
                                y+=yy*-1;
                            }
                            else {
                                x+=xx;
                                y+=yy;
                            }
                            if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                instance_destroy();
                        }
                    }
                }
            }
            else if(piece="obj_rook") 
            {
            for(i=0;i<instance_number(obj_rook);i+=1)
                if(ID=instance_find(obj_rook,i).ID) 
                {
                    if(instance_find(obj_rook,i).image_single=myImageSingle) 
                    {
                        with(instance_find(obj_rook,i)) 
                        {
                            if(other.myImageSingle=1) 
                            {
                                x+=xx*-1;
                                y+=yy*-1;
                            }
                            else 
                            {
                                x+=xx;
                                y+=yy;
                            }
                            if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                instance_destroy();
                            if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                instance_destroy();
                        }
                    }
                }
            }
            else if(piece="obj_bishop") 
            {
                for(i=0;i<instance_number(obj_bishop);i+=1)
                {
                    if(ID=instance_find(obj_bishop,i).ID) 
                    {
                        if(instance_find(obj_bishop,i).image_single=myImageSingle) 
                        {
                            with(instance_find(obj_bishop,i)) 
                            {
                                if(other.myImageSingle=1) 
                                {
                                    x+=xx*-1;
                                    y+=yy*-1;
                                }
                                else 
                                {
                                    x+=xx;
                                    y+=yy;
                                }
                                if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                    instance_destroy();
                            }
                        }
                    }
                }
            }
            else if(piece="obj_queen") 
            {
                for(i=0;i<instance_number(obj_queen);i+=1)
                {
                    if(ID=instance_find(obj_queen,i).ID) 
                    {
                        if(instance_find(obj_queen,i).image_single=myImageSingle) 
                        {
                            with(instance_find(obj_queen,i)) 
                            {
                                if(other.myImageSingle=1) 
                                {
                                    x+=xx*-1;
                                    y+=yy*-1;
                                }
                                else 
                                {
                                    x+=xx;
                                    y+=yy;
                                }
                                if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                    instance_destroy();
                            }
                        }
                    }
                }
            }
            else if(piece="obj_king") 
            {
                for(i=0;i<instance_number(obj_king);i+=1)
                {
                    if(ID=instance_find(obj_king,i).ID) 
                    {
                        if(instance_find(obj_king,i).image_single=myImageSingle) 
                        {
                            with(instance_find(obj_king,i)) 
                            {
                                if(other.myImageSingle=1) 
                                {
                                    x+=xx*-1;
                                    y+=yy*-1;
                                }
                                else 
                                {
                                    x+=xx;
                                    y+=yy;
                                }
                                if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) 
                                    instance_destroy();
                                if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) 
                                    instance_destroy();
                            }
                        }
                    }
                }
            }
            break;
            
        case setturn:
            clearbuffer();
            writebyte(setturn);
            writebyte(1);
            send_client("others");
            break;
            
        case chat:
            var String, color;
            String=readstring();
            color=readint();
            clearbuffer();
            writebyte(chat);
            writestring(String);
            writeint(color);
            send_client("others");
            break;
            
        case setname: 
            myName=readstring();
            break;
            
        case replay:
            global.chessReplayRequests+=1;
            if(global.chessReplayRequests=2) 
            {
                clearbuffer();
                writebyte(replay);
                send_client("all");
                
                clearbuffer();
                writebyte(setturn);
                writebyte(0);
                send_client("self");
                
                clearbuffer();
                writebyte(setturn);
                writebyte(1);
                for(i=0;i<instance_number(obj_player);i+=1) 
                {
                    if(instance_find(obj_player,i)!=id && instance_find(obj_player,i).gameType=other.gameType && instance_find(obj_player,i).isPlayer)
                        send_client(instance_find(obj_player,i).socket);
                }
                
                global.chessReplayRequests=0;
                scr_clear_pieces();
                scr_reset_pieces();
            }
            break;
            
        case leave:
            if(isPlayer) 
                global.chessReplayRequests=0;
            instance_destroy();
            break;
        
        //No identifier present in the message, so show an error message
        default:
            show_message("Unknown packet received.");
    }
