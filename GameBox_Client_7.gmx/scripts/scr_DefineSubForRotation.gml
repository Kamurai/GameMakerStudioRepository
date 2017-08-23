//argument0 represents instance being rotated around stationary object
//argument1 represents instance of stationary object

(argument0).distance = sqrt( sqr( (argument1).x - (argument0).x ) + sqr( (argument1).y - (argument0).y ) );

//if Game Object is in quadrant 1
if( (argument0).x > (argument1).x && (argument0).y < (argument1).y )
{
    (argument0).alpha = arctan( ((argument1).y - (argument0).y)/((argument0).x-(argument1).y) ) * (180/pi);
}
//if Game Object is in quadrant 2
else if( (argument0).x < (argument1).x && (argument0).y < (argument1).y )
{
    (argument0).alpha = arctan( ((argument1).y - (argument0).y)/((argument1).x - (argument0).x) ) * (180/pi);
}
//if Game Object is in quadrant 3
else if( (argument0).x < (argument1).x && (argument0).y > (argument1).y )
{
    (argument0).alpha = arctan( ((argument0).y-(argument1).y)/((argument1).x - (argument0).x) ) * (180/pi);
}
//if Game Object is in quadrant 4
else if( (argument0).x > (argument1).x && (argument0).y > (argument1).y )
{
    (argument0).alpha = arctan( ((argument0).y-(argument1).y)/((argument0).x-(argument1).x) ) * (180/pi);
}
