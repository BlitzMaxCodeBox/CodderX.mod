	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bnetex_bnetex
	extrn	___bb_linkedlist_linkedlist
	extrn	___bb_retro_retro
	extrn	___bb_threads_threads
	extrn	_bbDelay
	extrn	_bbEmptyString
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToInt
	extrn	_brl_bank_CreateBank
	extrn	_brl_bank_LoadBank
	extrn	_brl_bank_PeekByte
	extrn	_brl_bank_PokeByte
	extrn	_brl_linkedlist_TList
	extrn	_brl_retro_Instr
	extrn	_brl_retro_Left
	extrn	_brl_retro_Mid
	extrn	_brl_retro_Replace
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadByte
	extrn	_brl_threads_CreateMutex
	extrn	_brl_threads_CreateThread
	extrn	_brl_threads_DetachThread
	extrn	_brl_threads_LockMutex
	extrn	_brl_threads_UnlockMutex
	extrn	_vertex_bnetex_TNetwork
	extrn	_vertex_bnetex_TTCPStream
	extrn	_vertex_bnetex_TUDPStream
	public	___bb_network_network
	public	__codderx_network_TBann_New
	public	__codderx_network_TClient_DoServer
	public	__codderx_network_TClient_DoServer_UDP
	public	__codderx_network_TClient_New
	public	__codderx_network_TFileSend_New
	public	__codderx_network_TMessage_Add
	public	__codderx_network_TMessage_Count
	public	__codderx_network_TMessage_Get
	public	__codderx_network_TMessage_GetNetwork
	public	__codderx_network_TMessage_New
	public	__codderx_network_TMessage_Send
	public	__codderx_network_TServer_Connect_Server
	public	__codderx_network_TServer_DoClient
	public	__codderx_network_TServer_DoClient_UDP
	public	__codderx_network_TServer_New
	public	_codderx_network_AddMessage
	public	_codderx_network_ClientLatenz
	public	_codderx_network_ConnectServer
	public	_codderx_network_CountMessage
	public	_codderx_network_CreateServer
	public	_codderx_network_DosBannMSG_Count
	public	_codderx_network_DosBann_Time
	public	_codderx_network_GetClientList
	public	_codderx_network_GetFile
	public	_codderx_network_GetMessageText
	public	_codderx_network_GetMessages
	public	_codderx_network_GetNetwork
	public	_codderx_network_NetworkConnect
	public	_codderx_network_NewMessage
	public	_codderx_network_SendFile
	public	_codderx_network_SendMessage
	public	_codderx_network_TClient
	public	_codderx_network_TFileSend
	public	_codderx_network_TMessage
	public	_codderx_network_TServer
	section	"code" code
___bb_network_network:
	push	ebp
	mov	ebp,esp
	cmp	dword [_339],0
	je	_340
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_340:
	mov	dword [_339],1
	call	___bb_blitz_blitz
	call	___bb_bnetex_bnetex
	call	___bb_threads_threads
	call	___bb_linkedlist_linkedlist
	call	___bb_retro_retro
	push	_codderx_network_TFileSend
	call	_bbObjectRegisterType
	add	esp,4
	push	_codderx_network_TMessage
	call	_bbObjectRegisterType
	add	esp,4
	push	_codderx_network_TServer
	call	_bbObjectRegisterType
	add	esp,4
	push	_101
	call	_bbObjectRegisterType
	add	esp,4
	push	_codderx_network_TClient
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_233
_233:
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TFileSend_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_codderx_network_TFileSend
	mov	dword [ebx+8],_bbEmptyString
	mov	dword [ebx+12],_bbEmptyString
	mov	dword [ebx+16],_bbNullObject
	mov	dword [ebx+20],0
	mov	dword [ebx+24],_bbNullObject
	mov	dword [ebx+28],0
	mov	eax,0
	jmp	_236
_236:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_SendFile:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	ebx,1
	push	_4
	push	_3
	push	esi
	call	_brl_retro_Replace
	add	esp,12
	mov	esi,eax
_7:
_5:
	push	ebx
	push	_4
	push	esi
	call	_brl_retro_Instr
	add	esp,12
	cmp	eax,0
	jne	_344
	jmp	_6
_344:
	mov	ebx,eax
	add	ebx,1
	jmp	_7
_6:
	mov	eax,dword [esi+8]
	sub	eax,ebx
	add	eax,1
	push	eax
	push	ebx
	push	esi
	call	_brl_retro_Mid
	add	esp,12
	mov	edi,eax
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	dword [ebx+8],edi
	mov	dword [ebx+12],esi
	mov	eax,dword [ebp+8]
	push	dword [eax+48]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+44]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	dword [eax+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	eax,0
	jmp	_240
_240:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetFile:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	push	_codderx_network_TServer
	push	ebx
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	push	_codderx_network_TClient
	push	ebx
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_350
	mov	eax,dword [ebp-4]
	push	dword [eax+36]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+32]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_8
