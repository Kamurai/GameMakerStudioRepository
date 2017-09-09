#define ns_init
/**************************************************************************

Networking with Space v1.0 Beta

Maker --- wnsrn3436@naver.com

**************************************************************************/

globalvar nsv_send, nsv_send_buffer, nsv_join_buffer, nsv_message;
nsv_send=buffer_create(256, buffer_grow, 1)
nsv_send_buffer=buffer_create(256, buffer_grow, 1)
nsv_join_buffer=buffer_create(6, buffer_fixed, 1)
nsv_message=0

global._ns_temp_player_list_=ds_map_create()
global._ns_handle_list_=ds_list_create()
global._ns_handle_temp_=0
global._ns_message_limit_=256
global._ns_socket_error_str_=""

global._ns_received_handle_=0
global._ns_message_type_=0
global._ns_message_read_space_=0
global._ns_message_sent_space_=0
global._ns_message_sent_player_=0
global._ns_message_id_=0

#define ns_final
var skv_count=ds_list_size(global._ns_handle_list_);
repeat(skv_count){ns_handle_destroy(ds_list_find_value(global._ns_handle_list_, 0))}
buffer_delete(nsv_send)
buffer_delete(nsv_send_buffer)
buffer_delete(nsv_join_buffer)
ds_list_destroy(global._ns_handle_list_)
ds_map_destroy(global._ns_temp_player_list_)

#define ns_buffer_limit
global._ns_message_limit_=argument0

#define ns_handle_listen
var skv_socket=network_create_server(network_socket_tcp, argument0, argument1+1), skv_list;
if skv_socket<0{global._ns_socket_error_str_=cns_error_text_1; return 0}

skv_list=ds_list_create()
ds_list_add(skv_list, skv_socket)
ds_list_add(skv_list, 0)
ds_list_add(skv_list, argument3)
ds_list_add(skv_list, 0)
ds_list_add(skv_list, argument4)
ds_list_add(skv_list, 0)
repeat(argument2){ds_list_add(skv_list, ds_list_create())}
//socket(0), player_id(1), space(2), self_socket(3), check_string(4), player_number(5), { player(6) ... }

skv_socket=network_create_socket(network_socket_tcp)
if skv_socket>=0
{
    global._ns_handle_temp_=skv_list
    if network_connect(skv_socket, "127.0.0.1", argument0)>=0
    {
        while(!ds_list_find_value(skv_list, 3)){}
        return skv_list
    }
    global._ns_handle_temp_=0
}

global._ns_socket_error_str_=cns_error_text_1
network_destroy(skv_socket)
for(skv_socket=6; skv_socket<6+argument2; skv_socket+=1){ds_list_destroy(ds_list_find_value(skv_list, skv_socket))}
network_destroy(ds_list_find_value(skv_list, 0))
ds_list_destroy(skv_list)

return 0

#define ns_handle_connect
var skv_socket=network_create_socket(network_socket_tcp), skv_buffer, skv_list;
if skv_socket>=0
{
    if network_connect(skv_socket, argument0, argument1)>=0
    {
        buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
        buffer_write(nsv_send_buffer, buffer_string, "NS00")
        network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer))
        skv_buffer=buffer_create(global._ns_message_limit_, buffer_grow, 1)
        buffer_write(skv_buffer, buffer_u32, 0)
        buffer_write(skv_buffer, buffer_string, argument3)
        buffer_write(skv_buffer, buffer_u16, argument2)
        buffer_copy(nsv_send, 0, buffer_tell(nsv_send), skv_buffer, buffer_tell(skv_buffer))
        buffer_seek(skv_buffer, buffer_seek_relative, buffer_tell(nsv_send))
        skv_list=ds_list_create()
        ds_list_add(skv_list, skv_socket)
        ds_list_add(skv_list, -1)
        ds_list_add(skv_list, argument2)
        ds_list_add(skv_list, 0)
        ds_list_add(skv_list, skv_buffer)
        //socket(0), player_id(1), space(2), server_handle(3), temp_buffer(4)
        ds_list_add(global._ns_handle_list_, skv_list)
        return skv_list
    }
}
global._ns_socket_error_str_=cns_error_text_2
network_destroy(skv_socket)
return 0

