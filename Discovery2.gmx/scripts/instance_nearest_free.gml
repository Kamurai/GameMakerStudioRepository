/*
instance_nearest_free(x,y,obj,blockobj,prec) (modified version)
Finds the actual nearest instance of obj where there's no collision line in between x,y and that instance.
If none could be found, the nearest instance is returned.

x,y,obj - Same as in instance_nearest()
blockobj - The main block object in the game
prec - Whenever to check precisely

Script by Fede-lasse
*/
var _inst,_current_dist,_dist;
_inst = noone;
_current_dist = 99999999;

with (argument2) {
  _dist = point_distance(x,y,argument0,argument1);
  if (_dist < _current_dist) {
    if (collision_line(x,y,argument0,argument1,argument3,argument4,1) == noone) {
      _inst = id;
      _current_dist = _dist;
    }
  }
}

if (_inst == noone) {
  return (instance_nearest(argument0,argument1,argument2));
}

return (_inst);