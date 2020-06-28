ModuleInfo "Version: 1.0"
ModuleInfo "License: Open"
ModuleInfo "Copyright: Wrapper by Mathias Kwiatkowski"
ModuleInfo "History: 1.0 Release"
import brl.blitz
import brl.retro
TScript^Object{
List:TList&=mem:p("_codderx_script_TScript_List")
.Befehl$&
.Inhalt:TList&
-New%()="_codderx_script_TScript_New"
+Create:TScript(Name$)="_codderx_script_TScript_Create"
-Remove%()="_codderx_script_TScript_Remove"
-Insert%(Text$)="_codderx_script_TScript_Insert"
}="codderx_script_TScript"
CreateScript:TScript(Name$)="codderx_script_CreateScript"
RemoveScript%(S:TScript)="codderx_script_RemoveScript"
InsertScript%(S:TScript,Text$)="codderx_script_InsertScript"
SplittString:TList(Strg$,Search$=$"~n")="codderx_script_SplittString"
GetScript:TScript(Name$)="codderx_script_GetScript"
ReturnScript:TScript(S:TScript)="codderx_script_ReturnScript"
ReturnScriptBefehl$(S:TScript)="codderx_script_ReturnScriptBefehl"
ScriptMsg$(S:TScript)="codderx_script_ScriptMsg"
