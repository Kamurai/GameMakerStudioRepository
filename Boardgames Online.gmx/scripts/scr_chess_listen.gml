var size;

//receive packet/message from server
size = receivemessage(global.socket);
if(size < 0) exit; //no packet received
if(size > 0) { //packet received, process it
    switch(readbyte()) {
        case movement:
            switch(readstring()) {
                case "obj_pawn":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_pawn);i+=1)
                        if(ID=instance_find(obj_pawn,i).ID) {
                            if(instance_find(obj_pawn,i).image_single=1) {
                                with(instance_find(obj_pawn,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
                
                case "obj_knight":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_knight);i+=1)
                        if(ID=instance_find(obj_knight,i).ID) {
                            if(instance_find(obj_knight,i).image_single=1) {
                                with(instance_find(obj_knight,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
                    
                case "obj_rook":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_rook);i+=1)
                        if(ID=instance_find(obj_rook,i).ID) {
                            if(instance_find(obj_rook,i).image_single=1) {
                                with(instance_find(obj_rook,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
                    
                case "obj_bishop":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_bishop);i+=1)
                        if(ID=instance_find(obj_bishop,i).ID) {
                            if(instance_find(obj_bishop,i).image_single=1) {
                                with(instance_find(obj_bishop,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
                    
                case "obj_queen":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_queen);i+=1)
                        if(ID=instance_find(obj_queen,i).ID) {
                            if(instance_find(obj_queen,i).image_single=1) {
                                with(instance_find(obj_queen,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
                    
                case "obj_king":
                    var ID;
                    ID=readushort();
                    for(i=0;i<instance_number(obj_king);i+=1)
                        if(ID=instance_find(obj_king,i).ID) {
                            if(instance_find(obj_king,i).image_single=1) {
                                with(instance_find(obj_king,i)) {
                                    x+=readshort()*-1;
                                    y+=readshort()*-1;
                                    if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                    if(collision_point(x,y,obj_king,0,1)) {
                                        with(collision_point(x,y,obj_king,0,1)) { x=30; y=420; while(collision_point(x,y,all,0,1)) x+=20; }
                                        obj_button_playagain.visible=1;
                                    }
                                    with(obj_cell) event_user(0);
                                    global.lastMoveStartX=xprevious;
                                    global.lastMoveStartY=yprevious;
                                    global.lastMoveEndX=x;
                                    global.lastMoveEndY=y;
                                }
                            }
                        }
                    break;
            }
            break;
            
        case specmovement:
            switch(readstring()) {
                case "obj_pawn":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_pawn);i+=1)
                if(ID=instance_find(obj_pawn,i).ID) {
                if(instance_find(obj_pawn,i).image_single=myImageSingle) {
                    with(instance_find(obj_pawn,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    } 
                }
                }
                break;
                
                case "obj_rook":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_rook);i+=1)
                if(ID=instance_find(obj_rook,i).ID) {
                if(instance_find(obj_rook,i).image_single=myImageSingle) {
                    with(instance_find(obj_rook,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    }
                }
                }
                break;
                
                case "obj_knight":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_knight);i+=1)
                if(ID=instance_find(obj_knight,i).ID) {
                if(instance_find(obj_knight,i).image_single=myImageSingle) {
                    with(instance_find(obj_knight,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    }
                }
                }
                break;
                
                case "obj_bishop":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_bishop);i+=1)
                if(ID=instance_find(obj_bishop,i).ID) {
                if(instance_find(obj_bishop,i).image_single=myImageSingle) {
                    with(instance_find(obj_bishop,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    }
                }
                }
                break;
                
                case "obj_queen":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_queen);i+=1)
                if(ID=instance_find(obj_queen,i).ID) {
                if(instance_find(obj_queen,i).image_single=myImageSingle) {
                    with(instance_find(obj_queen,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    }
                }
                }
                break;
                
                case "obj_king":
                var myImageSingle, ID;
                myImageSingle=readushort();
                ID=readushort();
                for(i=0;i<instance_number(obj_king);i+=1)
                if(ID=instance_find(obj_king,i).ID) {
                if(instance_find(obj_king,i).image_single=myImageSingle) {
                    with(instance_find(obj_king,i)) {
                        if(myImageSingle=1) {
                            x+=readshort()*-1;
                            y+=readshort()*-1;
                        }
                        else {
                            x+=readshort();
                            y+=readshort();
                        }
                        if(collision_point(x,y,obj_pawn,0,1)) with(collision_point(x,y,obj_pawn,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_knight,0,1)) with(collision_point(x,y,obj_knight,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_rook,0,1)) with(collision_point(x,y,obj_rook,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_bishop,0,1)) with(collision_point(x,y,obj_bishop,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_queen,0,1)) with(collision_point(x,y,obj_queen,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        if(collision_point(x,y,obj_king,0,1)) with(collision_point(x,y,obj_king,0,1)) { x=30; if(myImageSingle=0) y=420; else y=380; while(collision_point(x,y,all,0,1)) x+=20; }
                        global.lastMoveStartX=xprevious;
                        global.lastMoveStartY=yprevious;
                        global.lastMoveEndX=x;
                        global.lastMoveEndY=y;
                    }
                }
                }
                break;
            }
            break;
            
        case chat:
            scr_chat_write(readstring(),readint());
            break;
            
        case setturn:
            if(global.playersState=1) { //only if it's a player
                global.playersTurn=readbyte();
            }
            break;
            
        case setplayerstate:
            global.playersState=readbyte();
            if(global.playersState=0) { global.gameHasBegun=1; }
            break;
            
        case setopponent:
            if(global.gameHasBegun=0) scr_chat_write("System: " + readstring() + " is your opponent.",c_teal);
            scr_clear_pieces();
            scr_reset_pieces();
            with(obj_cell) event_user(0);
            global.gameHasBegun=1;
            global.opponentConnected=1;
            break;
            
        case setspectator:
            scr_chat_write("System: " + readstring() + " is spectating.",c_teal);
            break;
        
        case getplayers:
            global.connectedClients=readbyte();
            for(i=0;i<global.connectedClients;i+=1) global.playerNames[i]=readstring();
            break;
            
        case leave:
            var state, name;
            state=readbyte();
            name=readstring();
            global.connectedClients-=1;
            if(state=1) { //it was a player
                global.playersTurn=-1;
                global.hostIP="";
                global.gameHasBegun=0;
                global.lastMoveStartX=0;
                obj_button_disconnect.visible=0;
                obj_button_connect.visible=1;
                obj_button_playagain.visible=0;
                global.isConnected=0;
                global.opponentConnected=0;
                
                clearbuffer();
                writebyte(leave);
                sendmessage(global.socket);
                
                scr_clear_pieces();
                scr_chat_write("System: Game ended. " + name + " left.",c_maroon);
                global.connectedClients=0;
            }
            else {
                scr_chat_write("System: " + name + " has disconnected.",c_teal);
                for(i=0;i<global.connectedClients;i+=1) {
                    if(global.playerNames[i]=name) {
                        for(j=i;j<global.connectedClients;j+=1)
                            global.playerNames[j]=global.playerNames[j+1];
                        break;
                    }
                }
            }
            break;
            
        case replay:
            scr_clear_pieces();
            scr_reset_pieces();
            scr_chat_write("System: Game started.",c_maroon);
            global.lastMoveStartX=0;
            with(obj_cell) event_user(0);
            break;
            
        case speccreate:
            execute_string(readstring());
            break;
    }
}
else { //lost connection
    global.isConnected=0;
}
