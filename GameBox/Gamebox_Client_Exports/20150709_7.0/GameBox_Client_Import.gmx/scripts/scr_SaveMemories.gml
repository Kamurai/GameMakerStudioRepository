var targetHost,targetName,targetPort;
    targetName = argument0;
    targetHost = argument1;
    targetPort = argument2;
var fileID;

fileID = file_text_open_write(obj_Connection.HostReference);

file_text_write_string(fileID, targetName);
file_text_writeln(fileID);
file_text_write_string(fileID, targetHost);
file_text_writeln(fileID);
file_text_write_string(fileID, string(targetPort));
mooBaby = targetPort;

file_text_close(fileID);