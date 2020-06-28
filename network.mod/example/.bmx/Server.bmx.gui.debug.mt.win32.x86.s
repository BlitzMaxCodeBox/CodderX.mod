	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxml_maxml
	extrn	___bb_maxutil_maxutil
	extrn	___bb_network_network
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_bank_SaveBank
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_linkedlist_TList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetColor
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_standardio_Print
	extrn	_codderx_network_ClientLatenz
	extrn	_codderx_network_CreateServer
	extrn	_codderx_network_DosBannMSG_Count
	extrn	_codderx_network_DosBann_Time
	extrn	_codderx_network_GetClientList
	extrn	_codderx_network_GetFile
	extrn	_codderx_network_GetMessages
	extrn	_codderx_network_GetNetwork
	extrn	_codderx_network_NewMessage
	extrn	_codderx_network_SendFile
	extrn	_codderx_network_TClient
	extrn	_codderx_network_TFileSend
	extrn	_codderx_network_TMessage
	public	__bb_main
	public	_bb_ProGrafik
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,92
	push	ebx
	push	esi
	push	edi
	cmp	dword [_268],0
	je	_269
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_269:
	mov	dword [_268],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-48],0
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	eax,ebp
	push	eax
	push	_265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_network_network
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_maxml_maxml
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6685
	push	5545
	call	_codderx_network_CreateServer
	add	esp,8
	mov	dword [ebp-4],eax
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_61
	mov	eax,ebp
	push	eax
	push	_262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_22
	call	_brl_standardio_Print
	add	esp,4
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	15
	push	dword [ebp-4]
	call	_codderx_network_DosBannMSG_Count
	add	esp,8
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	10
	push	dword [ebp-4]
	call	_codderx_network_DosBann_Time
	add	esp,8
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	220
	push	320
	call	_brl_graphics_Graphics
	add	esp,20
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_25:
_23:
	mov	eax,ebp
	push	eax
	push	_259
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_codderx_network_GetClientList
	add	esp,4
	mov	dword [ebp-8],eax
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_73
	mov	eax,ebp
	push	eax
	push	_103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_76
	call	_brl_blitz_NullObjectError
_76:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	add	eax,10
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	push	1092616192
	push	dword [ebp-20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_26
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-12],12
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [ebp-8]
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_84
	call	_brl_blitz_NullObjectError
_84:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_27
_29:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_89
	call	_brl_blitz_NullObjectError
_89:
	push	_codderx_network_TClient
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_27
	mov	eax,ebp
	push	eax
	push	_98
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_codderx_network_ClientLatenz
	add	esp,4
	mov	dword [ebp-28],eax
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_94
	call	_brl_blitz_NullObjectError
_94:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_96
	call	_brl_blitz_NullObjectError
_96:
	mov	eax,dword [ebp-12]
	add	eax,10
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	push	1092616192
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_31
	push	dword [ebx+60]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_30
	push	dword [esi+64]
	push	_2
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-12],12
	call	dword [_bbOnDebugLeaveScope]
_27:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_87
	call	_brl_blitz_NullObjectError
_87:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
	call	dword [_bbOnDebugLeaveScope]
_73:
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	dword [ebp-4]
	call	_codderx_network_GetMessages
	add	esp,4
	mov	dword [ebp-84],eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_110
	call	_brl_blitz_NullObjectError
_110:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-88],eax
	jmp	_32
_34:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_115
	call	_brl_blitz_NullObjectError
_115:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_32
	mov	eax,ebp
	push	eax
	push	_178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_118
	call	_brl_blitz_NullObjectError
_118:
	mov	edi,dword [ebx+12]
	cmp	edi,_bbNullObject
	jne	_120
	call	_brl_blitz_NullObjectError
_120:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	push	dword [ebx+12]
	call	_codderx_network_ClientLatenz
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_36
	push	dword [esi+60]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_30
	push	dword [edi+64]
	push	_35
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	mov	dword [ebp-36],1
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	jmp	_131
_39:
	mov	eax,ebp
	push	eax
	push	_136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_135
	call	_brl_blitz_NullObjectError
_135:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_37:
	add	dword [ebp-36],1
_131:
	cmp	dword [ebp-36],ebx
	jle	_39
_38:
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	call	_codderx_network_GetNetwork
	add	esp,4
	cmp	eax,0
	jne	_139
	mov	eax,ebp
	push	eax
	push	_156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-40],eax
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_144
	call	_brl_blitz_NullObjectError
