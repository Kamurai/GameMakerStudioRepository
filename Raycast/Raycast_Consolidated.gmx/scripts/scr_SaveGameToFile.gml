var fileID;

var tracker = 0;


if( file_exists(obj_Info.SaveFile) )
{
    fileID = file_text_open_write(obj_Info.SaveFile);
}
else
{
    fileID = file_text_open_write(obj_Info.SaveFile);
}


for(tracker = 1; tracker <= obj_Info.NumberOfLevels; tracker++)
{
    file_text_write_string(fileID, string(obj_Master_Controller.Score[tracker]));
    file_text_writeln(fileID);
}
