var fileID;

var tracker = 1;

if( file_exists(obj_Info.SaveFile) )
{
    fileID = file_text_open_read(obj_Info.SaveFile);
    
    while(!file_text_eof(fileID))
    {
        obj_Master_Controller.Score[tracker] = file_text_read_string(fileID);
        if(obj_Master_Controller.Score[tracker] == "")
        {
            obj_Master_Controller.Score[tracker] = 0;
        }
        tracker = tracker + 1;
        file_text_readln(fileID);
    }
    
    file_text_close(fileID);    
}
