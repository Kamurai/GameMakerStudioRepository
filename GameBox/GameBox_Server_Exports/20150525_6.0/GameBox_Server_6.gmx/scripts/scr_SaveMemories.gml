var targetPort;
    targetPort = argument0;
var fileID;

fileID = file_text_open_write(obj_Connection.HostReference);

file_text_write_string(fileID, string(targetPort));

file_text_close(fileID);