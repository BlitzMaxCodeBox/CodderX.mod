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
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringFromInt
	extrn	_brl_bank_SaveBank
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetColor
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_standardio_Print
	extrn	_codderx_network_ClientLatenz
	extrn	_codderx_network_ConnectServer
	extrn	_codderx_network_GetFile
	extrn	_codderx_network_GetMessages
	extrn	_codderx_network_GetNetwork
	extrn	_codderx_network_NetworkConnect
	extrn	_codderx_network_NewMessage
	extrn	_codderx_network_SendFile
	extrn	_codderx_network_TFileSend
	extrn	_codderx_network_TMessage
	public	__bb_main
	public	_bb_ProGrafik
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
	push	esi
	push	edi
	cmp	dword [_232],0
	je	_233
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_233:
	mov	dword [_232],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-40],0
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	eax,ebp
	push	eax
	push	_229
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
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6685
	push	5545
	push	_22
	call	_codderx_network_ConnectServer
	add	esp,12
	mov	dword [ebp-4],eax
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_59
	mov	eax,ebp
	push	eax
	push	_226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_23
	call	_brl_standardio_Print
	add	esp,4
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	220
	push	320
	call	_brl_graphics_Graphics
	add	esp,20
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-8],eax
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_24
	push	dword [ebp-4]
	call	_codderx_network_SendFile
	add	esp,8
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-12],eax
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_27:
_25:
	mov	eax,ebp
	push	eax
	push	_223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-12]
	cmp	eax,1000
	jl	_69
	mov	eax,ebp
	push	eax
	push	_85
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-20],eax
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_74
	call	_brl_blitz_NullObjectError
_74:
	push	_28
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_77
	call	_brl_blitz_NullObjectError
_77:
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_80
	call	_brl_blitz_NullObjectError
_80:
	push	_30
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_83
	call	_brl_blitz_NullObjectError
_83:
	push	1
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_69:
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-8]
	cmp	eax,5000
	jl	_89
	mov	eax,ebp
	push	eax
	push	_105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-24],eax
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_94
	call	_brl_blitz_NullObjectError
_94:
	push	_31
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_100
	call	_brl_blitz_NullObjectError
_100:
	push	_33
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_103
	call	_brl_blitz_NullObjectError
_103:
	push	0
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_89:
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-4]
	call	_codderx_network_ClientLatenz
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	push	dword [ebp-4]
	call	_codderx_network_GetMessages
	add	esp,4
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_111
	call	_brl_blitz_NullObjectError
_111:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_34
_36:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_116
	call	_brl_blitz_NullObjectError
_116:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	call	_codderx_network_GetNetwork
	add	esp,4
	cmp	eax,0
	jne	_118
	mov	eax,ebp
	push	eax
	push	_131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],1
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	esi,eax
	jmp	_123
_39:
	mov	eax,ebp
	push	eax
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_127
	call	_brl_blitz_NullObjectError
_127:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_37:
	add	dword [ebp-32],1
_123:
	cmp	dword [ebp-32],esi
	jle	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_118:
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	call	_codderx_network_GetNetwork
	add	esp,4
	cmp	eax,1
	jne	_133
	mov	eax,ebp
	push	eax
	push	_144
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	mov	dword [ebp-36],1
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_137
	call	_brl_blitz_NullObjectError
_137:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	esi,eax
	jmp	_138
_42:
	mov	eax,ebp
	push	eax
	push	_143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_40:
	add	dword [ebp-36],1
_138:
	cmp	dword [ebp-36],esi
	jle	_42
_41:
	call	dword [_bbOnDebugLeaveScope]
_133:
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_114
	call	_brl_blitz_NullObjectError
_114:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_codderx_network_GetFile
	add	esp,4
	mov	dword [ebp-16],eax
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_150
	mov	eax,ebp
	push	eax
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	eax,dword [ebp-16]
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_157
	call	_brl_blitz_NullObjectError
