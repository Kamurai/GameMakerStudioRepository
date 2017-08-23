var varTracker = 0;

var varXoffset = 12;
var varYoffset = 20;

draw_set_color(c_black)

for(varTracker = 0; varTracker < obj_Controller.PlayerCount; varTracker++)
{
    draw_text((x+varXoffset),(y+varYoffset), "Online: " + string(obj_Controller.Roster[varTracker]));


    varYoffset += 16;
    
    if( (varYoffset+20) >= room_height - 16)
    {
        varXoffset = 100;
        varYoffset = 20;
    }
}
