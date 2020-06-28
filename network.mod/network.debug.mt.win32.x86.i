ModuleInfo "Version: 1.0"
ModuleInfo "License: Open"
ModuleInfo "Copyright: Wrapper by Mathias Kwiatkowski"
ModuleInfo "History: 1.0 Release"
import brl.blitz
import vertex.bnetex
import brl.threads
import brl.linkedlist
import brl.retro
TFileSend^Object{
.Name$&
.Path$&
.Bank:TBank&
.Count%&
.Client:TClient&
.Fertig%&
-New%()="_codderx_network_TFileSend_New"
}="codderx_network_TFileSend"
SendFile%(Client:TClient,Path$)="codderx_network_SendFile"
GetFile:TList(O:Object)="codderx_network_GetFile"
TMessage^Object{
.Inhalt:TList&
.Client:TClient&
.Fast%&
-New%()="_codderx_network_TMessage_New"
-Add%(Text$)="_codderx_network_TMessage_Add"
-GetNetwork%()="_codderx_network_TMessage_GetNetwork"
-Send%(Client:TClient,Fast%=0)="_codderx_network_TMessage_Send"
-Get$()="_codderx_network_TMessage_Get"
-Count%()="_codderx_network_TMessage_Count"
}="codderx_network_TMessage"
GetNetwork%(Message:TMessage)="codderx_network_GetNetwork"
CountMessage%(Message:TMessage)="codderx_network_CountMessage"
GetMessageText$(Message:TMessage)="codderx_network_GetMessageText"
NewMessage:TMessage()="codderx_network_NewMessage"
AddMessage%(Message:TMessage,Text$)="codderx_network_AddMessage"
SendMessage%(Message:TMessage,Client:TClient,Fast%=0)="codderx_network_SendMessage"
TServer^Object{
.Stream:TTCPStream&
.UDP:TUDPStream&
.Client_List:TList&
.Client_Mutex:TMutex&
.Eingang_List:TList&
.Eingang_Mutex:TMutex&
.Eingang_File_List:TList&
.Eingang_File_Mutex:TMutex&
.Bann_List:TList&
.Bann_Mutex:TMutex&
.Bann_MSG%&
.Bann_Sek%&
.Port%&
-New%()="_codderx_network_TServer_New"
+Connect_Server:Object(data:Object)="_codderx_network_TServer_Connect_Server"
+DoClient_UDP:Object(data:Object)="_codderx_network_TServer_DoClient_UDP"
+DoClient:Object(data:Object)="_codderx_network_TServer_DoClient"
}="codderx_network_TServer"
DosBannMSG_Count%(Server:TServer,CountMSG%)="codderx_network_DosBannMSG_Count"
DosBann_Time%(Server:TServer,Sekunden%)="codderx_network_DosBann_Time"
CreateServer:TServer(TCP_Port%,UDP_Port%)="codderx_network_CreateServer"
TClient^Object{
.Stream:TTCPStream&
.UDP:TUDPStream&
.Send_List:TList&
.Send_Mutex:TMutex&
.Server:TServer&
.Eingang_List:TList&
.Eingang_Mutex:TMutex&
.Eingang_File_List:TList&
.Eingang_File_Mutex:TMutex&
.Send_File_List:TList&
.Send_File_Mutex:TMutex&
.Send_UDP_List:TList&
.Send_UDP_Mutex:TMutex&
.Port%&
.IP$&
.PortUDP%&
.Verbunden%&
.Ping_Send%&
.Ping_SendTimer%&
.Ping_Ping%&
-New%()="_codderx_network_TClient_New"
+DoServer_UDP:Object(data:Object)="_codderx_network_TClient_DoServer_UDP"
+DoServer:Object(data:Object)="_codderx_network_TClient_DoServer"
}="codderx_network_TClient"
NetworkConnect%(Client:TClient)="codderx_network_NetworkConnect"
GetClientList:TList(Server:TServer)="codderx_network_GetClientList"
ClientLatenz%(Client:TClient)="codderx_network_ClientLatenz"
ConnectServer:TClient(IP$,TCP_Port%,UDP_Port%)="codderx_network_ConnectServer"
GetMessages:TList(O:Object)="codderx_network_GetMessages"