_10:
	mov	eax,edi
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_8
	cmp	dword [esi+28],1
	jne	_357
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+32]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_357:
	mov	eax,dword [ebp-8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_8:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_10
_9:
	mov	eax,dword [ebp-4]
	push	dword [eax+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
_350:
	cmp	dword [ebp-12],_bbNullObject
	je	_360
	mov	eax,dword [ebp-12]
	push	dword [eax+40]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+36]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_11
_13:
	mov	eax,edi
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_11
	cmp	dword [esi+28],1
	jne	_367
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+36]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_367:
	mov	eax,dword [ebp-8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_11:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_13
_12:
	mov	eax,dword [ebp-12]
	push	dword [eax+40]
	call	_brl_threads_UnlockMutex
	add	esp,4
_360:
	mov	eax,dword [ebp-8]
	jmp	_243
_243:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_codderx_network_TMessage
	mov	dword [ebx+8],_bbNullObject
	mov	dword [ebx+12],_bbNullObject
	mov	dword [ebx+16],0
	mov	eax,0
	jmp	_246
_246:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Add:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_250
_250:
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_GetNetwork:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	jmp	_253
_253:
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Send:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	cmp	ebx,_bbNullObject
	je	_371
	cmp	eax,0
	jne	_372
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebx+16]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_374
_372:
	cmp	eax,1
	jne	_375
	push	dword [ebx+56]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebx+52]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	dword [ebx+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
_375:
_374:
_371:
	mov	eax,0
	jmp	_258
_258:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	dword [ebp-4],_bbEmptyString
	mov	esi,dword [edi+8]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_14
_16:
	mov	eax,ebx
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_14
	mov	dword [ebp-4],eax
	mov	edx,dword [edi+8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+116]
	add	esp,8
	jmp	_15
_14:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_16
_15:
	mov	eax,dword [ebp-4]
	jmp	_261
_261:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Count:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	jmp	_264
_264:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetNetwork:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	cmp	eax,_bbNullObject
	je	_386
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	jmp	_267
_386:
	mov	eax,0
	jmp	_267
_267:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_CountMessage:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	cmp	eax,_bbNullObject
	je	_388
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	jmp	_270
_388:
	mov	eax,0
	jmp	_270
_270:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetMessageText:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	cmp	eax,_bbNullObject
	je	_390
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	jmp	_273
_390:
	mov	eax,_bbEmptyString
	jmp	_273
_273:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_NewMessage:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	_codderx_network_TMessage
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+8],eax
	mov	eax,ebx
	jmp	_275
_275:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_AddMessage:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	cmp	eax,_bbNullObject
	je	_393
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
_393:
	mov	eax,0
	jmp	_279
_279:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_SendMessage:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	cmp	eax,_bbNullObject
	je	_395
	push	edx
	push	ecx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
_395:
	mov	eax,0
	jmp	_284
_284:
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TServer_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_codderx_network_TServer
	mov	dword [ebx+8],_bbNullObject
	mov	dword [ebx+12],_bbNullObject
	mov	dword [ebx+16],_bbNullObject
	mov	dword [ebx+20],_bbNullObject
	mov	dword [ebx+24],_bbNullObject
	mov	dword [ebx+28],_bbNullObject
	mov	dword [ebx+32],_bbNullObject
	mov	dword [ebx+36],_bbNullObject
	mov	dword [ebx+40],_bbNullObject
	mov	dword [ebx+44],_bbNullObject
	mov	dword [ebx+48],0
	mov	dword [ebx+52],0
	mov	dword [ebx+56],0
	mov	eax,0
	jmp	_287
_287:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TServer_Connect_Server:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_codderx_network_TServer
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+8]
	mov	dword [ebp-16],eax
_19:
_17:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+232]
	add	esp,4
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_401
	mov	dword [ebp-8],0
	mov	eax,dword [ebp-12]
	push	dword [eax+44]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+40]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_20
_22:
	mov	eax,edi
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_20
	call	_bbMilliSecs
	sub	eax,dword [esi+12]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx+52]
	imul	edx,1000
	cmp	eax,edx
	jle	_409
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+40]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	jmp	_21
_409:
	mov	dword [ebp-8],1
	jmp	_21
_20:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_22
_21:
	mov	eax,dword [ebp-12]
	push	dword [eax+44]
	call	_brl_threads_UnlockMutex
	add	esp,4
	cmp	dword [ebp-8],0
	jne	_412
	push	_codderx_network_TClient
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,4
	push	eax
	call	dword [_vertex_bnetex_TNetwork+60]
	add	esp,4
	mov	dword [ebx+64],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+184]
	add	esp,4
	mov	eax,eax
	mov	dword [ebx+60],eax
	mov	eax,dword [ebp-4]
	mov	dword [ebx+8],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+16],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+20],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+44],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+48],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+52],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+56],eax
	mov	eax,dword [ebp-12]
	mov	dword [ebx+24],eax
	mov	dword [ebx+72],1
	push	ebx
	push	dword [_codderx_network_TServer+56]
	call	_brl_threads_CreateThread
	add	esp,8
	push	eax
	call	_brl_threads_DetachThread
	add	esp,4
	jmp	_417
_412:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
_417:
_401:
	push	1
	call	_bbDelay
	add	esp,4
	jmp	_19
__codderx_network_TServer_DoClient_UDP:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_codderx_network_TServer
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+12]
	mov	dword [ebp-8],eax
_25:
_23:
	cmp	dword [ebp-8],_bbNullObject
	je	_422
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_424
	jmp	_26
_28:
_26:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_28
_27:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_427
	jmp	_29
_31:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	_32
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_431
	call	_codderx_network_NewMessage
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp-40]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	dword [ebp-28],0
	mov	eax,dword [ebp-40]
	mov	ebx,dword [eax+16]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_33
_35:
	mov	eax,edi
	push	_codderx_network_TClient
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_33
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+220]
	add	esp,4
	push	eax
	call	dword [_vertex_bnetex_TNetwork+60]
	add	esp,4
	push	eax
	push	dword [esi+64]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_441
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+216]
	add	esp,4
	mov	eax,eax
	cmp	dword [esi+68],eax
	jne	_443
	mov	eax,dword [ebp-16]
	mov	dword [eax+12],esi
	mov	eax,dword [ebp-16]
	mov	dword [eax+16],1
	mov	dword [ebp-28],1
	jmp	_34