#define ns_handle_destroy
var skv_pos=ds_list_find_index(global._ns_handle_list_, argument0);
if skv_pos!=-1
{
    if ds_list_find_value(argument0, 1)=0
    {
        var i, skv_size=ds_list_size(argument0), skv_list, skv_size2, j;
        for(i=6; i<skv_size; i+=1)
        {
            skv_list=ds_list_find_value(argument0, i)
            skv_size2=ds_list_size(skv_list)
            for(j=0; j!=skv_size2; j+=1){network_destroy(ds_list_find_value(skv_list, j))}
            ds_list_destroy(skv_list)
        }
        network_destroy(ds_list_find_value(argument0, 0)+1)
        network_destroy(ds_list_find_value(argument0, 3))
    }
    else{if ds_list_find_value(argument0, 4)!=-1{buffer_delete(ds_list_find_value(argument0, 4))}}
    network_destroy(ds_list_find_value(argument0, 0))
    ds_list_destroy(argument0)
    ds_list_delete(global._ns_handle_list_, skv_pos)
}

#define ns_message_receive
if !argument0{if global._ns_handle_temp_{argument0=global._ns_handle_temp_}}
global._ns_received_handle_=argument0

switch(ds_list_find_value(argument0, 1))
{
    case 0:
        if !ds_list_find_value(argument0, 3){if ds_map_find_value(async_load, "id")=ds_list_find_value(argument0, 0){ds_list_add(global._ns_handle_list_, argument0); global._ns_handle_temp_=0; ds_list_replace(argument0, 3, ds_map_find_value(async_load, "socket"))}}
        else
        {
            switch(ds_map_find_value(async_load, "type"))
            {
                case network_type_data:
                    nsv_message=ds_map_find_value(async_load, "buffer")
                    if "NS"+string(argument0)=buffer_read(nsv_message, buffer_string)+string(buffer_read(nsv_message, buffer_u16))
                    {
                        var skv_rpid=buffer_read(nsv_message, buffer_u32);
                        switch(skv_rpid)
                        {
                            case 0:
                                if buffer_read(nsv_message, buffer_string)=ds_list_find_value(argument0, 4)
                                {
                                    global._ns_message_sent_player_=ds_map_find_value(async_load, "id")
                                    global._ns_message_sent_space_=buffer_read(nsv_message, buffer_u16)
                                    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                                    buffer_write(nsv_send_buffer, buffer_u32, global._ns_message_sent_player_+2)
                                    network_send_packet(global._ns_message_sent_player_, nsv_send_buffer, 4)
                                    ds_list_add(ds_list_find_value(argument0, global._ns_message_sent_space_+6), global._ns_message_sent_player_)
                                    ds_list_replace(argument0, 5, ds_list_find_value(argument0, 5)+1)
                                    global._ns_message_type_=ns_type_player_join
                                    event_user(cns_server_event)
                                }
                                else
                                {
                                    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                                    buffer_write(nsv_send_buffer, buffer_u32, 1)
                                    buffer_write(nsv_send_buffer, buffer_bool, 1)
                                    network_send_packet(ds_map_find_value(async_load, "id"), nsv_send_buffer, 5)
                                }
                                break
                            case 1:
                                break
                            case 2:
                                global._ns_message_sent_player_=ds_map_find_value(async_load, "id")
                                global._ns_message_sent_space_=buffer_read(nsv_message, buffer_u16)
                                global._ns_message_id_=buffer_read(nsv_message, buffer_u16)
                                if global._ns_message_sent_player_!=ds_list_find_value(argument0, 3)
                                {
                                    var skv_list=ds_list_find_value(argument0, global._ns_message_sent_space_+6), pindex=ds_list_find_index(skv_list, global._ns_message_sent_player_);
                                    ds_list_delete(skv_list, pindex)
                                    ds_list_add(ds_list_find_value(argument0, global._ns_message_id_+6), global._ns_message_sent_player_)
                                    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                                    buffer_write(nsv_send_buffer, buffer_bool, 0)
                                    buffer_write(nsv_send_buffer, buffer_u16, global._ns_message_sent_space_)
                                    buffer_write(nsv_send_buffer, buffer_u16, global._ns_message_id_)
                                    network_send_packet(global._ns_message_sent_player_, nsv_send_buffer, buffer_tell(nsv_send_buffer))
                                    global._ns_message_type_=ns_type_player_space_changed
                                    event_user(cns_server_event)
                                }
                                else
                                {
                                    ds_list_replace(argument0, 2, global._ns_message_id_)
                                    global._ns_message_type_=ns_type_player_space_changed
                                    event_user(cns_server_event)
                                    global._ns_message_type_=ns_type_space_changed
                                    event_user(cns_server_event)
                                }
                                break
                            default:
                                var skv_start_pos=buffer_tell(nsv_message), skv_server_size=ds_list_size(argument0), skv_pos=buffer_read(nsv_message, buffer_u16), i=buffer_read(nsv_message, buffer_u16)+6, skv_list=ds_list_find_value(argument0, i), skv_server_size2=ds_list_size(skv_list), skv_var=buffer_read(nsv_message, buffer_u32), j=ds_list_find_index(skv_list, skv_var), k, l, skv_byte, skv_size, bsize;
                                buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                                buffer_write(nsv_send_buffer, buffer_bool, 1)
                                buffer_copy(nsv_message, skv_start_pos, buffer_get_size(nsv_message), nsv_send_buffer, 1)
                                bsize=buffer_get_size(nsv_message)-skv_start_pos+1
                                if 7>skv_rpid
                                {
                                    switch(skv_pos)
                                    {
                                        case 0:
                                            for(k=0; k<j; k+=1){network_send_packet(ds_list_find_value(skv_list, k), nsv_send_buffer, bsize)}
                                            for(k=j+1; k<skv_server_size2; k+=1){network_send_packet(ds_list_find_value(skv_list, k), nsv_send_buffer, bsize)}
                                            break
                                        case 1:
                                            for(k=6; k<i; k+=1)
                                            {
                                                skv_byte=ds_list_find_value(argument0, k)
                                                skv_size=ds_list_size(skv_byte)
                                                for(l=0; l!=skv_size; l+=1){network_send_packet(ds_list_find_value(skv_byte, l), nsv_send_buffer, bsize)}
                                            }
                                            for(k=i+1; k<skv_server_size; k+=1)
                                            {
                                                skv_byte=ds_list_find_value(argument0, k)
                                                skv_size=ds_list_size(skv_byte)
                                                for(l=0; l!=skv_size; l+=1){network_send_packet(ds_list_find_value(skv_byte, l), nsv_send_buffer, bsize)}
                                            }
                                            for(k=0; k<j; k+=1){network_send_packet(ds_list_find_value(skv_list, k), nsv_send_buffer, bsize)}
                                            for(k=j+1; k<skv_server_size2; k+=1){network_send_packet(ds_list_find_value(skv_list, k), nsv_send_buffer, bsize)}
                                            break
                                        case 2:
                                            for(k=6; k<i; k+=1)
                                            {
                                                skv_byte=ds_list_find_value(argument0, k)
                                                skv_size=ds_list_size(skv_byte)
                                                for(l=0; l!=skv_size; l+=1){network_send_packet(ds_list_find_value(skv_byte, l), nsv_send_buffer, bsize)}
                                            }
                                            for(k=i+1; k<skv_server_size; k+=1)
                                            {
                                                skv_byte=ds_list_find_value(argument0, k)
                                                skv_size=ds_list_size(skv_byte)
                                                for(l=0; l!=skv_size; l+=1){network_send_packet(ds_list_find_value(skv_byte, l), nsv_send_buffer, bsize)}
                                            }
                                            break
                                        default:
                                            skv_byte=ds_list_find_value(argument0, skv_pos+3)
                                            if skv_byte!=skv_list
                                            {
                                                skv_size=ds_list_size(skv_byte)
                                                for(k=0; k<skv_size; k+=1){network_send_packet(ds_list_find_value(skv_byte, k), nsv_send_buffer, bsize)}
                                            }
                                            else
                                            {
                                                for(k=0; k<j; k+=1){network_send_packet(ds_list_find_value(skv_byte, k), nsv_send_buffer, bsize)}
                                                for(k=j+1; k<skv_server_size2; k+=1){network_send_packet(ds_list_find_value(skv_byte, k), nsv_send_buffer, bsize)}
                                            }
                                    }
                                    if skv_rpid=4 or skv_rpid=5
                                    {
                                        if skv_pos!=2
                                        {
                                            if 3>skv_pos{network_send_packet(skv_var, nsv_send_buffer, bsize)}
                                            else{if ds_list_find_value(argument0, skv_pos+3)=skv_list{network_send_packet(skv_var, nsv_send_buffer, bsize)}}
                                        }
                                    }
                                    if 5>skv_rpid
                                    {
                                        skv_byte=ds_list_find_value(argument0, 2)
                                        global._ns_message_read_space_=skv_pos-3
                                        global._ns_message_sent_space_=i-6
                                        if (global._ns_message_read_space_<0 and (global._ns_message_read_space_=-2 or (global._ns_message_read_space_=-3 and global._ns_message_sent_space_=skv_byte) or (global._ns_message_read_space_=-1 and global._ns_message_sent_space_!=skv_byte))) or skv_byte=global._ns_message_read_space_
                                        {
                                            global._ns_message_sent_player_=skv_var
                                            global._ns_message_id_=buffer_read(nsv_message, buffer_u16)
                                            event_user(cns_message_event)
                                        }
                                    }
                                }
                                else
                                {
                                    if skv_rpid!=7
                                    {
                                        skv_rpid-=7
                                        switch(skv_pos)
                                        {
                                            case 0:
                                                if ds_list_find_index(skv_list, skv_rpid)!=-1{network_send_packet(skv_rpid, nsv_send_buffer, bsize)}
                                                break
                                            case 1:
                                                network_send_packet(skv_rpid, nsv_send_buffer, bsize)
                                                break
                                            case 2:
                                                if ds_list_find_index(skv_list, skv_rpid)=-1{network_send_packet(skv_rpid, nsv_send_buffer, bsize)}
                                                break
                                            default:
                                                if ds_list_find_index(ds_list_find_value(argument0, skv_pos+3), skv_rpid)!=-1{network_send_packet(skv_rpid, nsv_send_buffer, bsize)}
                                        }
                                    }
                                    else
                                    {
                                        skv_byte=ds_list_find_value(argument0, 2)
                                        global._ns_message_read_space_=skv_pos-3
                                        global._ns_message_sent_space_=i-6
                                        if (global._ns_message_read_space_<0 and (global._ns_message_read_space_=-2 or (global._ns_message_read_space_=-3 and global._ns_message_sent_space_=skv_byte) or (global._ns_message_read_space_=-1 and global._ns_message_sent_space_!=skv_byte))) or skv_byte=global._ns_message_read_space_
                                        {
                                            global._ns_message_sent_player_=skv_var
                                            global._ns_message_id_=buffer_read(nsv_message, buffer_u16)
                                            event_user(cns_message_event)
                                        }
                                    }
                                }
                        }
                    }
                    else
                    {
                        buffer_seek(nsv_message, buffer_seek_start, 0)
                        if buffer_read(nsv_message, buffer_string)="NS00"
                        {
                            var skv_pid=ds_map_find_value(async_load, "id");
                            if ds_map_exists(global._ns_temp_player_list_, skv_pid)
                            {
                                buffer_seek(nsv_join_buffer, buffer_seek_start, 0)
                                buffer_write(nsv_join_buffer, buffer_u32, 0)
                                buffer_write(nsv_join_buffer, buffer_u16, ds_map_find_value(global._ns_temp_player_list_, skv_pid))
                                network_send_packet(skv_pid, nsv_join_buffer, 6)
                                ds_map_delete(global._ns_temp_player_list_, skv_pid)
                            }
                            else
                            {
                                buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                                buffer_write(nsv_send_buffer, buffer_u32, 1)
                                buffer_write(nsv_send_buffer, buffer_bool, 0)
                                network_send_packet(skv_pid, nsv_send_buffer, 5)
                            }
                        }
                        else{buffer_seek(nsv_message, buffer_seek_start, 0)}
                    }
                    break
                case network_type_connect:
                    if ds_map_find_value(async_load, "id")=ds_list_find_value(argument0, 0)
                    {
                        ds_map_add(global._ns_temp_player_list_, ds_map_find_value(async_load, "socket"), argument0)
                    }
                    break
                case network_type_disconnect:
                    if ds_map_find_value(async_load, "id")=ds_list_find_value(argument0, 0)
                    {
                        var skv_size=ds_list_size(argument0), skv_pos;
                        global._ns_message_sent_player_=ds_map_find_value(async_load, "socket")
                        for(global._ns_message_sent_space_=6; global._ns_message_sent_space_<skv_size; global._ns_message_sent_space_+=1)
                        {
                            skv_pos=ds_list_find_index(ds_list_find_value(argument0, global._ns_message_sent_space_), global._ns_message_sent_player_)
                            if skv_pos!=-1
                            {
                                ds_list_delete(ds_list_find_value(argument0, global._ns_message_sent_space_), skv_pos)
                                ds_list_replace(argument0, 5, ds_list_find_value(argument0, 5)-1)
                                global._ns_message_sent_space_-=6
                                global._ns_socket_error_str_=cns_error_text_3
                                global._ns_message_type_=ns_type_player_exit
                                event_user(cns_server_event)
                                break
                            }
                        }
                        ds_map_delete(global._ns_temp_player_list_, global._ns_message_sent_player_)
                    }
                    break
            }
        }
        break
    case -1:
        if ds_map_find_value(async_load, "id")=ds_list_find_value(argument0, 0)
        {
            nsv_message=ds_map_find_value(async_load, "buffer")
            var skv_pid=buffer_read(nsv_message, buffer_u32);
            switch(skv_pid)
            {
                case 0:
                    ds_list_replace(argument0, 3, buffer_read(nsv_message, buffer_u16))
                    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                    buffer_write(nsv_send_buffer, buffer_string, "NS")
                    buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
                    buffer_copy(ds_list_find_value(argument0, 4), 0, buffer_tell(ds_list_find_value(argument0, 4)), nsv_send_buffer, buffer_tell(nsv_send_buffer))
                    network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(ds_list_find_value(argument0, 4)))
                    buffer_delete(ds_list_find_value(argument0, 4))
                    ds_list_replace(argument0, 4, -1)
                    break
                case 1:
                    if !buffer_read(nsv_message, buffer_bool){global._ns_socket_error_str_=cns_error_text_6}
                    else{global._ns_socket_error_str_=cns_error_text_4}
                    global._ns_message_type_=ns_type_server_error
                    event_user(cns_client_event)
                    break
                default:
                    ds_list_replace(argument0, 1, skv_pid-2)
                    global._ns_message_type_=ns_type_connected
                    event_user(cns_client_event)
            }
        }
        break
    default:
        if ds_map_find_value(async_load, "id")=ds_list_find_value(argument0, 0)
        {
            nsv_message=ds_map_find_value(async_load, "buffer")
            if buffer_read(nsv_message, buffer_bool)
            {
                var skv_byte=ds_list_find_value(argument0, 2)
                global._ns_message_read_space_=buffer_read(nsv_message, buffer_u16)-3
                global._ns_message_sent_space_=buffer_read(nsv_message, buffer_u16)
                if (global._ns_message_read_space_<0 and (global._ns_message_read_space_=-2 or (global._ns_message_read_space_=-3 and global._ns_message_sent_space_=skv_byte) or (global._ns_message_read_space_=-1 and global._ns_message_sent_space_!=skv_byte))) or skv_byte=global._ns_message_read_space_
                {
                    global._ns_message_sent_player_=buffer_read(nsv_message, buffer_u32)
                    global._ns_message_id_=buffer_read(nsv_message, buffer_u16)
                    event_user(cns_message_event)
                }
            }
            else
            {
                global._ns_message_sent_space_=buffer_read(nsv_message, buffer_u16)
                global._ns_message_id_=buffer_read(nsv_message, buffer_u16)
                global._ns_message_type_=ns_type_space_changed
                ds_list_replace(argument0, 2, global._ns_message_id_)
                event_user(cns_client_event)
            }
        }
}

