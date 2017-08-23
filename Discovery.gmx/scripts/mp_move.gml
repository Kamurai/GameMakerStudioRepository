/*
mp_move(grid,x,y,speed,blockobj,prec)
Moves the current instance to x,y using motion planning and GM's built-in physics functions.

grid - Motion planning grid used for pathfinding
x,y - Destination coordinates
speed - Moving speed
blockobj - Main wall/block object in your game
prec - How far the AI looks ahead (2-3 = recommended)

Script by Fede-lasse, travel distance prediction code by xot
*/
var _minimumDistance;
_minimumDistance = (1+argument3)*(1+friction);

if (point_distance(x,y,argument1,argument2) <= argument3) {
  x = argument1;
  y = argument2;
  return (0);
}

if (collision_line(x,y,argument1,argument2,argument4,1,1) == noone) {
  motion_add(point_direction(x,y,argument1,argument2),argument3);
  if (path_get_number(__mpPath) > 0) {
    path_clear_points(__mpPath);
  }
  __mpPosition = 1;
} else {
  var _pathNumber;
  _pathNumber = path_get_number(__mpPath);
  if (distance_to_point(path_get_point_x(__mpPath,__mpPosition),path_get_point_y(__mpPath,__mpPosition)) <= _minimumDistance ||_pathNumber <= 0) {
    if (!mp_grid_path(argument0,__mpPath,x,y,argument1,argument2,1)) {
      return (-1);
    }
    __mpPosition = round(_minimumDistance)+1;
    path_set_kind(__mpPath,1);
    path_set_precision(__mpPath,1);
  } else {
    motion_add(point_direction(x,y,path_get_point_x(__mpPath,__mpPosition),path_get_point_y(__mpPath,__mpPosition)),argument3);
  }
}