_443:
_441:
_33:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	mov	eax,dword [ebp-40]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_36
_38:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	push	_39
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_446
	cmp	dword [ebp-28],1
	jne	_447
	mov	eax,dword [ebp-40]
	push	dword [eax+28]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+24]
	push	dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-40]
	push	dword [eax+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
_447:
	jmp	_37
_446:
	mov	eax,dword [ebp-16]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
_36:
	push	dword [ebp-8]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_38
_37:
_431:
_29:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_31
_30:
_427:
_424:
	mov	eax,dword [ebp-40]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+16]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	jmp	_40
_42:
	mov	eax,dword [ebp-36]
	push	_codderx_network_TClient
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_40
	mov	dword [ebp-4],0
	mov	eax,dword [ebp-12]
	push	dword [eax+56]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+52]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-24],eax
	jmp	_43
_45:
	mov	eax,dword [ebp-24]
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_43
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+68]
	and	eax,0xffff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+192]
	add	esp,8
	mov	ebx,dword [ebp-8]
	mov	eax,dword [ebp-12]
	push	dword [eax+64]
	call	dword [_vertex_bnetex_TNetwork+68]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	mov	eax,dword [ebp-8]
	push	_32
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	esi,dword [edi+8]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_46
_48:
	mov	eax,ebx
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_46
	mov	edx,dword [ebp-8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,8
_46:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	mov	eax,dword [ebp-8]
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+52]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	add	dword [ebp-4],1
	cmp	dword [ebp-4],15
	jle	_475
	jmp	_44
_475:
_43:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	mov	eax,dword [ebp-12]
	push	dword [eax+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
	cmp	dword [ebp-4],0
	jle	_476
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_476:
_40:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	mov	eax,dword [ebp-40]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
_422:
	push	1
	call	_bbDelay
	add	esp,4
	jmp	_25
__codderx_network_TServer_DoClient:
	push	ebp
	mov	ebp,esp
	sub	esp,68
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_codderx_network_TClient
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+24]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+8]
	mov	dword [ebp-20],eax
	call	_bbMilliSecs
	mov	dword [ebp-68],eax
	call	_bbMilliSecs
	mov	dword [ebp-64],eax
	mov	dword [ebp-56],0
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+16]
	push	dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-60],eax
_51:
_49:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+236]
	add	esp,4
	cmp	eax,1
	je	_488
	jmp	_50
_488:
	call	_bbMilliSecs
	sub	eax,dword [ebp-68]
	cmp	eax,15000
	jl	_489
	jmp	_50
_489:
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+48]
	cmp	dword [ebp-56],eax
	jle	_490
	push	_101
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+64]
	mov	dword [ebx+8],eax
	call	_bbMilliSecs
	mov	dword [ebx+12],eax
	mov	eax,dword [ebp-52]
	push	dword [eax+44]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+40]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-52]
	push	dword [eax+44]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_50
_490:
	call	_bbMilliSecs
	sub	eax,dword [ebp-64]
	cmp	eax,1000
	jl	_493
	mov	dword [ebp-56],0
	call	_bbMilliSecs
	mov	dword [ebp-64],eax
_493:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_495
	jmp	_52
_54:
_52:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_498
	add	dword [ebp-56],1
	call	_bbMilliSecs
	mov	dword [ebp-68],eax
	jmp	_55
_57:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	push	_58
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_502
	jmp	_59
_61:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	push	_62
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_504
	jmp	_60
_504:
	push	edi
	call	_bbStringToInt
	add	esp,4
	mov	edx,dword [ebp-44]
	mov	dword [edx+68],eax
_59:
	push	dword [ebp-20]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_61
_60:
_502:
	push	_63
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_505
	mov	dword [ebp-8],_1
	jmp	_64
_66:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	push	_67
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_508
	mov	eax,dword [ebp-20]
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-20]
	push	dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-20]
	push	_69
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
	jmp	_65
_508:
	push	1
	push	_70
	push	edi
	call	_brl_retro_Instr
	add	esp,12
	mov	esi,eax
	mov	eax,esi
	sub	eax,1
	push	eax
	push	edi
	call	_brl_retro_Left
	add	esp,8
	mov	ebx,eax
	push	_71
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_515
	push	dword [edi+8]
	mov	eax,esi
	add	eax,1
	push	eax
	push	edi
	call	_brl_retro_Mid
	add	esp,12
	mov	dword [ebp-8],eax
_515:
	push	_72
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_516
	push	dword [edi+8]
	mov	eax,esi
	add	eax,1
	push	eax
	push	edi
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	edx,dword [ebp-44]
	mov	dword [edx+84],eax
_516:
_64:
	push	dword [ebp-20]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_66
_65:
_505:
	push	_32
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_517
	call	_codderx_network_NewMessage
	mov	ebx,eax
	mov	eax,dword [ebp-44]
	mov	dword [ebx+12],eax
	jmp	_73
_75:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	push	_39
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_520
	mov	eax,dword [ebp-52]
	push	dword [eax+28]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+24]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-52]
	push	dword [eax+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_74
_520:
	push	edi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
_73:
	push	dword [ebp-20]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_75
_74:
_517:
	push	_76
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_523
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-52]
	push	dword [eax+36]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [ebp-52]
	mov	ebx,dword [eax+32]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_77
_79:
	mov	eax,edi
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_77
	push	dword [ebp-12]
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_537
	mov	eax,dword [ebp-44]
	cmp	dword [esi+24],eax
	jne	_538
	mov	dword [ebp-4],esi
	jmp	_78
