/*
Writes a 2 byte integer to the buffer. the value can be between
-32768 and +32767
Argument0 : value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
//return external_call(global._BufC, argument0, argument1);
return external_call(global._BufC, argument[0], argument[1]);
//return external_call(global._BufC, argument0, 0);//argument1);
