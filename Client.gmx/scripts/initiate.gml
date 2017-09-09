dllinit(false,true,true);
global.socket=tcpconnect("127.0.0.1",56320,1);
if (tcpconnected(global.socket)){
    return true;
}else{
    return false;
}