_157:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_43
_45:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	je	_43
	mov	eax,ebp
	push	eax
	push	_208
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-44],_bbNullObject
	je	_164
	mov	eax,ebp
	push	eax
	push	_207
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	cmp	dword [ebx+28],1
	jne	_168
	mov	eax,ebp
	push	eax
	push	_172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	push	_46
	push	dword [ebx+16]
	call	_brl_bank_SaveBank
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_173
_168:
	mov	eax,ebp
	push	eax
	push	_202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsWidth
	sub	eax,110
	mov	dword [ebp-48],eax
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	add	eax,10
	mov	dword [ebp-52],eax
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],100
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],15
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-52]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-48]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	sub	eax,2
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	sub	eax,2
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-52]
	add	eax,1
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-48]
	add	eax,1
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	mov	edi,dword [ebx+16]
	cmp	edi,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_192
	call	_brl_blitz_NullObjectError
_192:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_194
	call	_brl_blitz_NullObjectError
_194:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_196
	call	_brl_blitz_NullObjectError
_196:
	mov	eax,dword [ebp-60]
	sub	eax,2
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+64]
	add	esp,4
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	sub	eax,2
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_ProGrafik
	add	esp,16
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-52]
	add	eax,1
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-48]
	add	eax,1
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	mov	eax,dword [ebp-52]
	add	eax,1
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-48]
	add	eax,2
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+8]
	call	_brl_max2d_DrawText
	add	esp,12
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-40],25
	call	dword [_bbOnDebugLeaveScope]
_173:
	call	dword [_bbOnDebugLeaveScope]
_164:
	call	dword [_bbOnDebugLeaveScope]
_43:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_150:
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_codderx_network_NetworkConnect
	add	esp,4
	cmp	eax,0
	jne	_214
	mov	eax,ebp
	push	eax
	push	_216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_26
_214:
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_218
	mov	eax,ebp
	push	eax
	push	_220
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_26
_218:
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	call	dword [_bbOnDebugLeaveScope]
	jmp	_27
_26:
	call	dword [_bbOnDebugLeaveScope]
_59:
	mov	ebx,0
	jmp	_47
_47:
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
	push	_255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fdiv	dword [_308]
	fstp	dword [ebp-20]
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fdiv	dword [ebp-20]
	fstp	dword [ebp-24]
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],1
	jne	_239
	push	ebp
	push	_244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fld	dword [_309]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_241
	push	ebp
	push	_243
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_310]
	fstp	dword [ebp-24]
	call	dword [_bbOnDebugLeaveScope]
_241:
	call	dword [_bbOnDebugLeaveScope]
_239:
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fdiv	dword [_311]
	fmul	dword [ebp-24]
	fstp	dword [ebp-28]
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],1
	jne	_248
	push	ebp
	push	_253
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_249
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
	jne	_250
	push	ebp
	push	_252
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	call	dword [_bbOnDebugLeaveScope]
_250:
	call	dword [_bbOnDebugLeaveScope]
_248:
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fstp	dword [ebp-32]
	jmp	_53
_53:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-32]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_232:
	dd	0
_230:
	db	"Client",0
_231:
	db	":TClient",0
	align	4
_229:
	dd	1
	dd	_230
	dd	2
	dd	_230
	dd	_231
	dd	-4
	dd	0
_56:
	db	"$BMXPATH/mod/codderx.mod/network.mod/example/Client.bmx",0
	align	4
_55:
	dd	_56
	dd	9
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,50,55,46,48,46,48,46,49
	align	4
_58:
	dd	_56
	dd	10
	dd	1
_227:
	db	"MS",0
_130:
	db	"i",0
_228:
	db	"UDPMS",0
	align	4
_226:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_130
	dd	-8
	dd	2
	dd	_228
	dd	_130
	dd	-12
	dd	0
	align	4
_60:
	dd	_56
	dd	11
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	67,108,105,101,110,116,32,101,114,102,111,108,103,114,101,105
	dw	99,104,32,118,101,114,98,117,110,100,101,110,46
	align	4
_61:
	dd	_56
	dd	13
	dd	2
	align	4
_62:
	dd	_56
	dd	15
	dd	2
	align	4
