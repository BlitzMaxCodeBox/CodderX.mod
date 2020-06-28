SuperStrict

Import brl.Retro
Import brl.linkedlist
Import BRL.StandardIO

Rem
bbdoc: Secure Socket Layer
about: Network Blitzmax Module by Mathias Kwiatkowski v1.0<br><br>
Es sollte darauf geachtet werden das dieses Modul nur im zusammenhang mit der Vertex.Bet funktioniert.<br>Um das Modul nutzen zu können muss man sich im Thread Modus befinden.

End Rem
Module CodderX.Script

ModuleInfo "Version: 1.0"
ModuleInfo "License: Open"
ModuleInfo "Copyright: Wrapper by Mathias Kwiatkowski"

ModuleInfo "History: 1.0 Release"

Rem
	bbdoc: TScript klasse
End Rem
Type TScript
	Global List:TList = New TList
	
	Field Befehl:String
	Field Inhalt:TList
	
	Function Create:TScript(Name:String)
		If Name <> "" Then
			Local S:TScript = New TScript
			S.Befehl = Name
			S.Inhalt = New TList
			List.AddLast S
			Return S
		EndIf
	End Function
	
	Method Remove()
		List.Remove Self
	End Method
	
	Method Insert(Text:String)
		Local Pos0:Int = 1, Pos1:Int
	
		Repeat 
			Pos1:Int = Instr(Text, "(", Pos0)
		
			Local Befehl:String = Mid(Text, Pos0, Pos1 - 1)
			Repeat
				If Right(Befehl, 1) = " " Then
					Befehl = Left(Befehl, Len(Befehl) - 1)
				Else
					Exit
				End If
			Forever
			Repeat
				If Left(Befehl, 1) = " " Then
					Befehl = Right (Befehl, Len(Befehl) - 1)
				Else
					Exit
				End If
			Forever
			
			Local Sc:TScript = New TScript
			Sc.Befehl = Befehl
			Sc.Inhalt = New TList
			Inhalt.AddLast Sc
					
			Pos0 = Instr(Text, ")", Pos1)
			Local Line:String = Mid(Text, Pos1 + 1, Pos0 - Pos1 - 1)
			Local List:TList = SplittString(Line, ",")
			If List Then
				For Local A:String = EachIn List
					Repeat
						If Right(A, 1) = " " Then
							A = Left(A, Len(A) - 1)
						Else
							Exit
						End If
					Forever
					Repeat
						If Left(A, 1) = " " Then
							A = Right (A, Len(A) - 1)
						Else
							Exit
						End If
					Forever
					
					Local Sc1:TScript = New TScript
					Sc1.Befehl = A
					Sc.Inhalt.AddLast Sc1
				Next
			End If
			Pos0 = Pos0
			Text = Mid(Text, Pos0 + 1, Len(Text) - Pos0)
					
			Pos0 = 1
			Pos1 = 0
				
			If Pos0 >= Len(Text) Then Exit
		Forever
	End Method
End Type

Rem
	bbdoc: erstellt ein neues script arschiev
	returns: Script:TScript
End Rem
Function CreateScript:TScript(Name:String)
	Return TScript.Create(Name)
End Function

Rem
	bbdoc: entfernt ein vorhandenes script archiev aus dem speicher
End Rem
Function RemoveScript(S:TScript)
	If S Then
		S.Remove()
	End If
End Function

Rem
	bbdoc: neue line zum script archiev hinzufügen
End Rem
Function InsertScript(S:TScript, Text:String)
	If s Then
		s.Insert(Text)
	EndIf
End Function

Rem
	bbdoc: splittet einen string
	returns: L:TList
End Rem
Function SplittString:TList(Strg:String, Search:String = "~n")
	Local arr:String[] = Strg.Split(search)
	Local L:TList = New TList
	For Local i:Int = 0 Until arr.Length
   		L.AddLast arr[i]
	Next
	Return L
End Function

Rem
	bbdoc: vorhandenes script archiev wiederfinden
	returns: Script:TScript
End Rem
Function GetScript:TScript(Name:String)
	For Local S:TScript = EachIn TScript.List
		If S.Befehl.ToLower() = Name.ToLower() Then Return S
	Next
End Function

Rem
	bbdoc: einheit einheit zurückgeben aus dem script archiev
	returns: Script:TScript
End Rem
Function ReturnScript:TScript(S:TScript)
	If S Then
		For Local Sc:TScript = EachIn S.Inhalt
			S.Inhalt.Remove Sc
			Return Sc
		Next
	EndIf
End Function

Rem
	bbdoc: befehl abfragen
	returns: S:String
End Rem
Function ReturnScriptBefehl:String(S:TScript)
	Return S.Befehl
End Function

Rem
	bbdoc: nachrichten die im befehlssatz vorhanden sind
	returns: S:String
End Rem
Function ScriptMsg:String(S:TScript)
	If S Then
		For Local SC:TScript = EachIn S.Inhalt
			S.Inhalt.Remove SC
			Return SC.Befehl
		Next
	EndIf
End Function



