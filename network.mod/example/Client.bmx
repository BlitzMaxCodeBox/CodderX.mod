SuperStrict

Import codderx.network

Rem
Bitte beachtet das dieses Beispiel nur mit Multithreadreading Funktionieren kann.
endrem

Local Client:TClient = ConnectServer("127.0.0.1", 5545, 6685)
If Client Then
	Print "Client erfolgreich verbunden."
	
	Graphics 320, 220
	
	Local MS:Int = MilliSecs()
	SendFile(Client, "tmp\000.jpg")
	
	Local UDPMS:Int = MilliSecs()
	
	Repeat
		If MilliSecs() - UDPMS >= 1000 Then
			Local MSG:TMessage = NewMessage()
			MSG.Add("Hey")
			MSG.Add("UDP")
			MSG.Add("--")
			MSG.Send(Client, 1)
			UDPMS = MilliSecs()
		End If
		
		If MilliSecs() - MS >= 5000 Then
			Local MSG:TMessage = NewMessage()
			MSG.Add("Hallo")
			MSG.Add("Vom")
			MSG.Add("Client")
			MSG.Send(Client)
			MS = MilliSecs()
		EndIf
		
		DrawText ClientLatenz(Client), 10, 10
		
		For Local Message:TMessage = EachIn GetMessages(Client)
			If GetNetwork(Message) = 0 Then
				For Local A:Int = 1 To Message.Count()
					Print Message.Get()
				Next
			EndIf
			
			If GetNetwork(Message) = 1 Then
				For Local A:Int = 1 To Message.Count()
					Print Message.Get()
				Next
			End If
		Next
		
		Local FileList:TList = GetFile(Client)
		If FileList Then
			Local TY:Int
			For Local File:Tfilesend = EachIn FileList
				If File Then
					If File.Fertig = 1 Then
						SaveBank(File.Bank, "Rofl.jpg")
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
		
		If NetworkConnect(Client) = 0 Then Exit
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