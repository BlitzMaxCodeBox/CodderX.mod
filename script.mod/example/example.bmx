SuperStrict

Import codderx.script


Local Script:TScript = createscript("Test")
InsertScript(Script, "     Print  (Wert Bernd , 123, test)   Print ( Max, Voxel   , Toll) End ()")
Script = Null
Script = GetScript("Test")

Repeat
	Local S:Tscript = ReturnScript(script)
	If S Then
		Local Befehl:String = ReturnScriptBefehl(s)
		
		If Befehl.ToLower() = "print" Then
			Print "-"
			Print ScriptMsg(S)
			Print ScriptMsg(S)
			Print ScriptMsg(S)
		EndIf
		
		If Befehl.ToLower() = "end" Then
			End
		End If
		
	End If
Forever