_144:
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	push	_42
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_153
	call	_brl_blitz_NullObjectError
_153:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_155
	call	_brl_blitz_NullObjectError
_155:
	push	0
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_139:
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	call	_codderx_network_GetNetwork
	add	esp,4
	cmp	eax,1
	jne	_160
	mov	eax,ebp
	push	eax
	push	_177
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-44],eax
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	push	1
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_160:
	call	dword [_bbOnDebugLeaveScope]
_32:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_113
	call	_brl_blitz_NullObjectError
_113:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_codderx_network_GetFile
	add	esp,4
	mov	dword [ebp-16],eax
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_183
	mov	eax,ebp
	push	eax
	push	_251
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	eax,dword [ebp-16]
	mov	dword [ebp-80],eax
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_46
_48:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-52],_bbNullObject
	je	_197
	mov	eax,ebp
	push	eax
	push	_247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	cmp	dword [ebx+28],1
	jne	_201
	mov	eax,ebp
	push	eax
	push	_212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_204
	call	_brl_blitz_NullObjectError
_204:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	push	dword [ebx+8]
	push	dword [esi+16]
	call	_brl_bank_SaveBank
	add	esp,8
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_211
	call	_brl_blitz_NullObjectError
_211:
	push	dword [ebx+8]
	push	dword [esi+24]
	call	_codderx_network_SendFile
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_213
_201:
	mov	eax,ebp
	push	eax
	push	_242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsWidth
	sub	eax,110
	mov	dword [ebp-56],eax
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	add	eax,10
	mov	dword [ebp-60],eax
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],100
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],15
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-68]
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-64]
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-68]
	sub	eax,2
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-64]
	sub	eax,2
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-60]
	add	eax,1
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	add	eax,1
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	mov	edi,dword [ebx+16]
	cmp	edi,_bbNullObject
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_234
	call	_brl_blitz_NullObjectError
_234:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	mov	eax,dword [ebp-68]
	sub	eax,2
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+64]
	add	esp,4
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-64]
	sub	eax,2
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_ProGrafik
	add	esp,16
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-60]
	add	eax,1
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	add	eax,1
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	mov	eax,dword [ebp-60]
	add	eax,1
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	add	eax,2
	mov	dword [ebp+-92],eax
	fild	dword [ebp+-92]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+8]
	call	_brl_max2d_DrawText
	add	esp,12
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-48],25
	call	dword [_bbOnDebugLeaveScope]
_213:
	call	dword [_bbOnDebugLeaveScope]
_197:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_183:
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_254
	mov	eax,ebp
	push	eax
	push	_256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_24
_254:
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	call	dword [_bbOnDebugLeaveScope]
	jmp	_25
_24:
	call	dword [_bbOnDebugLeaveScope]
_61:
	mov	ebx,0
	jmp	_49
_49:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ProGrafik:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	fldz
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	push	ebp
	push	_291
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fdiv	dword [_356]
	fstp	dword [ebp-20]
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fdiv	dword [ebp-20]
	fstp	dword [ebp-24]
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],1
	jne	_275
	push	ebp
	push	_280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fld	dword [_357]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_277
	push	ebp
	push	_279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_358]
	fstp	dword [ebp-24]
	call	dword [_bbOnDebugLeaveScope]
_277:
	call	dword [_bbOnDebugLeaveScope]
_275:
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fdiv	dword [_359]
	fmul	dword [ebp-24]
	fstp	dword [ebp-28]
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],1
	jne	_284
	push	ebp
	push	_289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_286
	push	ebp
	push	_288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	call	dword [_bbOnDebugLeaveScope]
_286:
	call	dword [_bbOnDebugLeaveScope]
_284:
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fstp	dword [ebp-32]
	jmp	_55
_55:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-32]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_268:
	dd	0
_266:
	db	"Server",0
_267:
	db	":TServer",0
	align	4
_265:
	dd	1
	dd	_266
	dd	2
	dd	_266
	dd	_267
	dd	-4
	dd	0
_58:
	db	"$BMXPATH/mod/codderx.mod/network.mod/example/Server.bmx",0
	align	4
_57:
	dd	_58
	dd	9
	dd	1
	align	4
_60:
	dd	_58
	dd	10
	dd	1
_263:
	db	"ClientList",0
_261:
	db	":TList",0
_264:
	db	"DY",0
_102:
	db	"i",0
	align	4
