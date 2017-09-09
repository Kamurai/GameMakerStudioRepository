/*
appends one buffers data to the end of another
Argument0 = destination buffer;
Argument1 = Source buffer
note: 0 is default buffer
*/
//return external_call(global._BufAC, argument0, argument1);
return external_call(global._BufAC, argument[0], argument[1]);
//return external_call(global._BufAC, argument0, 0);//argument1);