if buffer_get_size(nsv_send)>global._ns_message_limit_{buffer_resize(nsv_send, global._ns_message_limit_)}
if buffer_get_size(nsv_send_buffer)>global._ns_message_limit_{buffer_resize(nsv_send_buffer, global._ns_message_limit_)}

#define ns_get_received_handle
return global._ns_received_handle_

#define ns_get_message_type
return global._ns_message_type_

#define ns_get_message_id
return global._ns_message_id_

#define ns_get_message_sent_space
return global._ns_message_sent_space_

#define ns_get_message_sent_player
return global._ns_message_sent_player_

#define ns_message_send
if ds_list_find_value(argument0, 1)>0
{
    switch(argument2)
    {
        case -5:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, 3)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            break
        case -4:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, 6)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            break
        case -3:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, 5)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            break
        case -2:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, 3)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            break
        case -1:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, 4)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            break
        default:
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
            buffer_write(nsv_send_buffer, buffer_u32, argument2+7)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, ds_list_find_value(argument0, 1))
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
    }
    return 0
}
else if ds_list_find_value(argument0, 1)=0
{
    if argument2<0
    {
        buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
        buffer_write(nsv_send_buffer, buffer_bool, 1)
        buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
        buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
        buffer_write(nsv_send_buffer, buffer_u32, 0)
        buffer_write(nsv_send_buffer, buffer_u16, argument3)
        buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
        switch(argument1)
        {
            case -3:
                var i, skv_list=ds_list_find_value(argument0, ds_list_find_value(argument0, 2)+6), skv_byte=ds_list_size(skv_list), skv_size=buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send);
                for(i=0; i!=skv_byte; i+=1){network_send_packet(ds_list_find_value(skv_list, i), nsv_send_buffer, skv_size)}
                break
            case -2:
                var i, j, skv_list, skv_byte=ds_list_size(argument0), skv_byte2, skv_size=buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send);
                for(i=6; i<skv_byte; i+=1)
                {
                    skv_list=ds_list_find_value(argument0, i)
                    skv_byte2=ds_list_size(skv_list)
                    for(j=0; j!=skv_byte2; j+=1){network_send_packet(ds_list_find_value(skv_list, j), nsv_send_buffer, skv_size)}
                }
                break
            case -1:
                var i, j, skv_list, skv_byte=ds_list_find_value(argument0, 2)+6, skv_byte2, skv_size=buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send);
                for(i=6; i<skv_byte; i+=1)
                {
                    skv_list=ds_list_find_value(argument0, i)
                    skv_byte2=ds_list_size(skv_list)
                    for(j=0; j!=skv_byte2; j+=1){network_send_packet(ds_list_find_value(skv_list, j), nsv_send_buffer, skv_size)}
                }
                skv_byte2=ds_list_size(argument0)
                for(i=skv_byte+1; i<skv_byte2; i+=1)
                {
                    skv_list=ds_list_find_value(argument0, i)
                    skv_byte=ds_list_size(skv_list)
                    for(j=0; j!=skv_byte; j+=1){network_send_packet(ds_list_find_value(skv_list, j), nsv_send_buffer, skv_size)}
                }
                break
            default:
                var i, skv_list=ds_list_find_value(argument0, argument1+6), skv_byte=ds_list_size(skv_list), skv_size=buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send);
                for(i=0; i!=skv_byte; i+=1){network_send_packet(ds_list_find_value(skv_list, i), nsv_send_buffer, skv_size)}
                break
        }
        if argument2>-4
        {
            if argument1<-1 or ds_list_find_value(argument0, 2)=argument1
            {
                buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
                buffer_write(nsv_send_buffer, buffer_string, "NS")
                buffer_write(nsv_send_buffer, buffer_u16, argument0)
                buffer_write(nsv_send_buffer, buffer_u32, 7)
                buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
                buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
                buffer_write(nsv_send_buffer, buffer_u32, 0)
                buffer_write(nsv_send_buffer, buffer_u16, argument3)
                buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
                network_send_packet(ds_list_find_value(argument0, 3), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
            }
        }
    }
    else
    {
        if argument2
        {
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_bool, 1)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, 0)
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            switch(argument1)
            {
                case -3:
                    if ds_list_find_index(ds_list_find_value(argument0, ds_list_find_value(argument0, 2)+6), argument2)!=-1{network_send_packet(argument2, nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))}
                    break
                case -2:
                    network_send_packet(argument2, nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
                    break
                case -1:
                    if ds_list_find_index(ds_list_find_value(argument0, ds_list_find_value(argument0, 2)+6), argument2)=-1{network_send_packet(argument2, nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))}
                    break
                default:
                    if ds_list_find_index(ds_list_find_value(argument0, argument1+6), argument2)!=-1{network_send_packet(argument2, nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))}
            }
        }
        else
        {
            buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
            buffer_write(nsv_send_buffer, buffer_string, "NS")
            buffer_write(nsv_send_buffer, buffer_u16, argument0)
            buffer_write(nsv_send_buffer, buffer_u32, 7)
            buffer_write(nsv_send_buffer, buffer_u16, argument1+3)
            buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
            buffer_write(nsv_send_buffer, buffer_u32, 0)
            buffer_write(nsv_send_buffer, buffer_u16, argument3)
            buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
            network_send_packet(ds_list_find_value(argument0, 3), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
        }
    }
    return 0
}
show_message_async("NS ERROR: Once you connect, this script can be used.")
return 0