_538:
_537:
_77:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_79
_78:
	cmp	dword [ebp-4],_bbNullObject
	jne	_539
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	dword [edx+8],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-24]
	mov	dword [edx+20],eax
	push	dword [ebp-24]
	call	_brl_bank_CreateBank
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-44]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+32]
	push	dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_539:
	mov	esi,1
	mov	edi,dword [ebp-40]
	jmp	_542
_82:
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+16]
	push	dword [ebp-20]
	call	_brl_stream_ReadByte
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	edx,dword [ebp-4]
	sub	eax,dword [edx+20]
	push	eax
	mov	eax,dword [ebp-4]
	push	dword [eax+16]
	call	_brl_bank_PokeByte
	add	esp,12
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+20],eax
_80:
	add	esi,1
_542:
	cmp	esi,edi
	jle	_82
_81:
	cmp	dword [ebp-40],0
	jne	_545
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+32]
	push	dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_545:
	mov	eax,dword [ebp-4]
	cmp	dword [eax+20],0
	jne	_547
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],1
_547:
	mov	eax,dword [ebp-52]
	push	dword [eax+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
_523:
_55:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_57
_56:
_498:
_495:
	mov	dword [ebp-48],0
	call	_bbMilliSecs
	sub	eax,dword [ebp-60]
	cmp	eax,100
	jle	_549
	call	_bbMilliSecs
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp-44]
	push	dword [eax+48]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	esi,dword [eax+44]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_83
_85:
	mov	eax,ebx
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_83
	cmp	dword [edi+16],_bbNullObject
	jne	_556
	push	dword [edi+12]
	call	_brl_bank_LoadBank
	add	esp,4
	mov	dword [edi+16],eax
	cmp	dword [edi+16],_bbNullObject
	jne	_557
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+44]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	jmp	_84
_557:
	jmp	_559
_556:
	mov	eax,dword [edi+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [edi+20]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],4096
	jl	_562
	mov	dword [ebp-36],4096
_562:
	cmp	dword [ebp-36],0
	jle	_563
	mov	eax,dword [ebp-20]
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-20]
	push	dword [edi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-20]
	mov	eax,dword [edi+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-20]
	push	dword [ebp-36]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	esi,1
	mov	eax,dword [ebp-36]
	mov	dword [ebp-16],eax
	jmp	_570
_88:
	mov	ebx,dword [ebp-20]
	push	dword [edi+20]
	push	dword [edi+16]
	call	_brl_bank_PeekByte
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	add	dword [edi+20],1
_86:
	add	esi,1
_570:
	cmp	esi,dword [ebp-16]
	jle	_88
_87:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
_563:
	cmp	dword [ebp-36],0
	jne	_574
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+44]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_574:
_559:
	jmp	_84
_83:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_85
_84:
	mov	eax,dword [ebp-44]
	push	dword [eax+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
_549:
	mov	eax,dword [ebp-44]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+16]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	jmp	_89
_91:
	mov	eax,dword [ebp-32]
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_89
	mov	eax,dword [ebp-20]
	push	_32
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	esi,dword [edi+8]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_92
_94:
	mov	eax,ebx
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_92
	mov	edx,dword [ebp-20]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,8
_92:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_94
_93:
	mov	eax,dword [ebp-20]
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+16]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	add	dword [ebp-48],1
	cmp	dword [ebp-48],15
	jle	_592
	jmp	_90
_592:
_89:
	mov	eax,dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	mov	eax,dword [ebp-44]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	cmp	dword [ebp-48],0
	jle	_593
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
_593:
	push	1
	call	_bbDelay
	add	esp,4
	jmp	_51
_50:
	mov	eax,dword [ebp-52]
	push	dword [eax+28]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	esi,dword [eax+24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_95
_97:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_95
	mov	edx,dword [ebp-44]
	cmp	dword [eax+12],edx
	jne	_601
	mov	edx,dword [ebp-52]
	mov	edx,dword [edx+32]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+116]
	add	esp,8
_601:
_95:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	mov	eax,dword [ebp-52]
	push	dword [eax+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	push	dword [eax+36]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	esi,dword [eax+32]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_98
_100:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_98
	mov	edx,dword [ebp-44]
	cmp	dword [eax+24],edx
	jne	_609
	mov	edx,dword [ebp-52]
	mov	edx,dword [edx+32]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+116]
	add	esp,8
_609:
_98:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_100
_99:
	mov	eax,dword [ebp-52]
	push	dword [eax+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [eax+72],0
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+16]
	push	dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	eax,_bbNullObject
	jmp	_296
_296:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_DosBannMSG_Count:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	cmp	edx,_bbNullObject
	je	_614
	mov	dword [edx+48],eax
_614:
	mov	eax,0
	jmp	_300
_300:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_DosBann_Time:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	cmp	edx,_bbNullObject
	je	_615
	mov	dword [edx+52],eax
_615:
	mov	eax,0
	jmp	_304
_304:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_CreateServer:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	push	_codderx_network_TServer
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_vertex_bnetex_TTCPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+8],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+16],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+20],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+24],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+28],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+40],eax
	call	_brl_threads_CreateMutex
	mov	dword [ebx+44],eax
	mov	dword [ebx+48],15
	mov	dword [ebx+52],10
	call	_brl_threads_CreateMutex
	mov	dword [ebx+36],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+32],eax
	mov	eax,dword [ebx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_618
	mov	eax,_bbNullObject
	jmp	_308
_618:
	mov	edx,dword [ebx+8]
	mov	eax,esi
	and	eax,0xffff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+180]
	add	esp,8
	cmp	eax,0
	jne	_620
	mov	eax,_bbNullObject
	jmp	_308
_620:
	mov	eax,dword [ebx+8]
	push	32
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+228]
	add	esp,8
	cmp	eax,0
	jne	_622
	mov	eax,_bbNullObject
	jmp	_308
