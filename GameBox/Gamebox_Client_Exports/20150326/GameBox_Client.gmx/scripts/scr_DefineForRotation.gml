distance = sqrt( sqr( (room_width/2) - x ) + sqr( (room_height/2) - y ) );

//if Game Object is in quadrant 1
if( x > (room_width/2) && y < (room_height/2) )
{
    alpha = arctan( ((room_height/2) - y)/(x-(room_width/2)) ) * (180/pi);
}
//if Game Object is in quadrant 2
else if( x < (room_width/2) && y < (room_height/2) )
{
    alpha = arctan( ((room_height/2) - y)/((room_width/2) - x) ) * (180/pi);
}
//if Game Object is in quadrant 3
else if( x < (room_width/2) && y > (room_height/2) )
{
    alpha = arctan( (y-(room_height/2))/((room_width/2) - x) ) * (180/pi);
}
//if Game Object is in quadrant 4
else if( x > (room_width/2) && y > (room_height/2) )
{
    alpha = arctan( (y-(room_height/2))/(x-(room_width/2)) ) * (180/pi);
}
