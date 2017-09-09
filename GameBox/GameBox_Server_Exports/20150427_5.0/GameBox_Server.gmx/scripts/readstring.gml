/*
Returns a null terminated string from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
//return external_call(global._BufH, argument0);
return external_call(global._BufH, argument[0]);
//return external_call(global._BufH, 0);//argument0);