_64:
	dd	_56
	dd	16
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,109,112,92,48,48,48,46,106,112,103
	align	4
_65:
	dd	_56
	dd	18
	dd	2
	align	4
_67:
	dd	_56
	dd	84
	dd	2
_224:
	db	"FileList",0
_225:
	db	":TList",0
	align	4
_223:
	dd	3
	dd	0
	dd	2
	dd	_224
	dd	_225
	dd	-16
	dd	0
	align	4
_68:
	dd	_56
	dd	21
	dd	3
_86:
	db	"MSG",0
_87:
	db	":TMessage",0
	align	4
_85:
	dd	3
	dd	0
	dd	2
	dd	_86
	dd	_87
	dd	-20
	dd	0
	align	4
_70:
	dd	_56
	dd	22
	dd	4
	align	4
_72:
	dd	_56
	dd	23
	dd	4
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	72,101,121
	align	4
_75:
	dd	_56
	dd	24
	dd	4
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	85,68,80
	align	4
_78:
	dd	_56
	dd	25
	dd	4
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,45
	align	4
_81:
	dd	_56
	dd	26
	dd	4
	align	4
_84:
	dd	_56
	dd	27
	dd	4
	align	4
_88:
	dd	_56
	dd	30
	dd	3
	align	4
_105:
	dd	3
	dd	0
	dd	2
	dd	_86
	dd	_87
	dd	-24
	dd	0
	align	4
_90:
	dd	_56
	dd	31
	dd	4
	align	4
_92:
	dd	_56
	dd	32
	dd	4
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	72,97,108,108,111
	align	4
_95:
	dd	_56
	dd	33
	dd	4
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	86,111,109
	align	4
_98:
	dd	_56
	dd	34
	dd	4
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	67,108,105,101,110,116
	align	4
_101:
	dd	_56
	dd	35
	dd	4
	align	4
_104:
	dd	_56
	dd	36
	dd	4
	align	4
_106:
	dd	_56
	dd	39
	dd	3
	align	4
_107:
	dd	_56
	dd	41
	dd	3
_146:
	db	"Message",0
	align	4
_145:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_87
	dd	-28
	dd	0
	align	4
_117:
	dd	_56
	dd	42
	dd	4
	align	4
_131:
	dd	3
	dd	0
	dd	0
	align	4
_119:
	dd	_56
	dd	43
	dd	5
_129:
	db	"A",0
	align	4
_128:
	dd	3
	dd	0
	dd	2
	dd	_129
	dd	_130
	dd	-32
	dd	0
	align	4
_125:
	dd	_56
	dd	44
	dd	6
	align	4
_132:
	dd	_56
	dd	48
	dd	4
	align	4
_144:
	dd	3
	dd	0
	dd	0
	align	4
_134:
	dd	_56
	dd	49
	dd	5
	align	4
_143:
	dd	3
	dd	0
	dd	2
	dd	_129
	dd	_130
	dd	-36
	dd	0
	align	4
_140:
	dd	_56
	dd	50
	dd	6
	align	4
_147:
	dd	_56
	dd	55
	dd	3
	align	4
_149:
	dd	_56
	dd	56
	dd	3
_212:
	db	"TY",0
	align	4
_211:
	dd	3
	dd	0
	dd	2
	dd	_212
	dd	_130
	dd	-40
	dd	0
	align	4
_151:
	dd	_56
	dd	57
	dd	4
	align	4
_153:
	dd	_56
	dd	58
	dd	4
_209:
	db	"File",0
_210:
	db	":Tfilesend",0
	align	4
_208:
	dd	3
	dd	0
	dd	2
	dd	_209
	dd	_210
	dd	-44
	dd	0
	align	4
_163:
	dd	_56
	dd	59
	dd	5
	align	4
_207:
	dd	3
	dd	0
	dd	0
	align	4
_165:
	dd	_56
	dd	60
	dd	6
	align	4
_172:
	dd	3
	dd	0
	dd	0
	align	4