_262:
	dd	3
	dd	0
	dd	2
	dd	_263
	dd	_261
	dd	-8
	dd	2
	dd	_264
	dd	_102
	dd	-12
	dd	0
	align	4
_62:
	dd	_58
	dd	11
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	83,101,114,118,101,114,32,103,101,115,116,97,114,116,101,116
	dw	46
	align	4
_63:
	dd	_58
	dd	12
	dd	2
	align	4
_64:
	dd	_58
	dd	13
	dd	2
	align	4
_65:
	dd	_58
	dd	15
	dd	2
	align	4
_66:
	dd	_58
	dd	17
	dd	2
	align	4
_68:
	dd	_58
	dd	18
	dd	2
	align	4
_70:
	dd	_58
	dd	86
	dd	2
_260:
	db	"FileList",0
	align	4
_259:
	dd	3
	dd	0
	dd	2
	dd	_260
	dd	_261
	dd	-16
	dd	0
	align	4
_71:
	dd	_58
	dd	20
	dd	3
	align	4
_72:
	dd	_58
	dd	21
	dd	3
_104:
	db	"VerbundeneClients",0
	align	4
_103:
	dd	3
	dd	0
	dd	2
	dd	_104
	dd	_102
	dd	-20
	dd	0
	align	4
_74:
	dd	_58
	dd	22
	dd	4
	align	4
_78:
	dd	_58
	dd	23
	dd	4
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,108,105,101,110,116,115,58,32
	align	4
_79:
	dd	_58
	dd	24
	dd	4
	align	4
_80:
	dd	_58
	dd	25
	dd	4
_99:
	db	"C",0
_100:
	db	":TClient",0
_101:
	db	"Latenz",0
	align	4
_98:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_100
	dd	-24
	dd	2
	dd	_101
	dd	_102
	dd	-28
	dd	0
	align	4
_90:
	dd	_58
	dd	26
	dd	5
	align	4
_92:
	dd	_58
	dd	27
	dd	5
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,76,97,116,101,110,122,58,32
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_97:
	dd	_58
	dd	28
	dd	5
	align	4
_105:
	dd	_58
	dd	31
	dd	3
	align	4
_106:
	dd	_58
	dd	33
	dd	3
_179:
	db	"Message",0
_158:
	db	":TMessage",0
	align	4
_178:
	dd	3
	dd	0
	dd	2
	dd	_179
	dd	_158
	dd	-32
	dd	0
	align	4
_116:
	dd	_58
	dd	34
	dd	4
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	86,111,109,32,67,108,105,101,110,116,58,32
	align	4
_127:
	dd	_58
	dd	35
	dd	4
_137:
	db	"A",0
	align	4
_136:
	dd	3
	dd	0
	dd	2
	dd	_137
	dd	_102
	dd	-36
	dd	0
	align	4
_133:
	dd	_58
	dd	36
	dd	5
	align	4
_138:
	dd	_58
	dd	39
	dd	4
_157:
	db	"BackMessage",0
	align	4
_156:
	dd	3
	dd	0
	dd	2
	dd	_157
	dd	_158
	dd	-40
	dd	0
	align	4
_140:
	dd	_58
	dd	40
	dd	5
	align	4
_142:
	dd	_58
	dd	41
	dd	5
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	68,97,110,107,101
	align	4
_145:
	dd	_58
	dd	42
	dd	5
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,111,109
	align	4
_148:
	dd	_58
	dd	43
	dd	5
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	83,101,114,118,101,114
	align	4
_151:
	dd	_58
	dd	44
	dd	5
	align	4
_159:
	dd	_58
	dd	47
	dd	4
	align	4
_177:
	dd	3
	dd	0
	dd	2
	dd	_157
	dd	_158
	dd	-44
	dd	0
	align	4
_161:
	dd	_58
	dd	48
	dd	5
	align	4
_163:
	dd	_58
	dd	49
	dd	5
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	85,68,80
	align	4
_166:
	dd	_58
	dd	50
	dd	5
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	74,69,74
	align	4
_169:
	dd	_58
	dd	51
	dd	5
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	45,45,45
	align	4
_172:
	dd	_58
	dd	52
	dd	5
	align	4
_180:
	dd	_58
	dd	57
	dd	3
	align	4
_182:
	dd	_58
	dd	58
	dd	3
_252:
	db	"TY",0
	align	4
_251:
	dd	3
	dd	0
	dd	2
	dd	_252
	dd	_102
	dd	-48
	dd	0
	align	4
_184:
	dd	_58
	dd	59
	dd	4
	align	4
