SuperStrict

Import vertex.bnetex
Import brl.Threads
Import brl.Stream
Import brl.linkedlist
Import brl.Retro


Rem
bbdoc: Secure Socket Layer
about: Network Blitzmax Module by Mathias Kwiatkowski v1.0<br><br>
Es sollte darauf geachtet werden das dieses Modul nur im zusammenhang mit der Vertex.Bet funktioniert.<br>Um das Modul nutzen zu können muss man sich im Thread Modus befinden.

End Rem
Module CodderX.Network

ModuleInfo "Version: 1.0"
ModuleInfo "License: Open"
ModuleInfo "Copyright: Wrapper by Mathias Kwiatkowski"

ModuleInfo "History: 1.0 Release"

Rem
	bbdoc: TServer klasse
End Rem
Type TFileSend
	Field Name:String
	Field Path:String
	Field Bank:TBank
	Field Count:Int
	Field Client:TClient
	Field Fertig:Int
End Type

Rem
	bbdoc: verschickt eine datei zum Client z.b. SendFile(Client,"C:\Bilder\Test.png")
End Rem
Function SendFile(Client:TClient, Path:String)
	Local Name:String
	Local Pos:Int = 1
	Path = Replace (Path, "/", "\")
	Repeat
		Local A:Int = Instr(path, "\", pos)
		If A = 0 Then Exit
		Pos = A + 1
	Forever
	
	Name = Mid(Path, Pos, Len(Path) - Pos + 1)
	
	Local F:TFileSend = New TFileSend
 	F.Name = Name
 	F.Path = Path
	LockMutex(Client.Send_File_Mutex)
	Client.Send_File_List.AddLast F
	UnlockMutex(Client.Send_File_Mutex)
End Function

Rem
	bbdoc: fragt ab ob es ein download gibt und wenn werden diese in einer liste zurück gegeben.<br>For Local File:TFileSend =EachIn GetFiele(Client)
	returns: List:TList
End Rem
Function GetFile:TList (O:Object)
	Local Server:TServer = TServer(O)
	Local Client:TClient = TClient(O)
	
	Local List:TList = New TList
	If Server Then
		LockMutex(Server.Eingang_File_Mutex)
		For Local F:TFileSend = EachIn Server.Eingang_File_List
			If F.Fertig = 1 Then
				Server.Eingang_File_List.Remove F
			EndIf
			List.AddLast F
		Next
		UnlockMutex(Server.Eingang_File_Mutex)
	End If
	
	If Client Then
		LockMutex(Client.Eingang_File_Mutex)
		For Local F:TFileSend = EachIn Client.Eingang_File_List
			If F.Fertig = 1 Then
				Client.Eingang_File_List.Remove F
			EndIf
			List.AddLast F
		Next
		UnlockMutex(Client.Eingang_File_Mutex)
	End If
	
	Return List
EndFunction



Rem
	bbdoc: TMessage klasse
End Rem
Type TMessage
	Field Inhalt:TList
	Field Client:TClient
	Field Fast:Int
	
	Rem
		bbdoc: fügt eine line (string) der message hinzu.
	End Rem
	Method Add(Text:String)
		Inhalt.AddLast Text
	End Method
	
	Rem
		bbdoc: gibt zurück ob es sich um eine UDP oder TCP verbindung handelt<br>0=TCP<br>1=UDP
		returns: I:Int
	End Rem
	Method GetNetwork:Int()
		Return Fast
	End Method
	
	Rem
		bbdoc: versendet die ganze message am client
	End Rem
	Method Send(Client:TClient, Fast:Int = 0)
		If Client Then
			If Fast = 0 Then
				LockMutex(Client.Send_Mutex)
				Client.Send_List.AddLast Self
				UnlockMutex(Client.Send_Mutex)
			ElseIf Fast = 1 Then
				LockMutex(Client.Send_UDP_Mutex)
				Client.Send_UDP_List.AddLast Self
				UnlockMutex(Client.Send_UDP_Mutex)
			EndIf
		EndIf
	End Method
	
	Method Get:String()
		Local Text:String
		For Local T:String = EachIn Inhalt
			Text = T
			Inhalt.Remove T
			Exit
		Next
		Return Text
	End Method
	
	Method Count:Int()
		Return Inhalt.Count()
	End Method
End Type

Rem
	bbdoc: gibt zurück ob es sich um eine UDP oder TCP verbindung handelt<br>0=TCP<br>1=UDP
	returns: I:Int
End Rem
Function GetNetwork:Int(Message:TMessage)
	If Message Then
		Return Message.GetNetwork()
	EndIf
End Function

Rem
	bbdoc: zurückgeben wieviele lines in der message sind.
	returns: I:Int
End Rem
Function CountMessage:Int(Message:TMessage)
	If Message Then
		Return Message.Count()
	End If
End Function

Rem
	bbdoc: ein string aus der message abfragen
	returns: S:String
End Rem
Function GetMessageText:String(Message:TMessage)
	If Message Then
		Return Message.Get()
	End If
End Function

Rem
	bbdoc: erstellt eine neue message
	returns: Message:TMessage
End Rem
Function NewMessage:TMessage()
	Local M:TMessage = New TMessage
	M.Inhalt = New TList
	Return M
End Function

Rem
	bbdoc: fügt eine line (string) der message hinzu.
End Rem
Function AddMessage(Message:TMessage, Text:String)
	If Message Then
		Message.Add(Text)
	End If
End Function

Rem
	bbdoc: versendet die ganze message am client
End Rem
Function SendMessage(Message:TMessage, Client:TClient, Fast:Int = 0)
	If Message Then
		Message.Send(Client, Fast)
	End If
End Function
	
Rem
	bbdoc: TServer klasse
End Rem
Type TServer
	Field Stream:TTCPStream
	Field UDP:TUDPStream
	
	Field Client_List:TList
	Field Client_Mutex:TMutex
	
	Field Eingang_List:TList
	Field Eingang_Mutex:TMutex
	
	Field Eingang_File_List:TList
	Field Eingang_File_Mutex:TMutex
		
	Field Bann_List:TList
	Field Bann_Mutex:TMutex
	Field Bann_MSG:Int
	Field Bann_Sek:Int
	
	Field Port:Int
	

	
	Function Connect_Server:Object(data:Object)
		Local Svr:TServer = TServer(data)
		Local Stream:TTCPStream = svr.Stream
		Local Client:TTCPStream
							
		Repeat
			Client = Stream.Accept()
			
			If Client Then
				Local Vorhanden:Int = 0
				LockMutex (Svr.Bann_Mutex)
				For Local Bann:TBann = EachIn Svr.Bann_List
					If MilliSecs() - Bann.Timer > Svr.Bann_Sek * 1000 Then
						Svr.Bann_List.Remove Bann
						Exit
					Else
						Vorhanden = 1
						Exit
					EndIf
				Next
				UnlockMutex (Svr.Bann_Mutex)
				
				If Vorhanden = 0 Then
					Local C:TClient = New TClient
					C.IP = TNetwork.StringIP(Client.GetLocalIP())
					C.Port = Client.GetLocalPort()
					C.Stream = Client
					C.Send_List = New TList
					C.Send_Mutex = CreateMutex()
					C.Send_File_List = New TList
					C.Send_File_Mutex = CreateMutex()
					C.Send_UDP_List = New TList
					C.Send_UDP_Mutex = CreateMutex()
					C.Server = Svr
					C.Verbunden = 1
					
					Local TH:TThread = CreateThread(doclient, c)
					DetachThread(TH)
				Else
					Client.Flush()
					Client.Close()
				EndIf
			End If
			
			Delay 1
		Forever
	End Function
	
	Function DoClient_UDP:Object(data:Object)
		'Local Client:TClient = TClient(data)
		Local Server:TServer = TServer(data)
		Local Stream:TUDPStream = server.UDP
		
		Repeat
			If Stream Then
				If Stream.RecvAvail() Then
					While Stream.RecvMsg() ; Wend
					
					If Stream.Size() > 0 Then
						While Not Stream.Eof()
							Local Line:String = Stream.ReadLine()
							
							If Line = "[PACK]" Then
								Local M:TMessage = NewMessage()
								LockMutex (Server.Client_Mutex)
								Local Gefunden:Int = 0
								For Local Client:TClient = EachIn Server.Client_List
									If Client.IP = TNetwork.StringIP(Stream.getMsgIP())
										If Client.PortUDP = Stream.getmsgport()
											M.Client = Client
											M.Fast = 1
											Gefunden = 1
											Exit
										EndIf
									EndIf
								Next
								UnlockMutex (Server.Client_Mutex)
								
								While Not Eof(Stream)
									Local Line:String = Stream.ReadLine()
									If Line = "[/PACK]" Then
										If Gefunden = 1 Then
											LockMutex (Server.Eingang_Mutex)
											Server.Eingang_List.AddLast M
											UnlockMutex (Server.Eingang_Mutex)
										EndIf
										Exit
									EndIf
									M.Add(Line)
								Wend
							End If
						Wend
					EndIf
					
				EndIf
				
				
				LockMutex (Server.Client_Mutex)
				For Local Client:TClient = EachIn Server.Client_List
					Local Nachrichten:Int = 0
					LockMutex (Client.Send_UDP_Mutex)
					For Local M:TMessage = EachIn Client.Send_UDP_List
						Stream.SetRemotePort(Client.PortUDP)
						Stream.SetRemoteIP(TNetwork.IntIP(Client.IP))
						Stream.WriteLine("[PACK]")
						For Local Text:String = EachIn M.Inhalt
							Stream.WriteLine(Text)
						Next
						Stream.WriteLine("[/PACK]")
						Client.Send_UDP_List.Remove M
						Nachrichten = Nachrichten + 1
						If Nachrichten > 15 Then Exit
					Next			
					UnlockMutex (Client.Send_UDP_Mutex)
					If Nachrichten > 0 Then
						Stream.SendMsg()
						Stream.Flush()
					EndIf
					
				Next
				UnlockMutex (Server.Client_Mutex)
								
			EndIf
			
			Delay 1
		Forever
	End Function
	
	Function DoClient:Object(data:Object)
		Local Client:TClient = TClient(data)
		Local Server:TServer = TServer(client.Server)
		Local Stream:TTCPStream = client.Stream
		
		Local GemeldetTimer:Int = MilliSecs()
		
		Local BannTimer:Int = MilliSecs()
		Local MsgCount:Int = 0
		
		LockMutex(Server.Client_Mutex)
		Server.Client_List.AddLast Client
		UnlockMutex(Server.Client_Mutex)
		
		Local FileSendTimer:Int = MilliSecs()
		
		Repeat
			If Stream.GetState() <> 1 Then
				Exit
			End If
			
			If MilliSecs() - GemeldetTimer >= 15000 Then
				Exit
			End If
			
			If MsgCount > Server.Bann_MSG Then
				Local Bann:TBann = New TBann
				Bann.IP = Client.IP
				Bann.Timer = MilliSecs()
				LockMutex (Server.Bann_Mutex)
				Server.Bann_List.AddLast Bann
				UnlockMutex (Server.Bann_Mutex)
				Exit
			EndIf
			
			If MilliSecs() - BannTimer >= 1000 Then
				MsgCount = 0
				BannTimer = MilliSecs()
			End If
			
			
			If Stream.RecvAvail() Then
				While Stream.RecvMsg() ; Wend
				If Stream.Size() > 0 Then
					MsgCount = MsgCount + 1
					GemeldetTimer = MilliSecs()
					
					While Not Stream.Eof()
						Local Line:String = stream.ReadLine()
							
						If Line = "[UDP]" Then
							While Not Eof(Stream)
								Line = Stream.ReadLine()
								If Line = "[/UDP]" Then
									Exit
								EndIf
								Client.PortUDP = Int(Line)
								
							Wend
						End If
				
						If Line = "[PING]" Then
							Local MS:String = ""
							While Not Eof(Stream)
								Line = Stream.ReadLine()
								If Line = "[/PING]" Then
									Stream.WriteLine("[BACK]")
									Stream.WriteLine(MS)
									Stream.WriteLine("[/BACK]")
									Stream.SendMsg()
									Exit
								EndIf
								
								Local Pos:Int = Instr(line, ":", 1)
								Local Bef:String = Left(line, Pos - 1)
							
								If Bef = "MS" Then MS = Mid(Line, Pos + 1, Len(Line))
								If Bef = "P" Then Client.Ping_Ping = Int(Mid(Line, Pos + 1, Len(Line))) 
							Wend
						End If
						
						If Line = "[PACK]" Then
							Local M:TMessage = NewMessage()
							M.Client = Client
							While Not Eof(Stream)
								Line = Stream.ReadLine()
								If Line = "[/PACK]" Then
									LockMutex (Server.Eingang_Mutex)
									Server.Eingang_List.AddLast M
									UnlockMutex (Server.Eingang_Mutex)
									Exit
								EndIf
								M.Add(Line)
							Wend
							
						End If
						
						If Line = "[FILE]" Then
							Local Name:String = stream.ReadLine()
							Local Size:Int = Int(stream.ReadLine())
							Local Muss:Int = Int(stream.ReadLine())
							
							LockMutex Server.Eingang_File_Mutex
							Local InFile:TFileSend
							For Local F:TFileSend = EachIn Server.Eingang_File_List
								If F.Name = Name Then
									If F.Client = Client Then
										InFile = F
										Exit
									EndIf
								End If
							Next
							
							If InFile = Null Then
								InFile = New TFileSend
								InFile.Name = Name
								InFile.Count = Size
								InFile.Bank = CreateBank(Size)
								InFile.Client = Client
								Server.Eingang_File_List.AddLast InFile
							
							End If
							
							For Local B:Int = 1 To Muss
								PokeByte(InFile.Bank, InFile.Bank.Size() - InFile.Count, ReadByte(Stream))
								InFile.Count = InFile.Count - 1
							Next
							
							If Muss = 0 Then Server.Eingang_File_List.Remove InFile
							If InFile.Count = 0 Then InFile.Fertig = 1
							UnlockMutex Server.Eingang_File_Mutex
							
							
						EndIf
							
					Wend
				EndIf
			EndIf
			
			Local Nachrichten:Int = 0
			
			If MilliSecs() - FileSendTimer > 100 Then
				FileSendTimer = MilliSecs()
				LockMutex (Client.Send_File_Mutex)
				For Local F:TFileSend = EachIn Client.Send_File_List
					If F.Bank = Null Then
						F.Bank = LoadBank(F.Path)
						If F.Bank = Null Then
							Client.Send_File_List.Remove F
							Exit
						EndIf
					Else
						Local MussSenden:Int = f.Bank.Size() - f.Count
						If MussSenden >= 4096 Then MussSenden = 4096
						If MussSenden > 0 Then
							Stream.WriteLine("[FILE]")
							Stream.WriteLine(F.Name)
							Stream.WriteLine(F.Bank.Size())
							Stream.WriteLine(MussSenden)
							For Local B:Int = 1 To MussSenden
								Stream.WriteByte(PeekByte(F.Bank, F.Count))
								F.Count = F.Count + 1
							Next
							Stream.SendMsg()
						EndIf
						If MussSenden = 0 Then
							Client.Send_File_List.Remove F
						End If
					End If
					
					Exit
				Next
				UnlockMutex (Client.Send_File_Mutex)
			EndIf
			
			LockMutex (Client.Send_Mutex)
			For Local M:TMessage = EachIn Client.Send_List
				Stream.WriteLine("[PACK]")
				For Local Text:String = EachIn M.Inhalt
					Stream.WriteLine(Text)
				Next
				Stream.WriteLine("[/PACK]")
				Client.Send_List.Remove M
				Nachrichten = Nachrichten + 1
				If Nachrichten > 15 Then Exit
			Next			
			UnlockMutex (Client.Send_Mutex)
			If Nachrichten > 0 Then Stream.SendMsg()
			
			Delay 1
		Forever
		
		LockMutex (Server.Eingang_Mutex)
		For Local M:TMessage = EachIn Server.Eingang_List
			If M.Client = Client Then Server.Eingang_File_List.Remove M
		Next
		UnlockMutex (Server.Eingang_Mutex)
		
		LockMutex(Server.Eingang_File_Mutex)
		For Local F:TFileSend = EachIn Server.Eingang_File_List
			If F.Client = Client Then Server.Eingang_File_List.Remove F
		Next
		UnlockMutex(Server.Eingang_File_Mutex)
		
		Client.Verbunden = 0
		LockMutex(Server.Client_Mutex)
		Server.Client_List.Remove Client
		UnlockMutex(Server.Client_Mutex)
		Stream.Flush()
		Stream.Close()
	End Function
	
	
End Type

Rem
	bbdoc: einstellung ab wieviel eingangsnachrichten ein dos angriff abgefangen werden soll
End Rem
Function DosBannMSG_Count(Server:TServer, CountMSG:Int)
	If Server Then
		Server.Bann_MSG = CountMSG
	End If
End Function

Rem
	bbdoc: einstellung wie lange ein client gebannt sein soll (in sekunden)
End Rem
Function DosBann_Time(Server:TServer, Sekunden:Int)
	If Server Then
		Server.Bann_Sek = Sekunden
	End If
End Function

Rem
	bbdoc: erstellt einen server.
	returns: Server:TServer
End Rem
Function CreateServer:TServer(TCP_Port:Int, UDP_Port:Int)
	Local S:TServer = New TServer
	S.Stream = New TTCPStream
	S.Client_List = New TList
	S.Client_Mutex = CreateMutex()
	S.Eingang_List = New TList
	S.Eingang_Mutex = CreateMutex()
	S.Bann_List = New TList
	S.Bann_Mutex = CreateMutex()
	S.Bann_MSG = 15
	S.Bann_Sek = 10
	S.Eingang_File_Mutex = CreateMutex()
	S.Eingang_File_List = New TList
	
	If Not S.Stream.Init() Then Return Null
	If Not S.Stream.SetLocalPort(TCP_Port) Then Return Null
	If Not S.Stream.Listen() Then Return Null
	
	S.UDP = New TUDPStream
	If Not S.UDP.Init() Then Return Null
	S.UDP.SetLocalPort(UDP_Port)
	
	Local TH:TThread = CreateThread(tserver.Connect_Server, S)
	DetachThread(TH)
		
	TH:TThread = CreateThread(TServer.DoClient_UDP, S)
	DetachThread(TH)
									
	Return S
End Function

Private

Type TBann
	Field IP:String
	Field Timer:Int
End Type

Public
	
Rem
	bbdoc: TClient klasse
End Rem
Type TClient	
	Field Stream:TTCPStream
	Field UDP:TUDPStream
	
	Field Send_List:TList
	Field Send_Mutex:TMutex
	Field Server:TServer
	
	Field Eingang_List:TList
	Field Eingang_Mutex:TMutex
	
	Field Eingang_File_List:TList
	Field Eingang_File_Mutex:TMutex
	
	Field Send_File_List:TList
	Field Send_File_Mutex:TMutex
	
	Field Send_UDP_List:TList
	Field Send_UDP_Mutex:TMutex
	
	Field Port:Int
	Field IP:String
	Field PortUDP:Int
	
	Field Verbunden:Int
	
	Field Ping_Send:Int
	Field Ping_SendTimer:Int
	Field Ping_Ping:Int
	
	Function DoServer_UDP:Object(data:Object)
		Local Client:TClient = TClient(data)
		Local Stream:TUDPStream = client.UDP
		
		Repeat
			If Stream Then
				If Stream.RecvAvail() Then
					While Stream.RecvMsg() ; Wend
					
					If Stream.Size() > 0 Then
						While Not Stream.Eof()
							Local Line:String = Stream.ReadLine()
							
							If Line = "[PACK]" Then
								Local M:TMessage = NewMessage()
								M.Fast = 1
															
								While Not Eof(Stream)
									Local Line:String = Stream.ReadLine()
									If Line = "[/PACK]" Then
										LockMutex (Client.Eingang_Mutex)
										Client.Eingang_List.AddLast M
										UnlockMutex (Client.Eingang_Mutex)
										Exit
									EndIf
									M.Add(Line)
								Wend
							End If
						Wend
					EndIf
					
				EndIf
				
				LockMutex(Client.Send_UDP_Mutex)
				Local Nachrichten:Int = 0
				For Local M:TMessage = EachIn Client.Send_UDP_List
					Stream.WriteLine("[PACK]")
					For Local Text:String = EachIn M.Inhalt
						Stream.WriteLine(Text)
					Next
					Stream.WriteLine("[/PACK]")
					Client.Send_UDP_List.Remove M
					Nachrichten = Nachrichten + 1
					If Nachrichten > 15 Then Exit
				Next
				UnlockMutex(Client.Send_UDP_Mutex)
				If Nachrichten > 0 Then
					Stream.SendMsg()
					Stream.Flush()
				EndIf
													
			EndIf
			
			Delay 1
		Forever
	End Function
		
	Function DoServer:Object(data:Object)
		Local Client:TClient = TClient (data)
		Local Stream:TTCPStream = client.Stream
		
		Client.Verbunden = 1
		
		Local GemeldetTimer:Int = MilliSecs()
		Local FileSendTimer:Int = MilliSecs()
		
		Local SendUDP_Port:Int = 0
		Local UDP_Port:Int = Client.UDP.GetLocalPort ()
		Repeat
			If Stream.GetState() <> 1 Then
				Exit
			End If
			
			If MilliSecs() - GemeldetTimer >= 15000 Then
				Exit
			End If
			
			If Stream.RecvAvail() Then
				While Stream.RecvMsg() ; Wend
				If Stream.Size() > 0 Then
					GemeldetTimer = MilliSecs()
					While Not Stream.Eof()
						Local Line:String = stream.ReadLine()
							
						If Line = "[PACK]" Then
							Local M:TMessage = NewMessage()
							While Not Eof(Stream)
								Line = Stream.ReadLine()
								If Line = "[/PACK]" Then
									LockMutex (Client.Eingang_Mutex)
									Client.Eingang_List.AddLast M
									UnlockMutex (Client.Eingang_Mutex)
									Exit
								EndIf
								M.Add(Line)
							Wend
						End If
						
						If Line = "[BACK]" Then
							Client.Ping_Send = 0
							Client.Ping_SendTimer = MilliSecs()
							
							While Not Eof(Stream)
								Line = Stream.ReadLine()
								If Line = "[/BACK]" Then Exit
								
								Client.Ping_Ping = MilliSecs() - Int(Line)
							Wend
						End If
						
						If Line = "[FILE]" Then
							Local Name:String = stream.ReadLine()
							Local Size:Int = Int(stream.ReadLine())
							Local Muss:Int = Int(stream.ReadLine())
							
							LockMutex Client.Eingang_File_Mutex
							Local InFile:TFileSend
							For Local F:TFileSend = EachIn Client.Eingang_File_List
								If F.Name = Name Then
									If F.Client = Client Then
										InFile = F
										Exit
									EndIf
								End If
							Next
							
							If InFile = Null Then
								InFile = New TFileSend
								InFile.Name = Name
								InFile.Count = Size
								InFile.Bank = CreateBank(Size)
								InFile.Client = Client
								Client.Eingang_File_List.AddLast InFile
							
							End If
							
							For Local B:Int = 1 To Muss
								PokeByte(InFile.Bank, InFile.Bank.Size() - InFile.Count, ReadByte(Stream))
								InFile.Count = InFile.Count - 1
							Next
							If Muss = 0 Then Client.Eingang_File_List.Remove InFile
							If InFile.Count = 0 Then InFile.Fertig = 1
							UnlockMutex Client.Eingang_File_Mutex
							
							
						EndIf
					Wend
				EndIf
			EndIf

			Local Nachrichten:Int = 0
			If SendUDP_Port = 0 Then
				SendUDP_Port = 1
				Stream.WriteLine("[UDP]")
				Stream.WriteLine(UDP_Port)
				Stream.WriteLine("[/UDP]")
				Nachrichten = Nachrichten + 1
			End If
			
			If Client.Ping_Send = 0 Then				
				If MilliSecs() - Client.Ping_SendTimer >= 1000 Then
					Client.Ping_Send = 1
					Stream.WriteLine("[PING]")
					Stream.WriteLine("MS:" + MilliSecs())
					Stream.WriteLine("P:" + Client.Ping_Ping)
					Stream.WriteLine("[/PING]")
					Nachrichten = Nachrichten + 1
				End If
			EndIf
			
			LockMutex (Client.Send_Mutex)
			For Local M:TMessage = EachIn Client.Send_List
				Stream.WriteLine("[PACK]")
				For Local Text:String = EachIn M.Inhalt
					Stream.WriteLine(Text)
				Next
				Stream.WriteLine("[/PACK]")
				Client.Send_List.Remove M
				Nachrichten = Nachrichten + 1
				If Nachrichten > 15 Then Exit
			Next
			UnlockMutex (Client.Send_Mutex)
			If Nachrichten > 0 Then Stream.SendMsg()
			
			If MilliSecs() - FileSendTimer > 100 Then
				FileSendTimer = MilliSecs()
				LockMutex (Client.Send_File_Mutex)
				For Local F:TFileSend = EachIn Client.Send_File_List
					If F.Bank = Null Then
						F.Bank = LoadBank(F.Path)
						If F.Bank = Null Then
							Client.Send_File_List.Remove F
							Exit
						EndIf
					Else
						Local MussSenden:Int = f.Bank.Size() - f.Count
						If MussSenden >= 4096 Then MussSenden = 4096
						
						If MussSenden > 0 Then
							Stream.WriteLine("[FILE]")
							Stream.WriteLine(F.Name)
							Stream.WriteLine(F.Bank.Size())
							Stream.WriteLine(MussSenden)
							For Local B:Int = 1 To MussSenden
								Stream.WriteByte(PeekByte(F.Bank, F.Count))
								F.Count = F.Count + 1
							Next
							Stream.SendMsg()
						EndIf
						If MussSenden = 0 Then
							Client.Send_File_List.Remove F
						End If
					End If
					
					Exit
				Next
				UnlockMutex (Client.Send_File_Mutex)
			EndIf
			
			Delay 1
		Forever
		Stream.Flush()
		Stream.Close()
		Client.Verbunden = 0
	End Function
EndType

Rem
	bbdoc: gibt eine 1 zurück wenn man verbunden ist
	returns: I:Int
End Rem
Function NetworkConnect:Int(Client:TClient)
	If Client Then Return Client.Verbunden
End Function

Rem
	bbdoc: man erhällt die liste mit allen clients
	returns: List:TList 
End Rem
Function GetClientList:TList(Server:TServer)
	If Server Then
		Local List:TList = New TList
		LockMutex Server.Client_Mutex
		For Local C:TClient = EachIn Server.Client_List
			List.AddLast C
		Next
		UnlockMutex Server.Client_Mutex
		Return List
	Else
		Return Null
	EndIf
End Function

Rem
	bbdoc: ermittelt die latenz zwischen client, server  und zurück
	returns: I:Int
End Rem
Function ClientLatenz:Int(Client:TClient)
	Return Client.Ping_Ping
End Function

Rem
	bbdoc: versucht eine verbindung mit dem server herzustellen
	returns: Client:TClient
End Rem
Function ConnectServer:TClient(IP:String, TCP_Port:Int, UDP_Port:Int)
	Local Client:TClient = New TClient
	Client.Port = TCP_Port
	Client.IP = IP
	Client.Stream = New TTCPStream
	
	Client.Eingang_List = New TList
	Client.Send_List = New TList
	Client.Eingang_Mutex = CreateMutex()
	Client.Send_Mutex = CreateMutex()
	Client.Ping_SendTimer = MilliSecs()
	Client.Eingang_File_List = New TList
	Client.Eingang_File_Mutex = CreateMutex()
	Client.Send_File_List = New TList
	Client.Send_File_Mutex = CreateMutex()
	Client.Send_UDP_List = New TList
	Client.Send_UDP_Mutex = CreateMutex()
	
	If Not Client.Stream.Init() Then Return Null
	If Not Client.Stream.SetLocalPort() Then Return Null
	Client.Stream.SetRemoteIP(TNetwork.GetHostIP(IP))
	Client.Stream.SetRemotePort(TCP_Port)
	If Not Client.Stream.Connect() Then Return Null
	
	Client.UDP = New TUDPStream
	If Not Client.UDP.Init() Then Return Null
	Client.UDP.SetRemoteIP(TNetwork.IntIP(IP))
	Client.UDP.SetLocalPort()
	Client.UDP.SetRemotePort(UDP_Port)
	
	Client.PortUDP = UDP_Port
	
	Local TH:TThread = CreateThread(TClient.DoServer, Client)
	DetachThread(TH)
	
	TH = CreateThread(TClient.DoServer_UDP, Client)
	DetachThread(TH)
	
	Return Client
End Function

Rem
	bbdoc: eingekommene nachrichten abfragen.
	returns: List:TList 
End Rem
Function GetMessages:TList(O:Object)
	Local Server:TServer = TServer(O)
	Local Client:TClient = TClient(O)
	
	Local List:TList = New TList
	If Server Then
		LockMutex(Server.Eingang_Mutex)
		For Local M:TMessage = EachIn Server.Eingang_List
			List.AddLast M
			Server.Eingang_List.Remove M
		Next
		UnlockMutex(Server.Eingang_Mutex)
	End If
	
	If Client Then
		LockMutex(Client.Eingang_Mutex)
		For Local M:TMessage = EachIn Client.Eingang_List
			List.AddLast M
			Client.Eingang_List.Remove M
		Next
		UnlockMutex(Client.Eingang_Mutex)
	End If
	
	Return List
End Function