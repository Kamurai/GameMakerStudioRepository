var targetFile;
    targetFile = argument0;
var fileID;

fileID = file_text_open_write(targetFile);

//go through room and save information

file_text_write_string(fileID, targetName);
file_text_writeln(fileID);
file_text_write_string(fileID, targetHost);

file_text_close(fileID);