#define ns_ping_check_sned
if ds_list_find_value(argument0, 1)>0
{
    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
    buffer_write(nsv_send_buffer, buffer_string, "NS")
    buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
    buffer_write(nsv_send_buffer, buffer_u32, 1)
    var skv_size=network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer))
    if skv_size<=0{global._ns_socket_error_str_=cns_error_text_5; return 0}
    return skv_size
}
return 1

#define ns_get_error_string
return global._ns_socket_error_str_

#define ns_get_my_space
if ds_list_find_value(argument0, 1)=-1{show_message_async("NS ERROR: Once you connect, this script can be used."); return 0}
return ds_list_find_value(argument0, 2)

#define ns_get_my_player_id
if ds_list_find_value(argument0, 1)=-1{show_message_async("NS ERROR: Once you connect, this script can be used."); return 0}
return ds_list_find_value(argument0, 1)

#define ns_get_player_number
if ds_list_find_value(argument0, 1)=0{return ds_list_find_value(argument0, 5)}
return 0

#define ns_get_space_player_number
if ds_list_find_value(argument0, 1)=0{return ds_list_size(ds_list_find_value(argument0, argument1+6))}
return 0

#define ns_get_space_player_ds_list
if ds_list_find_value(argument0, 1)=0{return ds_list_find_value(argument0, argument1+6)}
return 0