_622:
	push	_vertex_bnetex_TUDPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+12],eax
	mov	eax,dword [ebx+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_624
	mov	eax,_bbNullObject
	jmp	_308
_624:
	mov	edx,dword [ebx+12]
	mov	eax,edi
	and	eax,0xffff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+180]
	add	esp,8
	push	ebx
	push	dword [_codderx_network_TServer+48]
	call	_brl_threads_CreateThread
	add	esp,8
	push	eax
	call	_brl_threads_DetachThread
	add	esp,4
	push	ebx
	push	dword [_codderx_network_TServer+52]
	call	_brl_threads_CreateThread
	add	esp,8
	push	eax
	call	_brl_threads_DetachThread
	add	esp,4
	mov	eax,ebx
	jmp	_308
_308:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TBann_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_101
	mov	dword [ebx+8],_bbEmptyString
	mov	dword [ebx+12],0
	mov	eax,0
	jmp	_311
_311:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TClient_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_codderx_network_TClient
	mov	dword [ebx+8],_bbNullObject
	mov	dword [ebx+12],_bbNullObject
	mov	dword [ebx+16],_bbNullObject
	mov	dword [ebx+20],_bbNullObject
	mov	dword [ebx+24],_bbNullObject
	mov	dword [ebx+28],_bbNullObject
	mov	dword [ebx+32],_bbNullObject
	mov	dword [ebx+36],_bbNullObject
	mov	dword [ebx+40],_bbNullObject
	mov	dword [ebx+44],_bbNullObject
	mov	dword [ebx+48],_bbNullObject
	mov	dword [ebx+52],_bbNullObject
	mov	dword [ebx+56],_bbNullObject
	mov	dword [ebx+60],0
	mov	dword [ebx+64],_bbEmptyString
	mov	dword [ebx+68],0
	mov	dword [ebx+72],0
	mov	dword [ebx+76],0
	mov	dword [ebx+80],0
	mov	dword [ebx+84],0
	mov	eax,0
	jmp	_314
_314:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TClient_DoServer_UDP:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_codderx_network_TClient
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-20]
	mov	edi,dword [eax+12]
_104:
_102:
	cmp	edi,_bbNullObject
	je	_629
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_631
	jmp	_105
_107:
_105:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_107
_106:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_634
	jmp	_108
_110:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	_32
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_638
	call	_codderx_network_NewMessage
	mov	esi,eax
	mov	dword [esi+16],1
	jmp	_111
_113:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	push	_39
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_642
	mov	eax,dword [ebp-20]
	push	dword [eax+32]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+28]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-20]
	push	dword [eax+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_112
_642:
	mov	eax,esi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
_111:
	push	edi
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_113
_112:
_638:
_108:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_110
_109:
_634:
_631:
	mov	eax,dword [ebp-20]
	push	dword [eax+56]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	dword [ebp-8],0
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+52]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_114
_116:
	mov	eax,dword [ebp-16]
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_114
	mov	eax,edi
	push	_32
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-4]
	mov	esi,dword [eax+8]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_117
_119:
	mov	eax,ebx
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_117
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,8
_117:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	mov	eax,edi
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+52]
	push	dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	add	dword [ebp-8],1
	cmp	dword [ebp-8],15
	jle	_662
	jmp	_115
_662:
_114:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_116
_115:
	mov	eax,dword [ebp-20]
	push	dword [eax+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
	cmp	dword [ebp-8],0
	jle	_663
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_663:
_629:
	push	1
	call	_bbDelay
	add	esp,4
	jmp	_104
__codderx_network_TClient_DoServer:
	push	ebp
	mov	ebp,esp
	sub	esp,60
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_codderx_network_TClient
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+8]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp-44]
	mov	dword [eax+72],1
	call	_bbMilliSecs
	mov	dword [ebp-48],eax
	call	_bbMilliSecs
	mov	dword [ebp-56],eax
	mov	dword [ebp-52],0
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+184]
	add	esp,4
	mov	eax,eax
	mov	dword [ebp-60],eax
_122:
_120:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+236]
	add	esp,4
	cmp	eax,1
	je	_674
	jmp	_121
_674:
	call	_bbMilliSecs
	sub	eax,dword [ebp-48]
	cmp	eax,15000
	jl	_675
	jmp	_121
_675:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_677
	jmp	_123
_125:
_123:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_125
_124:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_680
	call	_bbMilliSecs
	mov	dword [ebp-48],eax
	jmp	_126
_128:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	push	_32
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_684
	call	_codderx_network_NewMessage
	mov	ebx,eax
	jmp	_129
_131:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	push	_39
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_687
	mov	eax,dword [ebp-44]
	push	dword [eax+32]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+28]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-44]
	push	dword [eax+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
	jmp	_130
_687:
	push	esi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
_129:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_131
_130:
_684:
	push	_68
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_690
	mov	eax,dword [ebp-44]
	mov	dword [eax+76],0
	call	_bbMilliSecs
	mov	edx,dword [ebp-44]
	mov	dword [edx+80],eax
	jmp	_132
_134:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	push	_69
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_692
	jmp	_133
_692:
	call	_bbMilliSecs
	mov	ebx,eax
	push	esi
	call	_bbStringToInt
	add	esp,4
	sub	ebx,eax
	mov	eax,dword [ebp-44]
	mov	dword [eax+84],ebx
_132:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_134
_133:
_690:
	push	_76
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_693
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-44]
	push	dword [eax+40]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [ebp-44]
	mov	ebx,dword [eax+36]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_135
