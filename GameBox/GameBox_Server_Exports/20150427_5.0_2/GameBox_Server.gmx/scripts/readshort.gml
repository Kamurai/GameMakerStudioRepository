/*
Returns a short int from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
//return external_call(global._BufI, argument0);
//return external_call(global._BufI, argument[0]);
return external_call(global._BufI, 0);//argument0);
