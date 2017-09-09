var targetFile;

var fileID;

//targetFile = argument[0];

if( file_exists(obj_Connection.HostReference) )
{
    fileID = file_text_open_read(obj_Connection.HostReference);

    obj_Connection.LastPort = file_text_read_string(fileID);
    
    file_text_close(fileID);    
}
