/*
Accepts any incoming connections on a listening socket.
Argument0 = Listening socket.
Argument1 = Blocking/Non-Blocking mode.
returns the id of a newly created socket or a negative number.
*/
return external_call(global._SokC, argument[0], argument[1]);