/*
Reads a sequence of characters from the buffer.
Argument0: number of charactered to read
[Argument1]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
//return external_call(global._BufS, argument0, argument1);
//return external_call(global._BufS, argument[0], argument[1]);
return external_call(global._BufS, argument0, 0);//argument1);
