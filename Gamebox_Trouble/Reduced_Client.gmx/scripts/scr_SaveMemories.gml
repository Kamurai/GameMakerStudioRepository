var targetHost,targetName;
    targetHost = argument0;
    targetName = argument1;
var fileID;

fileID = file_text_open_write(obj_Connection.HostReference);

file_text_write_string(fileID, targetName);
file_text_writeln(fileID);
file_text_write_string(fileID, targetHost);

file_text_close(fileID);
