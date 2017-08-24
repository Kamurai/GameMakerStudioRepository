/*
  Reads bytes from the file and copies to the internal buffer (starting at the
  write position)
  Argument0 = file id.
  Argument1 = Number of bytes to read.
  [Argument2]: The buffer id to receive to. Leave out this argument or set
  it to 0 to use the default buffer.
*/
//return external_call(global._FilD, argument0, argument1, argument2);
return external_call(global._FilD, argument[0], argument[1], argument[2]);
//return external_call(global._FilD, argument0, argument1, 0);//argument2);