_137:
	mov	eax,edi
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_135
	push	dword [ebp-8]
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_707
	mov	eax,dword [ebp-44]
	cmp	dword [esi+24],eax
	jne	_708
	mov	dword [ebp-4],esi
	jmp	_136
_708:
_707:
_135:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_137
_136:
	cmp	dword [ebp-4],_bbNullObject
	jne	_709
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	mov	dword [edx+8],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-20]
	mov	dword [edx+20],eax
	push	dword [ebp-20]
	call	_brl_bank_CreateBank
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-44]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+36]
	push	dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_709:
	mov	esi,1
	mov	edi,dword [ebp-40]
	jmp	_712
_140:
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+16]
	push	dword [ebp-16]
	call	_brl_stream_ReadByte
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	edx,dword [ebp-4]
	sub	eax,dword [edx+20]
	push	eax
	mov	eax,dword [ebp-4]
	push	dword [eax+16]
	call	_brl_bank_PokeByte
	add	esp,12
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+20],eax
_138:
	add	esi,1
_712:
	cmp	esi,edi
	jle	_140
_139:
	cmp	dword [ebp-40],0
	jne	_715
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+36]
	push	dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_715:
	mov	eax,dword [ebp-4]
	cmp	dword [eax+20],0
	jne	_717
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],1
_717:
	mov	eax,dword [ebp-44]
	push	dword [eax+40]
	call	_brl_threads_UnlockMutex
	add	esp,4
_693:
_126:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_128
_127:
_680:
_677:
	mov	dword [ebp-32],0
	cmp	dword [ebp-52],0
	jne	_719
	mov	dword [ebp-52],1
	mov	eax,dword [ebp-16]
	push	_58
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-16]
	push	dword [ebp-60]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-16]
	push	_62
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	add	dword [ebp-32],1
_719:
	mov	eax,dword [ebp-44]
	cmp	dword [eax+76],0
	jne	_723
	call	_bbMilliSecs
	mov	edx,dword [ebp-44]
	sub	eax,dword [edx+80]
	cmp	eax,1000
	jl	_724
	mov	eax,dword [ebp-44]
	mov	dword [eax+76],1
	mov	eax,dword [ebp-16]
	push	_63
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-16]
	call	_bbMilliSecs
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_141
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-44]
	push	dword [eax+84]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_142
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-16]
	push	_67
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	add	dword [ebp-32],1
_724:
_723:
	mov	eax,dword [ebp-44]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+16]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_143
_145:
	mov	eax,dword [ebp-28]
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_143
	mov	eax,dword [ebp-16]
	push	_32
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	esi,dword [edi+8]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_146
_148:
	mov	eax,ebx
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_146
	mov	edx,dword [ebp-16]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,8
_146:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_148
_147:
	mov	eax,dword [ebp-16]
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+16]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	add	dword [ebp-32],1
	cmp	dword [ebp-32],15
	jle	_745
	jmp	_144
_745:
_143:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_145
_144:
	mov	eax,dword [ebp-44]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	cmp	dword [ebp-32],0
	jle	_746
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
_746:
	call	_bbMilliSecs
	sub	eax,dword [ebp-56]
	cmp	eax,100
	jle	_748
	call	_bbMilliSecs
	mov	dword [ebp-56],eax
	mov	eax,dword [ebp-44]
	push	dword [eax+48]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	esi,dword [eax+44]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_149
_151:
	mov	eax,ebx
	push	_codderx_network_TFileSend
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_149
	cmp	dword [edi+16],_bbNullObject
	jne	_755
	push	dword [edi+12]
	call	_brl_bank_LoadBank
	add	esp,4
	mov	dword [edi+16],eax
	cmp	dword [edi+16],_bbNullObject
	jne	_756
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+44]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	jmp	_150
_756:
	jmp	_758
_755:
	mov	eax,dword [edi+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [edi+20]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],4096
	jl	_761
	mov	dword [ebp-36],4096
_761:
	cmp	dword [ebp-36],0
	jle	_762
	mov	eax,dword [ebp-16]
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-16]
	push	dword [edi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-16]
	mov	eax,dword [edi+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-16]
	push	dword [ebp-36]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	esi,1
	mov	eax,dword [ebp-36]
	mov	dword [ebp-12],eax
	jmp	_769
_154:
	mov	ebx,dword [ebp-16]
	push	dword [edi+20]
	push	dword [edi+16]
	call	_brl_bank_PeekByte
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	add	dword [edi+20],1
_152:
	add	esi,1
_769:
	cmp	esi,dword [ebp-12]
	jle	_154
_153:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,4
_762:
	cmp	dword [ebp-36],0
	jne	_773
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax+44]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_773:
_758:
	jmp	_150
_149:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_151
_150:
	mov	eax,dword [ebp-44]
	push	dword [eax+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
_748:
	push	1
	call	_bbDelay
	add	esp,4
	jmp	_122
_121:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [eax+72],0
	mov	eax,_bbNullObject
	jmp	_320
_320:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_NetworkConnect:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	cmp	eax,_bbNullObject
	je	_777
	mov	eax,dword [eax+72]
	jmp	_323
_777:
	mov	eax,0
	jmp	_323
_323:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetClientList:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	cmp	dword [ebp+8],_bbNullObject
	je	_778
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_155
_157:
	mov	eax,ebx
	push	_codderx_network_TClient
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_155
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_155:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_157
_156:
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	eax,edi
	jmp	_326
_778:
	mov	eax,_bbNullObject
	jmp	_326
_326:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_ClientLatenz:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+84]
	jmp	_329