#define ns_set_my_space
if ds_list_find_value(argument0, 1)>0
{
    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
    buffer_write(nsv_send_buffer, buffer_string, "NS")
    buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 3))
    buffer_write(nsv_send_buffer, buffer_u32, 2)
    buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
    buffer_write(nsv_send_buffer, buffer_u16, argument1)
    buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
    network_send_packet(ds_list_find_value(argument0, 0), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
    return 0
}
else if ds_list_find_value(argument0, 1)=0
{
    buffer_seek(nsv_send_buffer, buffer_seek_start, 0)
    buffer_write(nsv_send_buffer, buffer_string, "NS")
    buffer_write(nsv_send_buffer, buffer_u16, argument0)
    buffer_write(nsv_send_buffer, buffer_u32, 2)
    buffer_write(nsv_send_buffer, buffer_u16, ds_list_find_value(argument0, 2))
    buffer_write(nsv_send_buffer, buffer_u16, argument1)
    buffer_copy(nsv_send, 0, buffer_tell(nsv_send), nsv_send_buffer, buffer_tell(nsv_send_buffer))
    network_send_packet(ds_list_find_value(argument0, 3), nsv_send_buffer, buffer_tell(nsv_send_buffer)+buffer_tell(nsv_send))
    return 0
}
show_message_async("NS ERROR: Once you connect, this script can be used.")
return 0