_169:
	dd	_56
	dd	61
	dd	7
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	82,111,102,108,46,106,112,103
_203:
	db	"X",0
_204:
	db	"Y",0
_205:
	db	"W",0
_206:
	db	"H",0
	align	4
_202:
	dd	3
	dd	0
	dd	2
	dd	_203
	dd	_130
	dd	-48
	dd	2
	dd	_204
	dd	_130
	dd	-52
	dd	2
	dd	_205
	dd	_130
	dd	-56
	dd	2
	dd	_206
	dd	_130
	dd	-60
	dd	0
	align	4
_174:
	dd	_56
	dd	63
	dd	7
	align	4
_176:
	dd	_56
	dd	64
	dd	7
	align	4
_178:
	dd	_56
	dd	65
	dd	7
	align	4
_180:
	dd	_56
	dd	66
	dd	7
	align	4
_182:
	dd	_56
	dd	67
	dd	7
	align	4
_183:
	dd	_56
	dd	68
	dd	7
	align	4
_184:
	dd	_56
	dd	69
	dd	7
	align	4
_185:
	dd	_56
	dd	70
	dd	7
	align	4
_186:
	dd	_56
	dd	71
	dd	7
	align	4
_197:
	dd	_56
	dd	72
	dd	7
	align	4
_198:
	dd	_56
	dd	73
	dd	7
	align	4
_201:
	dd	_56
	dd	74
	dd	7
	align	4
_213:
	dd	_56
	dd	80
	dd	3
	align	4
_216:
	dd	3
	dd	0
	dd	0
	align	4
_215:
	dd	_56
	dd	80
	dd	38
	align	4
_217:
	dd	_56
	dd	81
	dd	3
	align	4
_220:
	dd	3
	dd	0
	dd	0
	align	4
_219:
	dd	_56
	dd	81
	dd	26
	align	4
_221:
	dd	_56
	dd	82
	dd	3
	align	4
_222:
	dd	_56
	dd	83
	dd	3
_256:
	db	"ProGrafik",0
_257:
	db	"GrafischeGrosse",0
_258:
	db	"f",0
_259:
	db	"MaximalPoint",0
_260:
	db	"HavePoint",0
_261:
	db	"Prufung",0
_262:
	db	"MaxP",0
_263:
	db	"Prozent",0
_264:
	db	"Bild",0
	align	4
_255:
	dd	1
	dd	_256
	dd	2
	dd	_257
	dd	_258
	dd	-4
	dd	2
	dd	_259
	dd	_258
	dd	-8
	dd	2
	dd	_260
	dd	_258
	dd	-12
	dd	2
	dd	_261
	dd	_130
	dd	-16
	dd	2
	dd	_262
	dd	_258
	dd	-20
	dd	2
	dd	_263
	dd	_258
	dd	-24
	dd	2
	dd	_264
	dd	_258
	dd	-28
	dd	0
	align	4
_234:
	dd	_56
	dd	88
	dd	2
	align	4
_308:
	dd	0x42c80000
	align	4
_236:
	dd	_56
	dd	89
	dd	2
	align	4
_238:
	dd	_56
	dd	90
	dd	2
	align	4
_244:
	dd	3
	dd	0
	dd	0
	align	4
_240:
	dd	_56
	dd	91
	dd	3
	align	4
_309:
	dd	0x42c80000
	align	4
_243:
	dd	3
	dd	0
	dd	0
	align	4
_242:
	dd	_56
	dd	91
	dd	25
	align	4
_310:
	dd	0x42c80000
	align	4
_245:
	dd	_56
	dd	93
	dd	2
	align	4
_311:
	dd	0x42c80000
	align	4
_247:
	dd	_56
	dd	94
	dd	2
	align	4
_253:
	dd	3
	dd	0
	dd	0
	align	4
_249:
	dd	_56
	dd	95
	dd	3
	align	4
_252:
	dd	3
	dd	0
	dd	0
	align	4
_251:
	dd	_56
	dd	95
	dd	20
	align	4
_254:
	dd	_56
	dd	97
	dd	2