_329:
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_ConnectServer:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	push	_codderx_network_TClient
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	mov	dword [esi+60],edi
	mov	eax,dword [ebp+8]
	mov	dword [esi+64],eax
	push	_vertex_bnetex_TTCPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+8],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+28],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+16],eax
	call	_brl_threads_CreateMutex
	mov	dword [esi+32],eax
	call	_brl_threads_CreateMutex
	mov	dword [esi+20],eax
	call	_bbMilliSecs
	mov	dword [esi+80],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+36],eax
	call	_brl_threads_CreateMutex
	mov	dword [esi+40],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+44],eax
	call	_brl_threads_CreateMutex
	mov	dword [esi+48],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+52],eax
	call	_brl_threads_CreateMutex
	mov	dword [esi+56],eax
	mov	eax,dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_790
	mov	eax,_bbNullObject
	jmp	_334
_790:
	mov	eax,dword [esi+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+180]
	add	esp,8
	cmp	eax,0
	jne	_792
	mov	eax,_bbNullObject
	jmp	_334
_792:
	mov	ebx,dword [esi+8]
	push	dword [ebp+8]
	call	dword [_vertex_bnetex_TNetwork+48]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	mov	edx,dword [esi+8]
	mov	eax,edi
	and	eax,0xffff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+192]
	add	esp,8
	mov	eax,dword [esi+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+224]
	add	esp,8
	cmp	eax,0
	jne	_796
	mov	eax,_bbNullObject
	jmp	_334
_796:
	push	_vertex_bnetex_TUDPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [esi+12],eax
	mov	eax,dword [esi+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_798
	mov	eax,_bbNullObject
	jmp	_334
_798:
	mov	ebx,dword [esi+12]
	push	dword [ebp+8]
	call	dword [_vertex_bnetex_TNetwork+68]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	mov	eax,dword [esi+12]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+180]
	add	esp,8
	mov	edx,dword [esi+12]
	mov	eax,dword [ebp+16]
	and	eax,0xffff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+192]
	add	esp,8
	mov	eax,dword [ebp+16]
	mov	dword [esi+68],eax
	push	esi
	push	dword [_codderx_network_TClient+52]
	call	_brl_threads_CreateThread
	add	esp,8
	push	eax
	call	_brl_threads_DetachThread
	add	esp,4
	push	esi
	push	dword [_codderx_network_TClient+48]
	call	_brl_threads_CreateThread
	add	esp,8
	push	eax
	call	_brl_threads_DetachThread
	add	esp,4
	mov	eax,esi
	jmp	_334
_334:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetMessages:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	push	_codderx_network_TServer
	push	ebx
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	push	_codderx_network_TClient
	push	ebx
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_806
	mov	eax,dword [ebp-4]
	push	dword [eax+28]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_158
_160:
	mov	eax,edi
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_158
	mov	eax,dword [ebp-8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+24]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_158:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_160
_159:
	mov	eax,dword [ebp-4]
	push	dword [eax+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
_806:
	cmp	dword [ebp-12],_bbNullObject
	je	_815
	mov	eax,dword [ebp-12]
	push	dword [eax+32]
	call	_brl_threads_LockMutex
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+28]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_161
_163:
	mov	eax,edi
	push	_codderx_network_TMessage
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_161
	mov	eax,dword [ebp-8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+28]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_161:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_163
