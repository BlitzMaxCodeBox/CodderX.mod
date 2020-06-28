SuperStrict

Import codderx.Network

Rem
Bitte beachtet das dieses Beispiel nur mit Multithreadreading Funktionieren kann.
endrem

Local Server:TServer = CreateServer(5545, 6685)
If Server Then
	Print "Server gestartet."
	DosBannMSG_Count(Server, 15)
	DosBann_Time(Server, 10)
	
	Graphics 320, 220
	
	Local ClientList:TList = New TList
	Local DY:Int = 0
	Repeat
		ClientList = GetClientList(Server)
		If ClientList Then
			Local VerbundeneClients:Int = ClientList.Count()
			DrawText "Clients: " + VerbundeneClients, 10, 10 + DY
			DY = DY + 12
			For Local C:TClient = EachIn ClientList
				Local Latenz:Int = ClientLatenz(C)
				DrawText ">" + C.IP + ":" + C.Port + " Latenz: " + Latenz, 10, 10 + DY
				DY = DY + 12
			Next
		End If
		DY = 0
				
		For Local Message:TMessage = EachIn GetMessages(Server)
			Print "Vom Client: " + Message.Client.IP + ":" + Message.Client.Port + " " + ClientLatenz(Message.Client)
			For Local A:Int = 1 To Message.Count()
				Print Message.Get()
			Next
			
			If GetNetwork(Message) = 0 Then
				Local BackMessage:TMessage = NewMessage()
				BackMessage.Add("Danke")
				BackMessage.Add("vom")
				BackMessage.Add("Server")
				BackMessage.Send(Message.Client)
			EndIf
			
			If GetNetwork(Message) = 1 Then
				Local BackMessage:TMessage = NewMessage()
				BackMessage.Add("UDP")
				BackMessage.Add("JEJ")
				BackMessage.Add("---")
				BackMessage.Send(Message.Client, 1)
			End If
					
		Next
		
		Local FileList:TList = GetFile(server)
		If FileList Then
			Local TY:Int
			For Local File:TFileSend = EachIn FileList
				If File Then
					If File.Fertig = 1 Then
						SaveBank(File.Bank, File.Name)
						SendFile(File.client, File.Name)
					Else
						Local X:Int = GraphicsWidth() - 110
						Local Y:Int = 10 + ty
						Local W:Int = 100
						Local H:Int = 15
						DrawRect X, Y, W, H
						SetColor 0, 0, 0
						DrawRect X + 1, Y + 1, W - 2, H - 2
						SetColor 0, 0, 255
						DrawRect X + 1, Y + 1, ProGrafik(W - 2, File.bank.size(), File.bank.size() - File.count), H - 2
						SetColor 255, 255, 255
						DrawText File.name, X + 2, Y + 1
						TY = TY + 25
					
					End If
				End If
			Next
		EndIf
		If AppTerminate() Then Exit
		Flip
		Cls
	Forever
End If

Function ProGrafik:Float(GrafischeGrosse:Float, MaximalPoint:Float, HavePoint:Float, Prufung:Int = 1)
	Local MaxP:Float = MaximalPoint / 100
	Local Prozent:Float = HavePoint / MaxP
	If Prufung = 1 Then
		If Prozent > 100 Then Prozent = 100
	EndIf
	Local Bild:Float = (GrafischeGrosse / 100) * Prozent
	If Prufung = 1 Then
		If Bild < 0 Then Bild = 0
	EndIf
	Return Bild
End Function