_186:
	dd	_58
	dd	60
	dd	4
_249:
	db	"File",0
_250:
	db	":TFileSend",0
	align	4
_248:
	dd	3
	dd	0
	dd	2
	dd	_249
	dd	_250
	dd	-52
	dd	0
	align	4
_196:
	dd	_58
	dd	61
	dd	5
	align	4
_247:
	dd	3
	dd	0
	dd	0
	align	4
_198:
	dd	_58
	dd	62
	dd	6
	align	4
_212:
	dd	3
	dd	0
	dd	0
	align	4
_202:
	dd	_58
	dd	63
	dd	7
	align	4
_207:
	dd	_58
	dd	64
	dd	7
_243:
	db	"X",0
_244:
	db	"Y",0
_245:
	db	"W",0
_246:
	db	"H",0
	align	4
_242:
	dd	3
	dd	0
	dd	2
	dd	_243
	dd	_102
	dd	-56
	dd	2
	dd	_244
	dd	_102
	dd	-60
	dd	2
	dd	_245
	dd	_102
	dd	-64
	dd	2
	dd	_246
	dd	_102
	dd	-68
	dd	0
	align	4
_214:
	dd	_58
	dd	66
	dd	7
	align	4
_216:
	dd	_58
	dd	67
	dd	7
	align	4
_218:
	dd	_58
	dd	68
	dd	7
	align	4
_220:
	dd	_58
	dd	69
	dd	7
	align	4
_222:
	dd	_58
	dd	70
	dd	7
	align	4
_223:
	dd	_58
	dd	71
	dd	7
	align	4
_224:
	dd	_58
	dd	72
	dd	7
	align	4
_225:
	dd	_58
	dd	73
	dd	7
	align	4
_226:
	dd	_58
	dd	74
	dd	7
	align	4
_237:
	dd	_58
	dd	75
	dd	7
	align	4
_238:
	dd	_58
	dd	76
	dd	7
	align	4
_241:
	dd	_58
	dd	77
	dd	7
	align	4
_253:
	dd	_58
	dd	83
	dd	3
	align	4
_256:
	dd	3
	dd	0
	dd	0
	align	4
_255:
	dd	_58
	dd	83
	dd	26
	align	4
_257:
	dd	_58
	dd	84
	dd	3
	align	4
_258:
	dd	_58
	dd	85
	dd	3
_292:
	db	"ProGrafik",0
_293:
	db	"GrafischeGrosse",0
_294:
	db	"f",0
_295:
	db	"MaximalPoint",0
_296:
	db	"HavePoint",0
_297:
	db	"Prufung",0
_298:
	db	"MaxP",0
_299:
	db	"Prozent",0
_300:
	db	"Bild",0
	align	4
_291:
	dd	1
	dd	_292
	dd	2
	dd	_293
	dd	_294
	dd	-4
	dd	2
	dd	_295
	dd	_294
	dd	-8
	dd	2
	dd	_296
	dd	_294
	dd	-12
	dd	2
	dd	_297
	dd	_102
	dd	-16
	dd	2
	dd	_298
	dd	_294
	dd	-20
	dd	2
	dd	_299
	dd	_294
	dd	-24
	dd	2
	dd	_300
	dd	_294
	dd	-28
	dd	0
	align	4
_270:
	dd	_58
	dd	90
	dd	2
	align	4
_356:
	dd	0x42c80000
	align	4
_272:
	dd	_58
	dd	91
	dd	2
	align	4
_274:
	dd	_58
	dd	92
	dd	2
	align	4
_280:
	dd	3
	dd	0
	dd	0
	align	4
_276:
	dd	_58
	dd	93
	dd	3
	align	4
_357:
	dd	0x42c80000
	align	4
_279:
	dd	3
	dd	0
	dd	0
	align	4
_278:
	dd	_58
	dd	93
	dd	25
	align	4
_358:
	dd	0x42c80000
	align	4
_281:
	dd	_58
	dd	95
	dd	2
	align	4
_359:
	dd	0x42c80000
	align	4
_283:
	dd	_58
	dd	96
	dd	2
	align	4
_289:
	dd	3
	dd	0
	dd	0
	align	4
_285:
	dd	_58
	dd	97
	dd	3
	align	4
_288:
	dd	3
	dd	0
	dd	0
	align	4
_287:
	dd	_58
	dd	97
	dd	20
	align	4
_290:
	dd	_58
	dd	99
	dd	2