_162:
	mov	eax,dword [ebp-12]
	push	dword [eax+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
_815:
	mov	eax,dword [ebp-8]
	jmp	_337
_337:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_339:
	dd	0
_165:
	db	"TFileSend",0
_166:
	db	"Name",0
_167:
	db	"$",0
_168:
	db	"Path",0
_169:
	db	"Bank",0
_170:
	db	":TBank",0
_171:
	db	"Count",0
_172:
	db	"i",0
_173:
	db	"Client",0
_174:
	db	":TClient",0
_175:
	db	"Fertig",0
_176:
	db	"New",0
_177:
	db	"()i",0
	align	4
_164:
	dd	2
	dd	_165
	dd	3
	dd	_166
	dd	_167
	dd	8
	dd	3
	dd	_168
	dd	_167
	dd	12
	dd	3
	dd	_169
	dd	_170
	dd	16
	dd	3
	dd	_171
	dd	_172
	dd	20
	dd	3
	dd	_173
	dd	_174
	dd	24
	dd	3
	dd	_175
	dd	_172
	dd	28
	dd	6
	dd	_176
	dd	_177
	dd	16
	dd	0
	align	4
_codderx_network_TFileSend:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_164
	dd	32
	dd	__codderx_network_TFileSend_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_179:
	db	"TMessage",0
_180:
	db	"Inhalt",0
_181:
	db	":TList",0
_182:
	db	"Fast",0
_183:
	db	"Add",0
_184:
	db	"($)i",0
_185:
	db	"GetNetwork",0
_186:
	db	"Send",0
_187:
	db	"(:TClient,i)i",0
_188:
	db	"Get",0
_189:
	db	"()$",0
	align	4
_178:
	dd	2
	dd	_179
	dd	3
	dd	_180
	dd	_181
	dd	8
	dd	3
	dd	_173
	dd	_174
	dd	12
	dd	3
	dd	_182
	dd	_172
	dd	16
	dd	6
	dd	_176
	dd	_177
	dd	16
	dd	6
	dd	_183
	dd	_184
	dd	48
	dd	6
	dd	_185
	dd	_177
	dd	52
	dd	6
	dd	_186
	dd	_187
	dd	56
	dd	6
	dd	_188
	dd	_189
	dd	60
	dd	6
	dd	_171
	dd	_177
	dd	64
	dd	0
	align	4
_codderx_network_TMessage:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_178
	dd	20
	dd	__codderx_network_TMessage_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__codderx_network_TMessage_Add
	dd	__codderx_network_TMessage_GetNetwork
	dd	__codderx_network_TMessage_Send
	dd	__codderx_network_TMessage_Get
	dd	__codderx_network_TMessage_Count
_191:
	db	"TServer",0
_192:
	db	"Stream",0
_193:
	db	":TTCPStream",0
_194:
	db	"UDP",0
_195:
	db	":TUDPStream",0
_196:
	db	"Client_List",0
_197:
	db	"Client_Mutex",0
_198:
	db	":TMutex",0
_199:
	db	"Eingang_List",0
_200:
	db	"Eingang_Mutex",0
_201:
	db	"Eingang_File_List",0
_202:
	db	"Eingang_File_Mutex",0
_203:
	db	"Bann_List",0
_204:
	db	"Bann_Mutex",0
_205:
	db	"Bann_MSG",0
_206:
	db	"Bann_Sek",0
_207:
	db	"Port",0
_208:
	db	"Connect_Server",0
_209:
	db	"(:Object):Object",0
_210:
	db	"DoClient_UDP",0
_211:
	db	"DoClient",0
	align	4
_190:
	dd	2
	dd	_191
	dd	3
	dd	_192
	dd	_193
	dd	8
	dd	3
	dd	_194
	dd	_195
	dd	12
	dd	3
	dd	_196
	dd	_181
	dd	16
	dd	3
	dd	_197
	dd	_198
	dd	20
	dd	3
	dd	_199
	dd	_181
	dd	24
	dd	3
	dd	_200
	dd	_198
	dd	28
	dd	3
	dd	_201
	dd	_181
	dd	32
	dd	3
	dd	_202
	dd	_198
	dd	36
	dd	3
	dd	_203
	dd	_181
	dd	40
	dd	3
	dd	_204
	dd	_198
	dd	44
	dd	3
	dd	_205
	dd	_172
	dd	48
	dd	3
	dd	_206
	dd	_172
	dd	52
	dd	3
	dd	_207
	dd	_172
	dd	56
	dd	6
	dd	_176
	dd	_177
	dd	16
	dd	7
	dd	_208
	dd	_209
	dd	48
	dd	7
	dd	_210
	dd	_209
	dd	52
	dd	7
	dd	_211
	dd	_209
	dd	56
	dd	0
	align	4
_codderx_network_TServer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_190
	dd	60
	dd	__codderx_network_TServer_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__codderx_network_TServer_Connect_Server
	dd	__codderx_network_TServer_DoClient_UDP
	dd	__codderx_network_TServer_DoClient
_213:
	db	"TBann",0
_214:
	db	"IP",0
_215:
	db	"Timer",0
	align	4
_212:
	dd	2
	dd	_213
	dd	3
	dd	_214
	dd	_167
	dd	8
	dd	3
	dd	_215
	dd	_172
	dd	12
	dd	6
	dd	_176
	dd	_177
	dd	16
	dd	0
	align	4
_101:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_212
	dd	16
	dd	__codderx_network_TBann_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_217:
	db	"TClient",0
_218:
	db	"Send_List",0
_219:
	db	"Send_Mutex",0
_220:
	db	"Server",0
_221:
	db	":TServer",0
_222:
	db	"Send_File_List",0
_223:
	db	"Send_File_Mutex",0
_224:
	db	"Send_UDP_List",0
_225:
	db	"Send_UDP_Mutex",0
_226:
	db	"PortUDP",0
_227:
	db	"Verbunden",0
_228:
	db	"Ping_Send",0
_229:
	db	"Ping_SendTimer",0
_230:
	db	"Ping_Ping",0
_231:
	db	"DoServer_UDP",0
_232:
	db	"DoServer",0
	align	4
_216:
	dd	2
	dd	_217
	dd	3
	dd	_192
	dd	_193
	dd	8
	dd	3
	dd	_194
	dd	_195
	dd	12
	dd	3
	dd	_218
	dd	_181
	dd	16
	dd	3
	dd	_219
	dd	_198
	dd	20
	dd	3
	dd	_220
	dd	_221
	dd	24
	dd	3
	dd	_199
	dd	_181
	dd	28
	dd	3
	dd	_200
	dd	_198
	dd	32
	dd	3
	dd	_201
	dd	_181
	dd	36
	dd	3
	dd	_202
	dd	_198
	dd	40
	dd	3
	dd	_222
	dd	_181
	dd	44
	dd	3
	dd	_223
	dd	_198
	dd	48
	dd	3
	dd	_224
	dd	_181
	dd	52
	dd	3
	dd	_225
	dd	_198
	dd	56
	dd	3
	dd	_207
	dd	_172
	dd	60
	dd	3
	dd	_214
	dd	_167
	dd	64
	dd	3
	dd	_226
	dd	_172
	dd	68
	dd	3
	dd	_227
	dd	_172
	dd	72
	dd	3
	dd	_228
	dd	_172
	dd	76
	dd	3
	dd	_229
	dd	_172
	dd	80
	dd	3
	dd	_230
	dd	_172
	dd	84
	dd	6
	dd	_176
	dd	_177
	dd	16
	dd	7
	dd	_231
	dd	_209
	dd	48
	dd	7
	dd	_232
	dd	_209
	dd	52
	dd	0
	align	4
_codderx_network_TClient:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_216
	dd	88
	dd	__codderx_network_TClient_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__codderx_network_TClient_DoServer_UDP
	dd	__codderx_network_TClient_DoServer
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_3:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,80,65,67,75,93
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,80,65,67,75,93
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,85,68,80,93
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,47,85,68,80,93
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,80,73,78,71,93
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,80,73,78,71,93
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,66,65,67,75,93
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,66,65,67,75,93
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	77,83
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	80
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,70,73,76,69,93
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	77,83,58
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	80,58
