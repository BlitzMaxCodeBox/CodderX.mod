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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToInt
	extrn	_brl_bank_CreateBank
	extrn	_brl_bank_LoadBank
	extrn	_brl_bank_PeekByte
	extrn	_brl_bank_PokeByte
	extrn	_brl_blitz_NullObjectError
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
	push	ebx
	cmp	dword [_341],0
	je	_342
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_342:
	mov	dword [_341],1
	push	ebp
	push	_339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	mov	ebx,0
	jmp	_233
_233:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TFileSend_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_codderx_network_TFileSend
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbEmptyString
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],_bbEmptyString
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	push	ebp
	push	_343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_236
_236:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_SendFile:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],0
	mov	dword [ebp-24],0
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],1
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_3
	push	dword [ebp-8]
	call	_brl_retro_Replace
	add	esp,12
	mov	dword [ebp-8],eax
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_7:
_5:
	push	ebp
	push	_361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	_4
	push	dword [ebp-8]
	call	_brl_retro_Instr
	add	esp,12
	mov	dword [ebp-24],eax
	push	_356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_357
	push	ebp
	push	_359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6
_357:
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	add	eax,1
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7
_6:
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+8]
	sub	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	dword [ebp-16]
	push	dword [ebp-8]
	call	_brl_retro_Mid
	add	esp,12
	mov	dword [ebp-12],eax
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+8],eax
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+12],eax
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	push	dword [ebx+48]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	push	dword [ebx+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
	mov	ebx,0
	jmp	_240
_240:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetFile:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TServer
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_396
	mov	eax,ebp
	push	eax
	push	_429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_399
	call	_brl_blitz_NullObjectError
_399:
	push	dword [ebx+36]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_403
	call	_brl_blitz_NullObjectError
_403:
	mov	edi,dword [ebx+32]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_406
	call	_brl_blitz_NullObjectError
_406:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_8
_10:
	cmp	ebx,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_8
	mov	eax,ebp
	push	eax
	push	_425
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_414
	call	_brl_blitz_NullObjectError
_414:
	cmp	dword [esi+28],1
	jne	_415
	mov	eax,ebp
	push	eax
	push	_421
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_420
	call	_brl_blitz_NullObjectError
_420:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_415:
	push	_422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_8:
	cmp	ebx,_bbNullObject
	jne	_409
	call	_brl_blitz_NullObjectError
_409:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_10
_9:
	push	_426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_428
	call	_brl_blitz_NullObjectError
_428:
	push	dword [ebx+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_396:
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_431
	mov	eax,ebp
	push	eax
	push	_464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	push	dword [ebx+40]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_438
	call	_brl_blitz_NullObjectError
_438:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_11
_13:
	cmp	ebx,_bbNullObject
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_11
	mov	eax,ebp
	push	eax
	push	_460
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_449
	call	_brl_blitz_NullObjectError
_449:
	cmp	dword [esi+28],1
	jne	_450
	mov	eax,ebp
	push	eax
	push	_456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	mov	esi,dword [esi+36]
	cmp	esi,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	push	dword [ebp-24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_450:
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_459
	call	_brl_blitz_NullObjectError
_459:
	push	dword [ebp-24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_11:
	cmp	ebx,_bbNullObject
	jne	_444
	call	_brl_blitz_NullObjectError
_444:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_13
_12:
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	push	dword [ebx+40]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_431:
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_243
_243:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_472
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_codderx_network_TMessage
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	push	ebp
	push	_471
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_246
_246:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_250
_250:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_GetNetwork:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_484
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	mov	ebx,dword [ebx+16]
	jmp	_253
_253:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Send:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_518
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_486
	push	ebp
	push	_517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	jne	_488
	push	ebp
	push	_500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_499
	call	_brl_blitz_NullObjectError
_499:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_501
_488:
	push	ebp
	push	_516
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],1
	jne	_503
	push	ebp
	push	_515
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	push	dword [ebx+56]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	mov	ebx,dword [ebx+52]
	cmp	ebx,_bbNullObject
	jne	_511
	call	_brl_blitz_NullObjectError
_511:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	push	dword [ebx+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_503:
	call	dword [_bbOnDebugLeaveScope]
_501:
	call	dword [_bbOnDebugLeaveScope]
_486:
	mov	ebx,0
	jmp	_258
_258:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbEmptyString
	push	ebp
	push	_543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_14
_16:
	cmp	ebx,_bbNullObject
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_14
	push	ebp
	push	_540
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp-8],eax
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_536
	call	_brl_blitz_NullObjectError
_536:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_15
_14:
	cmp	ebx,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_16
_15:
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_261
_261:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TMessage_Count:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_549
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	ebx,eax
	jmp	_264
_264:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetNetwork:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_551
	push	ebp
	push	_555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_267
_551:
	mov	ebx,0
	jmp	_267
_267:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_CountMessage:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_559
	push	ebp
	push	_563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_270
_559:
	mov	ebx,0
	jmp	_270
_270:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetMessageText:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_567
	push	ebp
	push	_571
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_273
_567:
	mov	ebx,_bbEmptyString
	jmp	_273
_273:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_NewMessage:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_581
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TMessage
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+8],eax
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_275
_275:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_AddMessage:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_585
	push	ebp
	push	_589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_585:
	mov	ebx,0
	jmp	_279
_279:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_SendMessage:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_593
	push	ebp
	push	_597
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_593:
	mov	ebx,0
	jmp	_284
_284:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TServer_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_601
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_codderx_network_TServer
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],0
	push	ebp
	push	_600
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_287
_287:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TServer_Connect_Server:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_727
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TServer
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_606
	call	_brl_blitz_NullObjectError
_606:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-12],eax
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_19:
_17:
	mov	eax,ebp
	push	eax
	push	_726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+232]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_615
	mov	eax,ebp
	push	eax
	push	_723
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_620
	call	_brl_blitz_NullObjectError
_620:
	push	dword [ebx+44]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	mov	esi,dword [ebx+40]
	cmp	esi,_bbNullObject
	jne	_627
	call	_brl_blitz_NullObjectError
_627:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_20
_22:
	cmp	ebx,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	push	_101
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_20
	mov	eax,ebp
	push	eax
	push	_650
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_635
	call	_brl_blitz_NullObjectError
_635:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_637
	call	_brl_blitz_NullObjectError
_637:
	call	_bbMilliSecs
	sub	eax,dword [esi+12]
	mov	edx,dword [ebx+52]
	imul	edx,1000
	cmp	eax,edx
	jle	_638
	mov	eax,ebp
	push	eax
	push	_645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_641
	call	_brl_blitz_NullObjectError
_641:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_643
	call	_brl_blitz_NullObjectError
_643:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_21
_638:
	mov	eax,ebp
	push	eax
	push	_649
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],1
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_21
_20:
	cmp	ebx,_bbNullObject
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_22
_21:
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_655
	call	_brl_blitz_NullObjectError
_655:
	push	dword [ebx+44]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],0
	jne	_657
	mov	eax,ebp
	push	eax
	push	_711
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,4
	push	eax
	call	dword [_vertex_bnetex_TNetwork+60]
	add	esp,4
	mov	dword [ebx+64],eax
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+184]
	add	esp,4
	mov	eax,eax
	mov	dword [ebx+60],eax
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+8],eax
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+16],eax
	push	_680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+20],eax
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+44],eax
	push	_688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+48],eax
	push	_692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+52],eax
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+56],eax
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	mov	dword [ebx+72],1
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [_codderx_network_TServer+56]
	call	_brl_threads_CreateThread
	add	esp,8
	mov	dword [ebp-32],eax
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	call	_brl_threads_DetachThread
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_715
_657:
	mov	eax,ebp
	push	eax
	push	_722
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_718
	call	_brl_blitz_NullObjectError
_718:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_715:
	call	dword [_bbOnDebugLeaveScope]
_615:
	push	_725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_bbDelay
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_19
__codderx_network_TServer_DoClient_UDP:
	push	ebp
	mov	ebp,esp
	sub	esp,68
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],0
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbEmptyString
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],0
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_935
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TServer
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-12],eax
	push	_736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_25:
_23:
	mov	eax,ebp
	push	eax
	push	_934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_738
	mov	eax,ebp
	push	eax
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_742
	mov	eax,ebp
	push	eax
	push	_839
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_26
_28:
	mov	eax,ebp
	push	eax
	push	_746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_26:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_745
	call	_brl_blitz_NullObjectError
_745:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_28
_27:
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_750
	mov	eax,ebp
	push	eax
	push	_838
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_29
_31:
	mov	eax,ebp
	push	eax
	push	_837
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_759
	mov	eax,ebp
	push	eax
	push	_835
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-20],eax
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_770
	call	_brl_blitz_NullObjectError
_770:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_773
	call	_brl_blitz_NullObjectError
_773:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_33
_35:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_778
	call	_brl_blitz_NullObjectError
_778:
	push	_codderx_network_TClient
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_33
	mov	eax,ebp
	push	eax
	push	_803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	push	ebx
	mov	eax,dword [ebx]
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
	jne	_784
	mov	eax,ebp
	push	eax
	push	_802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+216]
	add	esp,4
	mov	eax,eax
	cmp	dword [esi+68],eax
	jne	_790
	mov	eax,ebp
	push	eax
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+12],eax
	push	_795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	mov	dword [ebx+16],1
	push	_799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	push	_800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_34
_790:
	call	dword [_bbOnDebugLeaveScope]
_784:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_36
_38:
	mov	eax,ebp
	push	eax
	push	_833
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	push	_812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	push	dword [ebp-32]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_813
	mov	eax,ebp
	push	eax
	push	_829
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],1
	jne	_815
	mov	eax,ebp
	push	eax
	push	_827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_818
	call	_brl_blitz_NullObjectError
_818:
	push	dword [ebx+28]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_821
	call	_brl_blitz_NullObjectError
_821:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_823
	call	_brl_blitz_NullObjectError
_823:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	push	dword [ebx+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_815:
	push	_828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_37
_813:
	push	_830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_36:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_38
_37:
	call	dword [_bbOnDebugLeaveScope]
_759:
	call	dword [_bbOnDebugLeaveScope]
_29:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_31
_30:
	call	dword [_bbOnDebugLeaveScope]
_750:
	call	dword [_bbOnDebugLeaveScope]
_742:
	push	_840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_842
	call	_brl_blitz_NullObjectError
_842:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_40
_42:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_854
	call	_brl_blitz_NullObjectError
_854:
	push	_codderx_network_TClient
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_40
	mov	eax,ebp
	push	eax
	push	_927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	push	_857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
	push	dword [ebx+56]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_863
	call	_brl_blitz_NullObjectError
_863:
	mov	eax,dword [ebx+52]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_43
_45:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	push	_codderx_network_TMessage
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
	push	_914
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	mov	eax,dword [esi+68]
	and	eax,0xffff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+192]
	add	esp,8
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_879
	call	_brl_blitz_NullObjectError
_879:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_881
	call	_brl_blitz_NullObjectError
_881:
	push	dword [esi+64]
	call	dword [_vertex_bnetex_TNetwork+68]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbEmptyString
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_46
_48:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_896
	call	_brl_blitz_NullObjectError
_896:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_900
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_894
	call	_brl_blitz_NullObjectError
_894:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_903
	call	_brl_blitz_NullObjectError
_903:
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	mov	ebx,dword [ebx+52]
	cmp	ebx,_bbNullObject
	jne	_908
	call	_brl_blitz_NullObjectError
_908:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-40],1
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-40],15
	jle	_911
	mov	eax,ebp
	push	eax
	push	_913
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_44
_911:
	call	dword [_bbOnDebugLeaveScope]
_43:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_869
	call	_brl_blitz_NullObjectError
_869:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_917
	call	_brl_blitz_NullObjectError
_917:
	push	dword [ebx+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-40],0
	jle	_919
	mov	eax,ebp
	push	eax
	push	_926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	push	_923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_925
	call	_brl_blitz_NullObjectError
_925:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_919:
	call	dword [_bbOnDebugLeaveScope]
_40:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_931
	call	_brl_blitz_NullObjectError
_931:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_738:
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_bbDelay
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_25
__codderx_network_TServer_DoClient:
	push	ebp
	mov	ebp,esp
	sub	esp,128
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],_bbEmptyString
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbEmptyString
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],0
	mov	dword [ebp-36],0
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbEmptyString
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_940
	call	_brl_blitz_NullObjectError
_940:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-12],eax
	push	_942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_944
	call	_brl_blitz_NullObjectError
_944:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-16],eax
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-24],eax
	push	_950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_954
	call	_brl_blitz_NullObjectError
_954:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_959
	call	_brl_blitz_NullObjectError
_959:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_962
	call	_brl_blitz_NullObjectError
_962:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-32],eax
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_51:
_49:
	mov	eax,ebp
	push	eax
	push	_1410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_968
	call	_brl_blitz_NullObjectError
_968:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+236]
	add	esp,4
	cmp	eax,1
	je	_969
	mov	eax,ebp
	push	eax
	push	_971
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_50
_969:
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-20]
	cmp	eax,15000
	jl	_973
	mov	eax,ebp
	push	eax
	push	_975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_50
_973:
	push	_976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_978
	call	_brl_blitz_NullObjectError
_978:
	mov	eax,dword [ebx+48]
	cmp	dword [ebp-28],eax
	jle	_979
	mov	eax,ebp
	push	eax
	push	_1004
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_101
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	mov	eax,dword [esi+64]
	mov	dword [ebx+8],eax
	push	_988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_990
	call	_brl_blitz_NullObjectError
_990:
	call	_bbMilliSecs
	mov	dword [ebx+12],eax
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	push	dword [ebx+44]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_999
	call	_brl_blitz_NullObjectError
_999:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	push	dword [ebx+44]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_50
_979:
	push	_1005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-24]
	cmp	eax,1000
	jl	_1006
	mov	eax,ebp
	push	eax
	push	_1009
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_1008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_1006:
	push	_1010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1012
	call	_brl_blitz_NullObjectError
_1012:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_1013
	mov	eax,ebp
	push	eax
	push	_1238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_52
_54:
	mov	eax,ebp
	push	eax
	push	_1017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_52:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1016
	call	_brl_blitz_NullObjectError
_1016:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_1021
	mov	eax,ebp
	push	eax
	push	_1237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	push	_1023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_1024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_55
_57:
	mov	eax,ebp
	push	eax
	push	_1236
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1029
	call	_brl_blitz_NullObjectError
_1029:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_1031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_58
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1032
	mov	eax,ebp
	push	eax
	push	_1046
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_59
_61:
	mov	eax,ebp
	push	eax
	push	_1045
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_62
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1038
	mov	eax,ebp
	push	eax
	push	_1040
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_60
_1038:
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	push	dword [ebp-44]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+68],eax
	call	dword [_bbOnDebugLeaveScope]
_59:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_61
_60:
	call	dword [_bbOnDebugLeaveScope]
_1032:
	push	_1047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_63
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1048
	mov	eax,ebp
	push	eax
	push	_1088
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_1
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_64
_66:
	mov	eax,ebp
	push	eax
	push	_1086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1054
	call	_brl_blitz_NullObjectError
_1054:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_67
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1056
	mov	eax,ebp
	push	eax
	push	_1070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	push	_68
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1065
	call	_brl_blitz_NullObjectError
_1065:
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1068
	call	_brl_blitz_NullObjectError
_1068:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_65
_1056:
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_70
	push	dword [ebp-44]
	call	_brl_retro_Instr
	add	esp,12
	mov	dword [ebp-52],eax
	push	_1073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	sub	eax,1
	push	eax
	push	dword [ebp-44]
	call	_brl_retro_Left
	add	esp,8
	mov	dword [ebp-56],eax
	push	_1075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_71
	push	dword [ebp-56]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1076
	mov	eax,ebp
	push	eax
	push	_1078
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	push	dword [eax+8]
	mov	eax,dword [ebp-52]
	add	eax,1
	push	eax
	push	dword [ebp-44]
	call	_brl_retro_Mid
	add	esp,12
	mov	dword [ebp-48],eax
	call	dword [_bbOnDebugLeaveScope]
_1076:
	push	_1079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-56]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1080
	mov	eax,ebp
	push	eax
	push	_1085
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	mov	eax,dword [ebp-44]
	push	dword [eax+8]
	mov	eax,dword [ebp-52]
	add	eax,1
	push	eax
	push	dword [ebp-44]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+84],eax
	call	dword [_bbOnDebugLeaveScope]
_1080:
	call	dword [_bbOnDebugLeaveScope]
_64:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_66
_65:
	call	dword [_bbOnDebugLeaveScope]
_1048:
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1091
	mov	eax,ebp
	push	eax
	push	_1121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-60],eax
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1096
	call	_brl_blitz_NullObjectError
_1096:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+12],eax
	push	_1098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_73
_75:
	mov	eax,ebp
	push	eax
	push	_1120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1101
	call	_brl_blitz_NullObjectError
_1101:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_1102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1103
	mov	eax,ebp
	push	eax
	push	_1116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1106
	call	_brl_blitz_NullObjectError
_1106:
	push	dword [ebx+28]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1111
	call	_brl_blitz_NullObjectError
_1111:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1114
	call	_brl_blitz_NullObjectError
_1114:
	push	dword [ebx+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_74
_1103:
	push	_1117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_73:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_75
_74:
	call	dword [_bbOnDebugLeaveScope]
_1091:
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	push	dword [ebp-44]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1123
	mov	eax,ebp
	push	eax
	push	_1232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	push	_1128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1130
	call	_brl_blitz_NullObjectError
_1130:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-68],eax
	push	_1132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1134
	call	_brl_blitz_NullObjectError
_1134:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	push	dword [ebx+36]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	push	_1141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1144
	call	_brl_blitz_NullObjectError
_1144:
	mov	edi,dword [ebx+32]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1147
	call	_brl_blitz_NullObjectError
_1147:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_77
_79:
	cmp	ebx,_bbNullObject
	jne	_1152
	call	_brl_blitz_NullObjectError
_1152:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	je	_77
	mov	eax,ebp
	push	eax
	push	_1165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_1155
	call	_brl_blitz_NullObjectError
_1155:
	push	dword [ebp-64]
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1156
	mov	eax,ebp
	push	eax
	push	_1164
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_1159
	call	_brl_blitz_NullObjectError
_1159:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+24],eax
	jne	_1160
	mov	eax,ebp
	push	eax
	push	_1163
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-80]
	mov	dword [ebp-76],eax
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_78
_1160:
	call	dword [_bbOnDebugLeaveScope]
_1156:
	call	dword [_bbOnDebugLeaveScope]
_77:
	cmp	ebx,_bbNullObject
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_79
_78:
	push	_1166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-76],_bbNullObject
	jne	_1167
	mov	eax,ebp
	push	eax
	push	_1190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	mov	eax,dword [ebp-64]
	mov	dword [ebx+8],eax
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	mov	eax,dword [ebp-68]
	mov	dword [ebx+20],eax
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1179
	call	_brl_blitz_NullObjectError
_1179:
	push	dword [ebp-68]
	call	_brl_bank_CreateBank
	add	esp,4
	mov	dword [ebx+16],eax
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1183
	call	_brl_blitz_NullObjectError
_1183:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_1185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1187
	call	_brl_blitz_NullObjectError
_1187:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_1189
	call	_brl_blitz_NullObjectError
_1189:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1167:
	push	_1191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],0
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-72]
	mov	dword [ebp-116],eax
	jmp	_1193
_82:
	mov	eax,ebp
	push	eax
	push	_1210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-76]
	cmp	edi,_bbNullObject
	jne	_1197
	call	_brl_blitz_NullObjectError
_1197:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1199
	call	_brl_blitz_NullObjectError
_1199:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1203
	call	_brl_blitz_NullObjectError
_1203:
	push	dword [ebp-16]
	call	_brl_stream_ReadByte
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	push	eax
	push	dword [edi+16]
	call	_brl_bank_PokeByte
	add	esp,12
	push	_1204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1206
	call	_brl_blitz_NullObjectError
_1206:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
	mov	eax,dword [esi+20]
	sub	eax,1
	mov	dword [ebx+20],eax
	call	dword [_bbOnDebugLeaveScope]
_80:
	add	dword [ebp-84],1
_1193:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-84],eax
	jle	_82
_81:
	push	_1212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-72],0
	jne	_1213
	mov	eax,ebp
	push	eax
	push	_1219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1216
	call	_brl_blitz_NullObjectError
_1216:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_1218
	call	_brl_blitz_NullObjectError
_1218:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1213:
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1222
	call	_brl_blitz_NullObjectError
_1222:
	cmp	dword [ebx+20],0
	jne	_1223
	mov	eax,ebp
	push	eax
	push	_1228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1226
	call	_brl_blitz_NullObjectError
_1226:
	mov	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
_1223:
	push	_1229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	push	dword [ebx+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1123:
	call	dword [_bbOnDebugLeaveScope]
_55:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1026
	call	_brl_blitz_NullObjectError
_1026:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_57
_56:
	call	dword [_bbOnDebugLeaveScope]
_1021:
	call	dword [_bbOnDebugLeaveScope]
_1013:
	push	_1239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	push	_1241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-32]
	cmp	eax,100
	jle	_1242
	mov	eax,ebp
	push	eax
	push	_1351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-32],eax
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1246
	call	_brl_blitz_NullObjectError
_1246:
	push	dword [ebx+48]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1250
	call	_brl_blitz_NullObjectError
_1250:
	mov	esi,dword [ebx+44]
	cmp	esi,_bbNullObject
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_83
_85:
	cmp	ebx,_bbNullObject
	jne	_1258
	call	_brl_blitz_NullObjectError
_1258:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-88],eax
	cmp	dword [ebp-88],_bbNullObject
	je	_83
	mov	eax,ebp
	push	eax
	push	_1347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1261
	call	_brl_blitz_NullObjectError
_1261:
	cmp	dword [ebx+16],_bbNullObject
	jne	_1262
	mov	eax,ebp
	push	eax
	push	_1280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1265
	call	_brl_blitz_NullObjectError
_1265:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	push	dword [esi+12]
	call	_brl_bank_LoadBank
	add	esp,4
	mov	dword [ebx+16],eax
	push	_1269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1271
	call	_brl_blitz_NullObjectError
_1271:
	cmp	dword [ebx+16],_bbNullObject
	jne	_1272
	mov	eax,ebp
	push	eax
	push	_1279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1275
	call	_brl_blitz_NullObjectError
_1275:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_1277
	call	_brl_blitz_NullObjectError
_1277:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_84
_1272:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1281
_1262:
	mov	eax,ebp
	push	eax
	push	_1344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1284
	call	_brl_blitz_NullObjectError
_1284:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_1286
	call	_brl_blitz_NullObjectError
_1286:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1288
	call	_brl_blitz_NullObjectError
_1288:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	mov	dword [ebp-92],eax
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],4096
	jl	_1291
	mov	eax,ebp
	push	eax
	push	_1293
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],4096
	call	dword [_bbOnDebugLeaveScope]
_1291:
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],0
	jle	_1295
	mov	eax,ebp
	push	eax
	push	_1335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1298
	call	_brl_blitz_NullObjectError
_1298:
	push	_76
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1301
	call	_brl_blitz_NullObjectError
_1301:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1303
	call	_brl_blitz_NullObjectError
_1303:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,8
	push	_1304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1306
	call	_brl_blitz_NullObjectError
_1306:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_1310
	call	_brl_blitz_NullObjectError
_1310:
	push	esi
	mov	eax,dword [esi]
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
	push	_1311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1313
	call	_brl_blitz_NullObjectError
_1313:
	push	dword [ebp-92]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	mov	dword [ebp-96],1
	mov	eax,dword [ebp-92]
	mov	dword [ebp-120],eax
	jmp	_1316
_88:
	mov	eax,ebp
	push	eax
	push	_1331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_1320
	call	_brl_blitz_NullObjectError
_1320:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_1322
	call	_brl_blitz_NullObjectError
_1322:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1324
	call	_brl_blitz_NullObjectError
_1324:
	push	dword [ebx+20]
	push	dword [esi+16]
	call	_brl_bank_PeekByte
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+96]
	add	esp,8
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_1330
	call	_brl_blitz_NullObjectError
_1330:
	mov	eax,dword [esi+20]
	add	eax,1
	mov	dword [ebx+20],eax
	call	dword [_bbOnDebugLeaveScope]
_86:
	add	dword [ebp-96],1
_1316:
	mov	eax,dword [ebp-120]
	cmp	dword [ebp-96],eax
	jle	_88
_87:
	push	_1332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1295:
	push	_1336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],0
	jne	_1337
	mov	eax,ebp
	push	eax
	push	_1343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1340
	call	_brl_blitz_NullObjectError
_1340:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_1342
	call	_brl_blitz_NullObjectError
_1342:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1337:
	call	dword [_bbOnDebugLeaveScope]
_1281:
	push	_1346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_84
_83:
	cmp	ebx,_bbNullObject
	jne	_1256
	call	_brl_blitz_NullObjectError
_1256:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_85
_84:
	push	_1348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1350
	call	_brl_blitz_NullObjectError
_1350:
	push	dword [ebx+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1242:
	push	_1352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1354
	call	_brl_blitz_NullObjectError
_1354:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1358
	call	_brl_blitz_NullObjectError
_1358:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-128],eax
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1361
	call	_brl_blitz_NullObjectError
_1361:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-124],eax
	jmp	_89
_91:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1366
	call	_brl_blitz_NullObjectError
_1366:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	cmp	dword [ebp-100],_bbNullObject
	je	_89
	mov	eax,ebp
	push	eax
	push	_1399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1369
	call	_brl_blitz_NullObjectError
_1369:
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbEmptyString
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1376
	call	_brl_blitz_NullObjectError
_1376:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_92
_94:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-104],eax
	cmp	dword [ebp-104],_bbNullObject
	je	_92
	mov	eax,ebp
	push	eax
	push	_1385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_92:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1379
	call	_brl_blitz_NullObjectError
_1379:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_94
_93:
	push	_1386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1388
	call	_brl_blitz_NullObjectError
_1388:
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1391
	call	_brl_blitz_NullObjectError
_1391:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1393
	call	_brl_blitz_NullObjectError
_1393:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-36],1
	push	_1395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-36],15
	jle	_1396
	mov	eax,ebp
	push	eax
	push	_1398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_90
_1396:
	call	dword [_bbOnDebugLeaveScope]
_89:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1364
	call	_brl_blitz_NullObjectError
_1364:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	push	_1400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1402
	call	_brl_blitz_NullObjectError
_1402:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-36],0
	jle	_1404
	mov	eax,ebp
	push	eax
	push	_1408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1407
	call	_brl_blitz_NullObjectError
_1407:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1404:
	push	_1409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_bbDelay
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_51
_50:
	push	_1411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1413
	call	_brl_blitz_NullObjectError
_1413:
	push	dword [ebx+28]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1417
	call	_brl_blitz_NullObjectError
_1417:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1420
	call	_brl_blitz_NullObjectError
_1420:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_95
_97:
	cmp	ebx,_bbNullObject
	jne	_1425
	call	_brl_blitz_NullObjectError
_1425:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-108],eax
	cmp	dword [ebp-108],_bbNullObject
	je	_95
	mov	eax,ebp
	push	eax
	push	_1436
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_1428
	call	_brl_blitz_NullObjectError
_1428:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+12],eax
	jne	_1429
	mov	eax,ebp
	push	eax
	push	_1435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_1434
	call	_brl_blitz_NullObjectError
_1434:
	push	dword [ebp-108]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1429:
	call	dword [_bbOnDebugLeaveScope]
_95:
	cmp	ebx,_bbNullObject
	jne	_1423
	call	_brl_blitz_NullObjectError
_1423:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	push	_1437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1439
	call	_brl_blitz_NullObjectError
_1439:
	push	dword [ebx+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1442
	call	_brl_blitz_NullObjectError
_1442:
	push	dword [ebx+36]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1446
	call	_brl_blitz_NullObjectError
_1446:
	mov	edi,dword [ebx+32]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1449
	call	_brl_blitz_NullObjectError
_1449:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_98
_100:
	cmp	ebx,_bbNullObject
	jne	_1454
	call	_brl_blitz_NullObjectError
_1454:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-112],eax
	cmp	dword [ebp-112],_bbNullObject
	je	_98
	mov	eax,ebp
	push	eax
	push	_1465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1457
	call	_brl_blitz_NullObjectError
_1457:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+24],eax
	jne	_1458
	mov	eax,ebp
	push	eax
	push	_1464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_1463
	call	_brl_blitz_NullObjectError
_1463:
	push	dword [ebp-112]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1458:
	call	dword [_bbOnDebugLeaveScope]
_98:
	cmp	ebx,_bbNullObject
	jne	_1452
	call	_brl_blitz_NullObjectError
_1452:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_100
_99:
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1468
	call	_brl_blitz_NullObjectError
_1468:
	push	dword [ebx+36]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1471
	call	_brl_blitz_NullObjectError
_1471:
	mov	dword [ebx+72],0
	push	_1473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1475
	call	_brl_blitz_NullObjectError
_1475:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1478
	call	_brl_blitz_NullObjectError
_1478:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1483
	call	_brl_blitz_NullObjectError
_1483:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1486
	call	_brl_blitz_NullObjectError
_1486:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_1487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1489
	call	_brl_blitz_NullObjectError
_1489:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_296
_296:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_DosBannMSG_Count:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_1502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_1496
	push	ebp
	push	_1501
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1499
	call	_brl_blitz_NullObjectError
_1499:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+48],eax
	call	dword [_bbOnDebugLeaveScope]
_1496:
	mov	ebx,0
	jmp	_300
_300:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_DosBann_Time:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_1512
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_1506
	push	ebp
	push	_1511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1509
	call	_brl_blitz_NullObjectError
_1509:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+52],eax
	call	dword [_bbOnDebugLeaveScope]
_1506:
	mov	ebx,0
	jmp	_304
_304:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_CreateServer:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_1608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TServer
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1519
	call	_brl_blitz_NullObjectError
_1519:
	push	_vertex_bnetex_TTCPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+8],eax
	push	_1521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1523
	call	_brl_blitz_NullObjectError
_1523:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+16],eax
	push	_1525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1527
	call	_brl_blitz_NullObjectError
_1527:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+20],eax
	push	_1529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1531
	call	_brl_blitz_NullObjectError
_1531:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+24],eax
	push	_1533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1535
	call	_brl_blitz_NullObjectError
_1535:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+28],eax
	push	_1537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1539
	call	_brl_blitz_NullObjectError
_1539:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+40],eax
	push	_1541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1543
	call	_brl_blitz_NullObjectError
_1543:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+44],eax
	push	_1545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1547
	call	_brl_blitz_NullObjectError
_1547:
	mov	dword [ebx+48],15
	push	_1549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1551
	call	_brl_blitz_NullObjectError
_1551:
	mov	dword [ebx+52],10
	push	_1553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1555
	call	_brl_blitz_NullObjectError
_1555:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+36],eax
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1559
	call	_brl_blitz_NullObjectError
_1559:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+32],eax
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1563
	call	_brl_blitz_NullObjectError
_1563:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1565
	call	_brl_blitz_NullObjectError
_1565:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_1566
	push	ebp
	push	_1568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_1566:
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1571
	call	_brl_blitz_NullObjectError
_1571:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1573
	call	_brl_blitz_NullObjectError
_1573:
	mov	eax,dword [ebp-4]
	and	eax,0xffff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,8
	cmp	eax,0
	jne	_1574
	push	ebp
	push	_1576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_1574:
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1579
	call	_brl_blitz_NullObjectError
_1579:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1581
	call	_brl_blitz_NullObjectError
_1581:
	push	32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+228]
	add	esp,8
	cmp	eax,0
	jne	_1582
	push	ebp
	push	_1584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_1582:
	push	_1585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1587
	call	_brl_blitz_NullObjectError
_1587:
	push	_vertex_bnetex_TUDPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+12],eax
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1591
	call	_brl_blitz_NullObjectError
_1591:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1593
	call	_brl_blitz_NullObjectError
_1593:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_1594
	push	ebp
	push	_1596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_1594:
	push	_1597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1599
	call	_brl_blitz_NullObjectError
_1599:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1601
	call	_brl_blitz_NullObjectError
_1601:
	mov	eax,dword [ebp-8]
	and	eax,0xffff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,8
	push	_1602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [_codderx_network_TServer+48]
	call	_brl_threads_CreateThread
	add	esp,8
	mov	dword [ebp-16],eax
	push	_1604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_threads_DetachThread
	add	esp,4
	push	_1605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [_codderx_network_TServer+52]
	call	_brl_threads_CreateThread
	add	esp,8
	mov	dword [ebp-16],eax
	push	_1606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_threads_DetachThread
	add	esp,4
	push	_1607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_308
_308:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TBann_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1614
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_101
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbEmptyString
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_1613
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_311
_311:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TClient_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_codderx_network_TClient
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+64],_bbEmptyString
	mov	eax,dword [ebp-4]
	mov	dword [eax+68],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+72],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+76],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+80],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+84],0
	push	ebp
	push	_1615
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_314
_314:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__codderx_network_TClient_DoServer_UDP:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbEmptyString
	mov	dword [ebp-16],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_1746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1621
	call	_brl_blitz_NullObjectError
_1621:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-12],eax
	push	_1623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_104:
_102:
	mov	eax,ebp
	push	eax
	push	_1745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_1625
	mov	eax,ebp
	push	eax
	push	_1743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1628
	call	_brl_blitz_NullObjectError
_1628:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_1629
	mov	eax,ebp
	push	eax
	push	_1680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_105
_107:
	mov	eax,ebp
	push	eax
	push	_1633
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_105:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1632
	call	_brl_blitz_NullObjectError
_1632:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_107
_106:
	push	_1634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1636
	call	_brl_blitz_NullObjectError
_1636:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_1637
	mov	eax,ebp
	push	eax
	push	_1679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_108
_110:
	mov	eax,ebp
	push	eax
	push	_1678
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1643
	call	_brl_blitz_NullObjectError
_1643:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_1645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1646
	mov	eax,ebp
	push	eax
	push	_1677
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-24],eax
	push	_1649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1651
	call	_brl_blitz_NullObjectError
_1651:
	mov	dword [ebx+16],1
	push	_1653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_111
_113:
	mov	eax,ebp
	push	eax
	push	_1676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1656
	call	_brl_blitz_NullObjectError
_1656:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	push	dword [ebp-28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1659
	mov	eax,ebp
	push	eax
	push	_1672
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1662
	call	_brl_blitz_NullObjectError
_1662:
	push	dword [ebx+32]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1665
	call	_brl_blitz_NullObjectError
_1665:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1667
	call	_brl_blitz_NullObjectError
_1667:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1670
	call	_brl_blitz_NullObjectError
_1670:
	push	dword [ebx+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_112
_1659:
	push	_1673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1675
	call	_brl_blitz_NullObjectError
_1675:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_111:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_113
_112:
	call	dword [_bbOnDebugLeaveScope]
_1646:
	call	dword [_bbOnDebugLeaveScope]
_108:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_110
_109:
	call	dword [_bbOnDebugLeaveScope]
_1637:
	call	dword [_bbOnDebugLeaveScope]
_1629:
	push	_1681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1683
	call	_brl_blitz_NullObjectError
_1683:
	push	dword [ebx+56]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1689
	call	_brl_blitz_NullObjectError
_1689:
	mov	eax,dword [ebx+52]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1692
	call	_brl_blitz_NullObjectError
_1692:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-40],eax
	jmp	_114
_116:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1697
	call	_brl_blitz_NullObjectError
_1697:
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
	je	_114
	mov	eax,ebp
	push	eax
	push	_1730
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1700
	call	_brl_blitz_NullObjectError
_1700:
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbEmptyString
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1704
	call	_brl_blitz_NullObjectError
_1704:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1707
	call	_brl_blitz_NullObjectError
_1707:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_117
_119:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1712
	call	_brl_blitz_NullObjectError
_1712:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_117
	mov	eax,ebp
	push	eax
	push	_1716
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1715
	call	_brl_blitz_NullObjectError
_1715:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_117:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1710
	call	_brl_blitz_NullObjectError
_1710:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	push	_1717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1719
	call	_brl_blitz_NullObjectError
_1719:
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1722
	call	_brl_blitz_NullObjectError
_1722:
	mov	ebx,dword [ebx+52]
	cmp	ebx,_bbNullObject
	jne	_1724
	call	_brl_blitz_NullObjectError
_1724:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	push	_1726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],15
	jle	_1727
	mov	eax,ebp
	push	eax
	push	_1729
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_115
_1727:
	call	dword [_bbOnDebugLeaveScope]
_114:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1695
	call	_brl_blitz_NullObjectError
_1695:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_116
_115:
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1733
	call	_brl_blitz_NullObjectError
_1733:
	push	dword [ebx+56]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jle	_1735
	mov	eax,ebp
	push	eax
	push	_1742
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1738
	call	_brl_blitz_NullObjectError
_1738:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	push	_1739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1741
	call	_brl_blitz_NullObjectError
_1741:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1735:
	call	dword [_bbOnDebugLeaveScope]
_1625:
	push	_1744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_bbDelay
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_104
__codderx_network_TClient_DoServer:
	push	ebp
	mov	ebp,esp
	sub	esp,100
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-36],_bbEmptyString
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],0
	mov	dword [ebp-32],0
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbEmptyString
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	eax,ebp
	push	eax
	push	_2189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1751
	call	_brl_blitz_NullObjectError
_1751:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-12],eax
	push	_1753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1755
	call	_brl_blitz_NullObjectError
_1755:
	mov	dword [ebx+72],1
	push	_1757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-16],eax
	push	_1759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_1761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_1763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1765
	call	_brl_blitz_NullObjectError
_1765:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1767
	call	_brl_blitz_NullObjectError
_1767:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+184]
	add	esp,4
	mov	eax,eax
	mov	dword [ebp-28],eax
	push	_1769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_122:
_120:
	mov	eax,ebp
	push	eax
	push	_2178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1772
	call	_brl_blitz_NullObjectError
_1772:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+236]
	add	esp,4
	cmp	eax,1
	je	_1773
	mov	eax,ebp
	push	eax
	push	_1775
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_121
_1773:
	push	_1776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-16]
	cmp	eax,15000
	jl	_1777
	mov	eax,ebp
	push	eax
	push	_1779
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_121
_1777:
	push	_1780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+176]
	add	esp,4
	cmp	eax,0
	je	_1783
	mov	eax,ebp
	push	eax
	push	_1964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_123
_125:
	mov	eax,ebp
	push	eax
	push	_1787
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_123:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1786
	call	_brl_blitz_NullObjectError
_1786:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,4
	cmp	eax,0
	jne	_125
_124:
	push	_1788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1790
	call	_brl_blitz_NullObjectError
_1790:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	jle	_1791
	mov	eax,ebp
	push	eax
	push	_1963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-16],eax
	push	_1793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_126
_128:
	mov	eax,ebp
	push	eax
	push	_1962
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1798
	call	_brl_blitz_NullObjectError
_1798:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	push	_1800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1801
	mov	eax,ebp
	push	eax
	push	_1827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_codderx_network_NewMessage
	mov	dword [ebp-40],eax
	push	_1804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_129
_131:
	mov	eax,ebp
	push	eax
	push	_1826
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1807
	call	_brl_blitz_NullObjectError
_1807:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	push	_1808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1809
	mov	eax,ebp
	push	eax
	push	_1822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	push	dword [ebx+32]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1815
	call	_brl_blitz_NullObjectError
_1815:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1817
	call	_brl_blitz_NullObjectError
_1817:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1820
	call	_brl_blitz_NullObjectError
_1820:
	push	dword [ebx+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_1821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_130
_1809:
	push	_1823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1825
	call	_brl_blitz_NullObjectError
_1825:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_129:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_131
_130:
	call	dword [_bbOnDebugLeaveScope]
_1801:
	push	_1828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_68
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1829
	mov	eax,ebp
	push	eax
	push	_1851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1832
	call	_brl_blitz_NullObjectError
_1832:
	mov	dword [ebx+76],0
	push	_1834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1836
	call	_brl_blitz_NullObjectError
_1836:
	call	_bbMilliSecs
	mov	dword [ebx+80],eax
	push	_1838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_132
_134:
	mov	eax,ebp
	push	eax
	push	_1850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1841
	call	_brl_blitz_NullObjectError
_1841:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	push	_1842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1843
	mov	eax,ebp
	push	eax
	push	_1845
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_133
_1843:
	push	_1846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1848
	call	_brl_blitz_NullObjectError
_1848:
	call	_bbMilliSecs
	mov	ebx,eax
	push	dword [ebp-36]
	call	_bbStringToInt
	add	esp,4
	sub	ebx,eax
	mov	dword [esi+84],ebx
	call	dword [_bbOnDebugLeaveScope]
_132:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_134
_133:
	call	dword [_bbOnDebugLeaveScope]
_1829:
	push	_1852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1853
	mov	eax,ebp
	push	eax
	push	_1961
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1854
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1856
	call	_brl_blitz_NullObjectError
_1856:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_1858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1860
	call	_brl_blitz_NullObjectError
_1860:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-48],eax
	push	_1862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1864
	call	_brl_blitz_NullObjectError
_1864:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-52],eax
	push	_1866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1868
	call	_brl_blitz_NullObjectError
_1868:
	push	dword [ebx+40]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_1869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	push	_1871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1874
	call	_brl_blitz_NullObjectError
_1874:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1877
	call	_brl_blitz_NullObjectError
_1877:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_135
_137:
	cmp	ebx,_bbNullObject
	jne	_1882
	call	_brl_blitz_NullObjectError
_1882:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	je	_135
	mov	eax,ebp
	push	eax
	push	_1895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_1885
	call	_brl_blitz_NullObjectError
_1885:
	push	dword [ebp-44]
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1886
	mov	eax,ebp
	push	eax
	push	_1894
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_1889
	call	_brl_blitz_NullObjectError
_1889:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+24],eax
	jne	_1890
	mov	eax,ebp
	push	eax
	push	_1893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	dword [ebp-56],eax
	push	_1892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_136
_1890:
	call	dword [_bbOnDebugLeaveScope]
_1886:
	call	dword [_bbOnDebugLeaveScope]
_135:
	cmp	ebx,_bbNullObject
	jne	_1880
	call	_brl_blitz_NullObjectError
_1880:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_137
_136:
	push	_1896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-56],_bbNullObject
	jne	_1897
	mov	eax,ebp
	push	eax
	push	_1920
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TFileSend
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-56],eax
	push	_1899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1901
	call	_brl_blitz_NullObjectError
_1901:
	mov	eax,dword [ebp-44]
	mov	dword [ebx+8],eax
	push	_1903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1905
	call	_brl_blitz_NullObjectError
_1905:
	mov	eax,dword [ebp-48]
	mov	dword [ebx+20],eax
	push	_1907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1909
	call	_brl_blitz_NullObjectError
_1909:
	push	dword [ebp-48]
	call	_brl_bank_CreateBank
	add	esp,4
	mov	dword [ebx+16],eax
	push	_1911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1913
	call	_brl_blitz_NullObjectError
_1913:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_1915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1917
	call	_brl_blitz_NullObjectError
_1917:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1919
	call	_brl_blitz_NullObjectError
_1919:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1897:
	push	_1921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	mov	dword [ebp-64],1
	mov	eax,dword [ebp-52]
	mov	dword [ebp-88],eax
	jmp	_1923
_140:
	mov	eax,ebp
	push	eax
	push	_1940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-56]
	cmp	edi,_bbNullObject
	jne	_1927
	call	_brl_blitz_NullObjectError
_1927:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1929
	call	_brl_blitz_NullObjectError
_1929:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_1931
	call	_brl_blitz_NullObjectError
_1931:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1933
	call	_brl_blitz_NullObjectError
_1933:
	push	dword [ebp-12]
	call	_brl_stream_ReadByte
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	push	eax
	push	dword [edi+16]
	call	_brl_bank_PokeByte
	add	esp,12
	push	_1934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1936
	call	_brl_blitz_NullObjectError
_1936:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_1939
	call	_brl_blitz_NullObjectError
_1939:
	mov	eax,dword [esi+20]
	sub	eax,1
	mov	dword [ebx+20],eax
	call	dword [_bbOnDebugLeaveScope]
_138:
	add	dword [ebp-64],1
_1923:
	mov	eax,dword [ebp-88]
	cmp	dword [ebp-64],eax
	jle	_140
_139:
	push	_1941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-52],0
	jne	_1942
	mov	eax,ebp
	push	eax
	push	_1948
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1945
	call	_brl_blitz_NullObjectError
_1945:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1942:
	push	_1949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1951
	call	_brl_blitz_NullObjectError
_1951:
	cmp	dword [ebx+20],0
	jne	_1952
	mov	eax,ebp
	push	eax
	push	_1957
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1955
	call	_brl_blitz_NullObjectError
_1955:
	mov	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
_1952:
	push	_1958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1960
	call	_brl_blitz_NullObjectError
_1960:
	push	dword [ebx+40]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1853:
	call	dword [_bbOnDebugLeaveScope]
_126:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1795
	call	_brl_blitz_NullObjectError
_1795:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	je	_128
_127:
	call	dword [_bbOnDebugLeaveScope]
_1791:
	call	dword [_bbOnDebugLeaveScope]
_1783:
	push	_1965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	push	_1967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_1968
	mov	eax,ebp
	push	eax
	push	_1980
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	push	_1970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1972
	call	_brl_blitz_NullObjectError
_1972:
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1975
	call	_brl_blitz_NullObjectError
_1975:
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1978
	call	_brl_blitz_NullObjectError
_1978:
	push	_62
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	call	dword [_bbOnDebugLeaveScope]
_1968:
	push	_1981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1983
	call	_brl_blitz_NullObjectError
_1983:
	cmp	dword [ebx+76],0
	jne	_1984
	mov	eax,ebp
	push	eax
	push	_2009
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1987
	call	_brl_blitz_NullObjectError
_1987:
	call	_bbMilliSecs
	sub	eax,dword [ebx+80]
	cmp	eax,1000
	jl	_1988
	mov	eax,ebp
	push	eax
	push	_2008
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1991
	call	_brl_blitz_NullObjectError
_1991:
	mov	dword [ebx+76],1
	push	_1993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1995
	call	_brl_blitz_NullObjectError
_1995:
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_1996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1998
	call	_brl_blitz_NullObjectError
_1998:
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
	push	_1999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2001
	call	_brl_blitz_NullObjectError
_2001:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2003
	call	_brl_blitz_NullObjectError
_2003:
	push	dword [esi+84]
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
	push	_2004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2006
	call	_brl_blitz_NullObjectError
_2006:
	push	_67
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_2007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	call	dword [_bbOnDebugLeaveScope]
_1988:
	call	dword [_bbOnDebugLeaveScope]
_1984:
	push	_2010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2012
	call	_brl_blitz_NullObjectError
_2012:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_2013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-100],eax
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2019
	call	_brl_blitz_NullObjectError
_2019:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-96],eax
	jmp	_143
_145:
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	je	_143
	mov	eax,ebp
	push	eax
	push	_2057
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2027
	call	_brl_blitz_NullObjectError
_2027:
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_2028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbEmptyString
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2034
	call	_brl_blitz_NullObjectError
_2034:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_146
_148:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2039
	call	_brl_blitz_NullObjectError
_2039:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	je	_146
	mov	eax,ebp
	push	eax
	push	_2043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2042
	call	_brl_blitz_NullObjectError
_2042:
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_146:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_148
_147:
	push	_2044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2046
	call	_brl_blitz_NullObjectError
_2046:
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_2047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2051
	call	_brl_blitz_NullObjectError
_2051:
	push	dword [ebp-68]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_2052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_2053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],15
	jle	_2054
	mov	eax,ebp
	push	eax
	push	_2056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_144
_2054:
	call	dword [_bbOnDebugLeaveScope]
_143:
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2022
	call	_brl_blitz_NullObjectError
_2022:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_145
_144:
	push	_2058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2060
	call	_brl_blitz_NullObjectError
_2060:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_2061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],0
	jle	_2062
	mov	eax,ebp
	push	eax
	push	_2066
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2065
	call	_brl_blitz_NullObjectError
_2065:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2062:
	push	_2067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-20]
	cmp	eax,100
	jle	_2068
	mov	eax,ebp
	push	eax
	push	_2176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_2070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2072
	call	_brl_blitz_NullObjectError
_2072:
	push	dword [ebx+48]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_2073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2076
	call	_brl_blitz_NullObjectError
_2076:
	mov	esi,dword [ebx+44]
	cmp	esi,_bbNullObject
	jne	_2079
	call	_brl_blitz_NullObjectError
_2079:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_149
_151:
	cmp	ebx,_bbNullObject
	jne	_2084
	call	_brl_blitz_NullObjectError
_2084:
	push	_codderx_network_TFileSend
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-76],eax
	cmp	dword [ebp-76],_bbNullObject
	je	_149
	mov	eax,ebp
	push	eax
	push	_2172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2087
	call	_brl_blitz_NullObjectError
_2087:
	cmp	dword [ebx+16],_bbNullObject
	jne	_2088
	mov	eax,ebp
	push	eax
	push	_2106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2089
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2091
	call	_brl_blitz_NullObjectError
_2091:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_2094
	call	_brl_blitz_NullObjectError
_2094:
	push	dword [esi+12]
	call	_brl_bank_LoadBank
	add	esp,4
	mov	dword [ebx+16],eax
	push	_2095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2097
	call	_brl_blitz_NullObjectError
_2097:
	cmp	dword [ebx+16],_bbNullObject
	jne	_2098
	mov	eax,ebp
	push	eax
	push	_2105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2101
	call	_brl_blitz_NullObjectError
_2101:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_2103
	call	_brl_blitz_NullObjectError
_2103:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_150
_2098:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2107
_2088:
	mov	eax,ebp
	push	eax
	push	_2170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2110
	call	_brl_blitz_NullObjectError
_2110:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_2112
	call	_brl_blitz_NullObjectError
_2112:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2114
	call	_brl_blitz_NullObjectError
_2114:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	sub	eax,dword [ebx+20]
	mov	dword [ebp-80],eax
	push	_2116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-80],4096
	jl	_2117
	mov	eax,ebp
	push	eax
	push	_2119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],4096
	call	dword [_bbOnDebugLeaveScope]
_2117:
	push	_2120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-80],0
	jle	_2121
	mov	eax,ebp
	push	eax
	push	_2161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2124
	call	_brl_blitz_NullObjectError
_2124:
	push	_76
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_2125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2127
	call	_brl_blitz_NullObjectError
_2127:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2129
	call	_brl_blitz_NullObjectError
_2129:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,8
	push	_2130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2132
	call	_brl_blitz_NullObjectError
_2132:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_2136
	call	_brl_blitz_NullObjectError
_2136:
	push	esi
	mov	eax,dword [esi]
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
	push	_2137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2139
	call	_brl_blitz_NullObjectError
_2139:
	push	dword [ebp-80]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	push	_2140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],0
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-80]
	mov	dword [ebp-92],eax
	jmp	_2142
_154:
	mov	eax,ebp
	push	eax
	push	_2157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_2146
	call	_brl_blitz_NullObjectError
_2146:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_2148
	call	_brl_blitz_NullObjectError
_2148:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2150
	call	_brl_blitz_NullObjectError
_2150:
	push	dword [ebx+20]
	push	dword [esi+16]
	call	_brl_bank_PeekByte
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+96]
	add	esp,8
	push	_2151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2153
	call	_brl_blitz_NullObjectError
_2153:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	mov	eax,dword [esi+20]
	add	eax,1
	mov	dword [ebx+20],eax
	call	dword [_bbOnDebugLeaveScope]
_152:
	add	dword [ebp-84],1
_2142:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-84],eax
	jle	_154
_153:
	push	_2158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2160
	call	_brl_blitz_NullObjectError
_2160:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2121:
	push	_2162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-80],0
	jne	_2163
	mov	eax,ebp
	push	eax
	push	_2169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2166
	call	_brl_blitz_NullObjectError
_2166:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_2168
	call	_brl_blitz_NullObjectError
_2168:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2163:
	call	dword [_bbOnDebugLeaveScope]
_2107:
	push	_2171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_150
_149:
	cmp	ebx,_bbNullObject
	jne	_2082
	call	_brl_blitz_NullObjectError
_2082:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_151
_150:
	push	_2173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2175
	call	_brl_blitz_NullObjectError
_2175:
	push	dword [ebx+48]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2068:
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_bbDelay
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_122
_121:
	push	_2179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2181
	call	_brl_blitz_NullObjectError
_2181:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_2182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2184
	call	_brl_blitz_NullObjectError
_2184:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	_2185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	mov	dword [ebx+72],0
	mov	ebx,_bbNullObject
	jmp	_320
_320:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_NetworkConnect:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_2192
	push	ebp
	push	_2196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2195
	call	_brl_blitz_NullObjectError
_2195:
	mov	ebx,dword [ebx+72]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_323
_2192:
	mov	ebx,0
	jmp	_323
_323:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetClientList:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_2200
	mov	eax,ebp
	push	eax
	push	_2226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_2203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2205
	call	_brl_blitz_NullObjectError
_2205:
	push	dword [ebx+20]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_2206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2209
	call	_brl_blitz_NullObjectError
_2209:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2212
	call	_brl_blitz_NullObjectError
_2212:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_155
_157:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2217
	call	_brl_blitz_NullObjectError
_2217:
	push	_codderx_network_TClient
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_155
	mov	eax,ebp
	push	eax
	push	_2221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2220
	call	_brl_blitz_NullObjectError
_2220:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_155:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2215
	call	_brl_blitz_NullObjectError
_2215:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_157
_156:
	push	_2222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2224
	call	_brl_blitz_NullObjectError
_2224:
	push	dword [ebx+20]
	call	_brl_threads_UnlockMutex
	add	esp,4
	push	_2225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_326
_2200:
	mov	eax,ebp
	push	eax
	push	_2229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_326
_326:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_ClientLatenz:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2234
	call	_brl_blitz_NullObjectError
_2234:
	mov	ebx,dword [ebx+84]
	jmp	_329
_329:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_ConnectServer:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_2366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_2239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2241
	call	_brl_blitz_NullObjectError
_2241:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+60],eax
	push	_2243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2245
	call	_brl_blitz_NullObjectError
_2245:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+64],eax
	push	_2247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2249
	call	_brl_blitz_NullObjectError
_2249:
	push	_vertex_bnetex_TTCPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+8],eax
	push	_2251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2253
	call	_brl_blitz_NullObjectError
_2253:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+28],eax
	push	_2255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2257
	call	_brl_blitz_NullObjectError
_2257:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+16],eax
	push	_2259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2261
	call	_brl_blitz_NullObjectError
_2261:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+32],eax
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2265
	call	_brl_blitz_NullObjectError
_2265:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+20],eax
	push	_2267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2269
	call	_brl_blitz_NullObjectError
_2269:
	call	_bbMilliSecs
	mov	dword [ebx+80],eax
	push	_2271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2273
	call	_brl_blitz_NullObjectError
_2273:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+36],eax
	push	_2275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2277
	call	_brl_blitz_NullObjectError
_2277:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+40],eax
	push	_2279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2281
	call	_brl_blitz_NullObjectError
_2281:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+44],eax
	push	_2283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2285
	call	_brl_blitz_NullObjectError
_2285:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+48],eax
	push	_2287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2289
	call	_brl_blitz_NullObjectError
_2289:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+52],eax
	push	_2291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2293
	call	_brl_blitz_NullObjectError
_2293:
	call	_brl_threads_CreateMutex
	mov	dword [ebx+56],eax
	push	_2295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2297
	call	_brl_blitz_NullObjectError
_2297:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_2300
	push	ebp
	push	_2302
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_334
_2300:
	push	_2303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2305
	call	_brl_blitz_NullObjectError
_2305:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2307
	call	_brl_blitz_NullObjectError
_2307:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,8
	cmp	eax,0
	jne	_2308
	push	ebp
	push	_2310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_334
_2308:
	push	_2311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2315
	call	_brl_blitz_NullObjectError
_2315:
	push	dword [ebp-4]
	call	dword [_vertex_bnetex_TNetwork+48]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	push	_2316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2318
	call	_brl_blitz_NullObjectError
_2318:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2320
	call	_brl_blitz_NullObjectError
_2320:
	mov	eax,dword [ebp-8]
	and	eax,0xffff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+192]
	add	esp,8
	push	_2321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2323
	call	_brl_blitz_NullObjectError
_2323:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2325
	call	_brl_blitz_NullObjectError
_2325:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+224]
	add	esp,8
	cmp	eax,0
	jne	_2326
	push	ebp
	push	_2328
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_334
_2326:
	push	_2329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2331
	call	_brl_blitz_NullObjectError
_2331:
	push	_vertex_bnetex_TUDPStream
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebx+12],eax
	push	_2333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2335
	call	_brl_blitz_NullObjectError
_2335:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2337
	call	_brl_blitz_NullObjectError
_2337:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,4
	cmp	eax,0
	jne	_2338
	push	ebp
	push	_2340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_334
_2338:
	push	_2341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2343
	call	_brl_blitz_NullObjectError
_2343:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2345
	call	_brl_blitz_NullObjectError
_2345:
	push	dword [ebp-4]
	call	dword [_vertex_bnetex_TNetwork+68]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+200]
	add	esp,8
	push	_2346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2348
	call	_brl_blitz_NullObjectError
_2348:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2350
	call	_brl_blitz_NullObjectError
_2350:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,8
	push	_2351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2353
	call	_brl_blitz_NullObjectError
_2353:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2355
	call	_brl_blitz_NullObjectError
_2355:
	mov	eax,dword [ebp-12]
	and	eax,0xffff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+192]
	add	esp,8
	push	_2356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2358
	call	_brl_blitz_NullObjectError
_2358:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+68],eax
	push	_2360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [_codderx_network_TClient+52]
	call	_brl_threads_CreateThread
	add	esp,8
	mov	dword [ebp-20],eax
	push	_2362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_threads_DetachThread
	add	esp,4
	push	_2363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [_codderx_network_TClient+48]
	call	_brl_threads_CreateThread
	add	esp,8
	mov	dword [ebp-20],eax
	push	_2364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_threads_DetachThread
	add	esp,4
	push	_2365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_334
_334:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_codderx_network_GetMessages:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TServer
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_2370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_codderx_network_TClient
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_2374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_2375
	mov	eax,ebp
	push	eax
	push	_2403
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2378
	call	_brl_blitz_NullObjectError
_2378:
	push	dword [ebx+28]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_2379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2382
	call	_brl_blitz_NullObjectError
_2382:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2385
	call	_brl_blitz_NullObjectError
_2385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_158
_160:
	cmp	ebx,_bbNullObject
	jne	_2390
	call	_brl_blitz_NullObjectError
_2390:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_158
	mov	eax,ebp
	push	eax
	push	_2399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2393
	call	_brl_blitz_NullObjectError
_2393:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2396
	call	_brl_blitz_NullObjectError
_2396:
	mov	esi,dword [esi+24]
	cmp	esi,_bbNullObject
	jne	_2398
	call	_brl_blitz_NullObjectError
_2398:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_158:
	cmp	ebx,_bbNullObject
	jne	_2388
	call	_brl_blitz_NullObjectError
_2388:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_160
_159:
	push	_2400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2402
	call	_brl_blitz_NullObjectError
_2402:
	push	dword [ebx+28]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2375:
	push	_2404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_2405
	mov	eax,ebp
	push	eax
	push	_2433
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2408
	call	_brl_blitz_NullObjectError
_2408:
	push	dword [ebx+32]
	call	_brl_threads_LockMutex
	add	esp,4
	push	_2409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	mov	edi,dword [ebx+28]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2415
	call	_brl_blitz_NullObjectError
_2415:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_161
_163:
	cmp	ebx,_bbNullObject
	jne	_2420
	call	_brl_blitz_NullObjectError
_2420:
	push	_codderx_network_TMessage
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_161
	mov	eax,ebp
	push	eax
	push	_2429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2423
	call	_brl_blitz_NullObjectError
_2423:
	push	dword [ebp-24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2426
	call	_brl_blitz_NullObjectError
_2426:
	mov	esi,dword [esi+28]
	cmp	esi,_bbNullObject
	jne	_2428
	call	_brl_blitz_NullObjectError
_2428:
	push	dword [ebp-24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_161:
	cmp	ebx,_bbNullObject
	jne	_2418
	call	_brl_blitz_NullObjectError
_2418:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_163
_162:
	push	_2430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2432
	call	_brl_blitz_NullObjectError
_2432:
	push	dword [ebx+32]
	call	_brl_threads_UnlockMutex
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2405:
	push	_2434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_337
_337:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_341:
	dd	0
_340:
	db	"network",0
	align	4
_339:
	dd	1
	dd	_340
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
_345:
	db	"Self",0
_346:
	db	":TFileSend",0
	align	4
_344:
	dd	1
	dd	_176
	dd	2
	dd	_345
	dd	_346
	dd	-4
	dd	0
	align	4
_343:
	dd	3
	dd	0
	dd	0
_386:
	db	"SendFile",0
_387:
	db	"Pos",0
_388:
	db	"F",0
	align	4
_385:
	dd	1
	dd	_386
	dd	2
	dd	_173
	dd	_174
	dd	-4
	dd	2
	dd	_168
	dd	_167
	dd	-8
	dd	2
	dd	_166
	dd	_167
	dd	-12
	dd	2
	dd	_387
	dd	_172
	dd	-16
	dd	2
	dd	_388
	dd	_346
	dd	-20
	dd	0
_348:
	db	"$BMXPATH/mod/codderx.mod/network.mod/network.bmx",0
	align	4
_347:
	dd	_348
	dd	40
	dd	2
	align	4
_350:
	dd	_348
	dd	41
	dd	2
	align	4
_352:
	dd	_348
	dd	42
	dd	2
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
_353:
	dd	_348
	dd	47
	dd	2
_362:
	db	"A",0
	align	4
_361:
	dd	3
	dd	0
	dd	2
	dd	_362
	dd	_172
	dd	-24
	dd	0
	align	4
_354:
	dd	_348
	dd	44
	dd	3
	align	4
_356:
	dd	_348
	dd	45
	dd	3
	align	4
_359:
	dd	3
	dd	0
	dd	0
	align	4
_358:
	dd	_348
	dd	45
	dd	17
	align	4
_360:
	dd	_348
	dd	46
	dd	3
	align	4
_363:
	dd	_348
	dd	49
	dd	2
	align	4
_364:
	dd	_348
	dd	51
	dd	2
	align	4
_366:
	dd	_348
	dd	52
	dd	3
	align	4
_370:
	dd	_348
	dd	53
	dd	3
	align	4
_374:
	dd	_348
	dd	54
	dd	2
	align	4
_377:
	dd	_348
	dd	55
	dd	2
	align	4
_382:
	dd	_348
	dd	56
	dd	2
_467:
	db	"GetFile",0
_468:
	db	"O",0
_469:
	db	":Object",0
_470:
	db	"List",0
	align	4
_466:
	dd	1
	dd	_467
	dd	2
	dd	_468
	dd	_469
	dd	-4
	dd	2
	dd	_220
	dd	_221
	dd	-8
	dd	2
	dd	_173
	dd	_174
	dd	-12
	dd	2
	dd	_470
	dd	_181
	dd	-16
	dd	0
	align	4
_389:
	dd	_348
	dd	64
	dd	2
	align	4
_391:
	dd	_348
	dd	65
	dd	2
	align	4
_393:
	dd	_348
	dd	67
	dd	2
	align	4
_395:
	dd	_348
	dd	68
	dd	2
	align	4
_429:
	dd	3
	dd	0
	dd	0
	align	4
_397:
	dd	_348
	dd	69
	dd	3
	align	4
_400:
	dd	_348
	dd	70
	dd	3
	align	4
_425:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-20
	dd	0
	align	4
_412:
	dd	_348
	dd	71
	dd	4
	align	4
_421:
	dd	3
	dd	0
	dd	0
	align	4
_416:
	dd	_348
	dd	72
	dd	5
	align	4
_422:
	dd	_348
	dd	74
	dd	4
	align	4
_426:
	dd	_348
	dd	76
	dd	3
	align	4
_430:
	dd	_348
	dd	79
	dd	2
	align	4
_464:
	dd	3
	dd	0
	dd	0
	align	4
_432:
	dd	_348
	dd	80
	dd	3
	align	4
_435:
	dd	_348
	dd	81
	dd	3
	align	4
_460:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-24
	dd	0
	align	4
_447:
	dd	_348
	dd	82
	dd	4
	align	4
_456:
	dd	3
	dd	0
	dd	0
	align	4
_451:
	dd	_348
	dd	83
	dd	5
	align	4
_457:
	dd	_348
	dd	85
	dd	4
	align	4
_461:
	dd	_348
	dd	87
	dd	3
	align	4
_465:
	dd	_348
	dd	90
	dd	2
_473:
	db	":TMessage",0
	align	4
_472:
	dd	1
	dd	_176
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	0
	align	4
_471:
	dd	3
	dd	0
	dd	0
_480:
	db	"Text",0
	align	4
_479:
	dd	1
	dd	_183
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	2
	dd	_480
	dd	_167
	dd	-8
	dd	0
	align	4
_474:
	dd	_348
	dd	107
	dd	3
	align	4
_484:
	dd	1
	dd	_185
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	0
	align	4
_481:
	dd	_348
	dd	115
	dd	3
	align	4
_518:
	dd	1
	dd	_186
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	2
	dd	_182
	dd	_172
	dd	-12
	dd	0
	align	4
_485:
	dd	_348
	dd	122
	dd	3
	align	4
_517:
	dd	3
	dd	0
	dd	0
	align	4
_487:
	dd	_348
	dd	123
	dd	4
	align	4
_500:
	dd	3
	dd	0
	dd	0
	align	4
_489:
	dd	_348
	dd	124
	dd	5
	align	4
_492:
	dd	_348
	dd	125
	dd	5
	align	4
_497:
	dd	_348
	dd	126
	dd	5
	align	4
_516:
	dd	3
	dd	0
	dd	0
	align	4
_502:
	dd	_348
	dd	127
	dd	4
	align	4
_515:
	dd	3
	dd	0
	dd	0
	align	4
_504:
	dd	_348
	dd	128
	dd	5
	align	4
_507:
	dd	_348
	dd	129
	dd	5
	align	4
_512:
	dd	_348
	dd	130
	dd	5
	align	4
_543:
	dd	1
	dd	_188
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	2
	dd	_480
	dd	_167
	dd	-8
	dd	0
	align	4
_519:
	dd	_348
	dd	136
	dd	3
	align	4
_521:
	dd	_348
	dd	137
	dd	3
_541:
	db	"T",0
	align	4
_540:
	dd	3
	dd	0
	dd	2
	dd	_541
	dd	_167
	dd	-12
	dd	0
	align	4
_533:
	dd	_348
	dd	138
	dd	4
	align	4
_534:
	dd	_348
	dd	139
	dd	4
	align	4
_539:
	dd	_348
	dd	140
	dd	4
	align	4
_542:
	dd	_348
	dd	142
	dd	3
	align	4
_549:
	dd	1
	dd	_171
	dd	2
	dd	_345
	dd	_473
	dd	-4
	dd	0
	align	4
_544:
	dd	_348
	dd	146
	dd	3
_557:
	db	"Message",0
	align	4
_556:
	dd	1
	dd	_185
	dd	2
	dd	_557
	dd	_473
	dd	-4
	dd	0
	align	4
_550:
	dd	_348
	dd	155
	dd	2
	align	4
_555:
	dd	3
	dd	0
	dd	0
	align	4
_552:
	dd	_348
	dd	156
	dd	3
_565:
	db	"CountMessage",0
	align	4
_564:
	dd	1
	dd	_565
	dd	2
	dd	_557
	dd	_473
	dd	-4
	dd	0
	align	4
_558:
	dd	_348
	dd	165
	dd	2
	align	4
_563:
	dd	3
	dd	0
	dd	0
	align	4
_560:
	dd	_348
	dd	166
	dd	3
_573:
	db	"GetMessageText",0
	align	4
_572:
	dd	1
	dd	_573
	dd	2
	dd	_557
	dd	_473
	dd	-4
	dd	0
	align	4
_566:
	dd	_348
	dd	175
	dd	2
	align	4
_571:
	dd	3
	dd	0
	dd	0
	align	4
_568:
	dd	_348
	dd	176
	dd	3
_582:
	db	"NewMessage",0
_583:
	db	"M",0
	align	4
_581:
	dd	1
	dd	_582
	dd	2
	dd	_583
	dd	_473
	dd	-4
	dd	0
	align	4
_574:
	dd	_348
	dd	185
	dd	2
	align	4
_576:
	dd	_348
	dd	186
	dd	2
	align	4
_580:
	dd	_348
	dd	187
	dd	2
_591:
	db	"AddMessage",0
	align	4
_590:
	dd	1
	dd	_591
	dd	2
	dd	_557
	dd	_473
	dd	-4
	dd	2
	dd	_480
	dd	_167
	dd	-8
	dd	0
	align	4
_584:
	dd	_348
	dd	194
	dd	2
	align	4
_589:
	dd	3
	dd	0
	dd	0
	align	4
_586:
	dd	_348
	dd	195
	dd	3
_599:
	db	"SendMessage",0
	align	4
_598:
	dd	1
	dd	_599
	dd	2
	dd	_557
	dd	_473
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	2
	dd	_182
	dd	_172
	dd	-12
	dd	0
	align	4
_592:
	dd	_348
	dd	203
	dd	2
	align	4
_597:
	dd	3
	dd	0
	dd	0
	align	4
_594:
	dd	_348
	dd	204
	dd	3
	align	4
_601:
	dd	1
	dd	_176
	dd	2
	dd	_345
	dd	_221
	dd	-4
	dd	0
	align	4
_600:
	dd	3
	dd	0
	dd	0
_728:
	db	"data",0
_729:
	db	"Svr",0
	align	4
_727:
	dd	1
	dd	_208
	dd	2
	dd	_728
	dd	_469
	dd	-4
	dd	2
	dd	_729
	dd	_221
	dd	-8
	dd	2
	dd	_192
	dd	_193
	dd	-12
	dd	2
	dd	_173
	dd	_193
	dd	-16
	dd	0
	align	4
_602:
	dd	_348
	dd	234
	dd	3
	align	4
_604:
	dd	_348
	dd	235
	dd	3
	align	4
_608:
	dd	_348
	dd	236
	dd	3
	align	4
_610:
	dd	_348
	dd	278
	dd	3
	align	4
_726:
	dd	3
	dd	0
	dd	0
	align	4
_611:
	dd	_348
	dd	239
	dd	4
	align	4
_614:
	dd	_348
	dd	241
	dd	4
_724:
	db	"Vorhanden",0
	align	4
_723:
	dd	3
	dd	0
	dd	2
	dd	_724
	dd	_172
	dd	-20
	dd	0
	align	4
_616:
	dd	_348
	dd	242
	dd	5
	align	4
_618:
	dd	_348
	dd	243
	dd	5
	align	4
_621:
	dd	_348
	dd	244
	dd	5
_651:
	db	"Bann",0
_652:
	db	":TBann",0
	align	4
_650:
	dd	3
	dd	0
	dd	2
	dd	_651
	dd	_652
	dd	-24
	dd	0
	align	4
_633:
	dd	_348
	dd	245
	dd	6
	align	4
_645:
	dd	3
	dd	0
	dd	0
	align	4
_639:
	dd	_348
	dd	246
	dd	7
	align	4
_644:
	dd	_348
	dd	247
	dd	7
	align	4
_649:
	dd	3
	dd	0
	dd	0
	align	4
_647:
	dd	_348
	dd	249
	dd	7
	align	4
_648:
	dd	_348
	dd	250
	dd	7
	align	4
_653:
	dd	_348
	dd	253
	dd	5
	align	4
_656:
	dd	_348
	dd	255
	dd	5
_712:
	db	"C",0
_713:
	db	"TH",0
_714:
	db	":TThread",0
	align	4
_711:
	dd	3
	dd	0
	dd	2
	dd	_712
	dd	_174
	dd	-28
	dd	2
	dd	_713
	dd	_714
	dd	-32
	dd	0
	align	4
_658:
	dd	_348
	dd	256
	dd	6
	align	4
_660:
	dd	_348
	dd	257
	dd	6
	align	4
_666:
	dd	_348
	dd	258
	dd	6
	align	4
_672:
	dd	_348
	dd	259
	dd	6
	align	4
_676:
	dd	_348
	dd	260
	dd	6
	align	4
_680:
	dd	_348
	dd	261
	dd	6
	align	4
_684:
	dd	_348
	dd	262
	dd	6
	align	4
_688:
	dd	_348
	dd	263
	dd	6
	align	4
_692:
	dd	_348
	dd	264
	dd	6
	align	4
_696:
	dd	_348
	dd	265
	dd	6
	align	4
_700:
	dd	_348
	dd	266
	dd	6
	align	4
_704:
	dd	_348
	dd	267
	dd	6
	align	4
_708:
	dd	_348
	dd	269
	dd	6
	align	4
_710:
	dd	_348
	dd	270
	dd	6
	align	4
_722:
	dd	3
	dd	0
	dd	0
	align	4
_716:
	dd	_348
	dd	272
	dd	6
	align	4
_719:
	dd	_348
	dd	273
	dd	6
	align	4
_725:
	dd	_348
	dd	277
	dd	4
	align	4
_935:
	dd	1
	dd	_210
	dd	2
	dd	_728
	dd	_469
	dd	-4
	dd	2
	dd	_220
	dd	_221
	dd	-8
	dd	2
	dd	_192
	dd	_195
	dd	-12
	dd	0
	align	4
_730:
	dd	_348
	dd	283
	dd	3
	align	4
_732:
	dd	_348
	dd	284
	dd	3
	align	4
_736:
	dd	_348
	dd	358
	dd	3
	align	4
_934:
	dd	3
	dd	0
	dd	0
	align	4
_737:
	dd	_348
	dd	287
	dd	4
	align	4
_932:
	dd	3
	dd	0
	dd	0
	align	4
_739:
	dd	_348
	dd	288
	dd	5
	align	4
_839:
	dd	3
	dd	0
	dd	0
	align	4
_743:
	dd	_348
	dd	289
	dd	6
	align	4
_746:
	dd	3
	dd	0
	dd	0
	align	4
_747:
	dd	_348
	dd	291
	dd	6
	align	4
_838:
	dd	3
	dd	0
	dd	0
	align	4
_751:
	dd	_348
	dd	292
	dd	7
_834:
	db	"Line",0
	align	4
_837:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-16
	dd	0
	align	4
_754:
	dd	_348
	dd	293
	dd	8
	align	4
_758:
	dd	_348
	dd	295
	dd	8
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,80,65,67,75,93
_836:
	db	"Gefunden",0
	align	4
_835:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-20
	dd	2
	dd	_836
	dd	_172
	dd	-24
	dd	0
	align	4
_760:
	dd	_348
	dd	296
	dd	9
	align	4
_762:
	dd	_348
	dd	297
	dd	9
	align	4
_765:
	dd	_348
	dd	298
	dd	9
	align	4
_767:
	dd	_348
	dd	299
	dd	9
	align	4
_803:
	dd	3
	dd	0
	dd	2
	dd	_173
	dd	_174
	dd	-28
	dd	0
	align	4
_779:
	dd	_348
	dd	300
	dd	10
	align	4
_802:
	dd	3
	dd	0
	dd	0
	align	4
_785:
	dd	_348
	dd	301
	dd	11
	align	4
_801:
	dd	3
	dd	0
	dd	0
	align	4
_791:
	dd	_348
	dd	302
	dd	12
	align	4
_795:
	dd	_348
	dd	303
	dd	12
	align	4
_799:
	dd	_348
	dd	304
	dd	12
	align	4
_800:
	dd	_348
	dd	305
	dd	12
	align	4
_804:
	dd	_348
	dd	309
	dd	9
	align	4
_807:
	dd	_348
	dd	311
	dd	9
	align	4
_833:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-32
	dd	0
	align	4
_808:
	dd	_348
	dd	312
	dd	10
	align	4
_812:
	dd	_348
	dd	313
	dd	10
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,80,65,67,75,93
	align	4
_829:
	dd	3
	dd	0
	dd	0
	align	4
_814:
	dd	_348
	dd	314
	dd	11
	align	4
_827:
	dd	3
	dd	0
	dd	0
	align	4
_816:
	dd	_348
	dd	315
	dd	12
	align	4
_819:
	dd	_348
	dd	316
	dd	12
	align	4
_824:
	dd	_348
	dd	317
	dd	12
	align	4
_828:
	dd	_348
	dd	319
	dd	11
	align	4
_830:
	dd	_348
	dd	321
	dd	10
	align	4
_840:
	dd	_348
	dd	330
	dd	5
	align	4
_843:
	dd	_348
	dd	331
	dd	5
_928:
	db	"Nachrichten",0
	align	4
_927:
	dd	3
	dd	0
	dd	2
	dd	_173
	dd	_174
	dd	-36
	dd	2
	dd	_928
	dd	_172
	dd	-40
	dd	0
	align	4
_855:
	dd	_348
	dd	332
	dd	6
	align	4
_857:
	dd	_348
	dd	333
	dd	6
	align	4
_860:
	dd	_348
	dd	334
	dd	6
	align	4
_914:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-44
	dd	0
	align	4
_872:
	dd	_348
	dd	335
	dd	7
	align	4
_877:
	dd	_348
	dd	336
	dd	7
	align	4
_882:
	dd	_348
	dd	337
	dd	7
	align	4
_885:
	dd	_348
	dd	338
	dd	7
	align	4
_900:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_167
	dd	-48
	dd	0
	align	4
_897:
	dd	_348
	dd	339
	dd	8
	align	4
_901:
	dd	_348
	dd	341
	dd	7
	align	4
_904:
	dd	_348
	dd	342
	dd	7
	align	4
_909:
	dd	_348
	dd	343
	dd	7
	align	4
_910:
	dd	_348
	dd	344
	dd	7
	align	4
_913:
	dd	3
	dd	0
	dd	0
	align	4
_912:
	dd	_348
	dd	344
	dd	32
	align	4
_915:
	dd	_348
	dd	346
	dd	6
	align	4
_918:
	dd	_348
	dd	347
	dd	6
	align	4
_926:
	dd	3
	dd	0
	dd	0
	align	4
_920:
	dd	_348
	dd	348
	dd	7
	align	4
_923:
	dd	_348
	dd	349
	dd	7
	align	4
_929:
	dd	_348
	dd	353
	dd	5
	align	4
_933:
	dd	_348
	dd	357
	dd	4
_1491:
	db	"GemeldetTimer",0
_1492:
	db	"BannTimer",0
_1493:
	db	"MsgCount",0
_1494:
	db	"FileSendTimer",0
	align	4
_1490:
	dd	1
	dd	_211
	dd	2
	dd	_728
	dd	_469
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	2
	dd	_220
	dd	_221
	dd	-12
	dd	2
	dd	_192
	dd	_193
	dd	-16
	dd	2
	dd	_1491
	dd	_172
	dd	-20
	dd	2
	dd	_1492
	dd	_172
	dd	-24
	dd	2
	dd	_1493
	dd	_172
	dd	-28
	dd	2
	dd	_1494
	dd	_172
	dd	-32
	dd	0
	align	4
_936:
	dd	_348
	dd	362
	dd	3
	align	4
_938:
	dd	_348
	dd	363
	dd	3
	align	4
_942:
	dd	_348
	dd	364
	dd	3
	align	4
_946:
	dd	_348
	dd	366
	dd	3
	align	4
_948:
	dd	_348
	dd	368
	dd	3
	align	4
_950:
	dd	_348
	dd	369
	dd	3
	align	4
_952:
	dd	_348
	dd	371
	dd	3
	align	4
_955:
	dd	_348
	dd	372
	dd	3
	align	4
_960:
	dd	_348
	dd	373
	dd	3
	align	4
_963:
	dd	_348
	dd	375
	dd	3
	align	4
_965:
	dd	_348
	dd	551
	dd	3
	align	4
_1410:
	dd	3
	dd	0
	dd	2
	dd	_928
	dd	_172
	dd	-36
	dd	0
	align	4
_966:
	dd	_348
	dd	378
	dd	4
	align	4
_971:
	dd	3
	dd	0
	dd	0
	align	4
_970:
	dd	_348
	dd	379
	dd	5
	align	4
_972:
	dd	_348
	dd	382
	dd	4
	align	4
_975:
	dd	3
	dd	0
	dd	0
	align	4
_974:
	dd	_348
	dd	383
	dd	5
	align	4
_976:
	dd	_348
	dd	386
	dd	4
	align	4
_1004:
	dd	3
	dd	0
	dd	2
	dd	_651
	dd	_652
	dd	-40
	dd	0
	align	4
_980:
	dd	_348
	dd	387
	dd	5
	align	4
_982:
	dd	_348
	dd	388
	dd	5
	align	4
_988:
	dd	_348
	dd	389
	dd	5
	align	4
_992:
	dd	_348
	dd	390
	dd	5
	align	4
_995:
	dd	_348
	dd	391
	dd	5
	align	4
_1000:
	dd	_348
	dd	392
	dd	5
	align	4
_1003:
	dd	_348
	dd	393
	dd	5
	align	4
_1005:
	dd	_348
	dd	396
	dd	4
	align	4
_1009:
	dd	3
	dd	0
	dd	0
	align	4
_1007:
	dd	_348
	dd	397
	dd	5
	align	4
_1008:
	dd	_348
	dd	398
	dd	5
	align	4
_1010:
	dd	_348
	dd	402
	dd	4
	align	4
_1238:
	dd	3
	dd	0
	dd	0
	align	4
_1014:
	dd	_348
	dd	403
	dd	5
	align	4
_1017:
	dd	3
	dd	0
	dd	0
	align	4
_1018:
	dd	_348
	dd	404
	dd	5
	align	4
_1237:
	dd	3
	dd	0
	dd	0
	align	4
_1022:
	dd	_348
	dd	405
	dd	6
	align	4
_1023:
	dd	_348
	dd	406
	dd	6
	align	4
_1024:
	dd	_348
	dd	408
	dd	6
	align	4
_1236:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-44
	dd	0
	align	4
_1027:
	dd	_348
	dd	409
	dd	7
	align	4
_1031:
	dd	_348
	dd	411
	dd	7
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,85,68,80,93
	align	4
_1046:
	dd	3
	dd	0
	dd	0
	align	4
_1033:
	dd	_348
	dd	412
	dd	8
	align	4
_1045:
	dd	3
	dd	0
	dd	0
	align	4
_1034:
	dd	_348
	dd	413
	dd	9
	align	4
_1037:
	dd	_348
	dd	414
	dd	9
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,47,85,68,80,93
	align	4
_1040:
	dd	3
	dd	0
	dd	0
	align	4
_1039:
	dd	_348
	dd	415
	dd	10
	align	4
_1041:
	dd	_348
	dd	417
	dd	9
	align	4
_1047:
	dd	_348
	dd	422
	dd	7
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,80,73,78,71,93
_1089:
	db	"MS",0
	align	4
_1088:
	dd	3
	dd	0
	dd	2
	dd	_1089
	dd	_167
	dd	-48
	dd	0
	align	4
_1049:
	dd	_348
	dd	423
	dd	8
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_1051:
	dd	_348
	dd	424
	dd	8
_1087:
	db	"Bef",0
	align	4
_1086:
	dd	3
	dd	0
	dd	2
	dd	_387
	dd	_172
	dd	-52
	dd	2
	dd	_1087
	dd	_167
	dd	-56
	dd	0
	align	4
_1052:
	dd	_348
	dd	425
	dd	9
	align	4
_1055:
	dd	_348
	dd	426
	dd	9
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,80,73,78,71,93
	align	4
_1070:
	dd	3
	dd	0
	dd	0
	align	4
_1057:
	dd	_348
	dd	427
	dd	10
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,66,65,67,75,93
	align	4
_1060:
	dd	_348
	dd	428
	dd	10
	align	4
_1063:
	dd	_348
	dd	429
	dd	10
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,47,66,65,67,75,93
	align	4
_1066:
	dd	_348
	dd	430
	dd	10
	align	4
_1069:
	dd	_348
	dd	431
	dd	10
	align	4
_1071:
	dd	_348
	dd	434
	dd	9
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_1073:
	dd	_348
	dd	435
	dd	9
	align	4
_1075:
	dd	_348
	dd	437
	dd	9
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	77,83
	align	4
_1078:
	dd	3
	dd	0
	dd	0
	align	4
_1077:
	dd	_348
	dd	437
	dd	28
	align	4
_1079:
	dd	_348
	dd	438
	dd	9
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	80
	align	4
_1085:
	dd	3
	dd	0
	dd	0
	align	4
_1081:
	dd	_348
	dd	438
	dd	27
	align	4
_1090:
	dd	_348
	dd	442
	dd	7
	align	4
_1121:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-60
	dd	0
	align	4
_1092:
	dd	_348
	dd	443
	dd	8
	align	4
_1094:
	dd	_348
	dd	444
	dd	8
	align	4
_1098:
	dd	_348
	dd	445
	dd	8
	align	4
_1120:
	dd	3
	dd	0
	dd	0
	align	4
_1099:
	dd	_348
	dd	446
	dd	9
	align	4
_1102:
	dd	_348
	dd	447
	dd	9
	align	4
_1116:
	dd	3
	dd	0
	dd	0
	align	4
_1104:
	dd	_348
	dd	448
	dd	10
	align	4
_1107:
	dd	_348
	dd	449
	dd	10
	align	4
_1112:
	dd	_348
	dd	450
	dd	10
	align	4
_1115:
	dd	_348
	dd	451
	dd	10
	align	4
_1117:
	dd	_348
	dd	453
	dd	9
	align	4
_1122:
	dd	_348
	dd	458
	dd	7
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	91,70,73,76,69,93
_1233:
	db	"Size",0
_1234:
	db	"Muss",0
_1235:
	db	"InFile",0
	align	4
_1232:
	dd	3
	dd	0
	dd	2
	dd	_166
	dd	_167
	dd	-64
	dd	2
	dd	_1233
	dd	_172
	dd	-68
	dd	2
	dd	_1234
	dd	_172
	dd	-72
	dd	2
	dd	_1235
	dd	_346
	dd	-76
	dd	0
	align	4
_1124:
	dd	_348
	dd	459
	dd	8
	align	4
_1128:
	dd	_348
	dd	460
	dd	8
	align	4
_1132:
	dd	_348
	dd	461
	dd	8
	align	4
_1136:
	dd	_348
	dd	463
	dd	8
	align	4
_1139:
	dd	_348
	dd	464
	dd	8
	align	4
_1141:
	dd	_348
	dd	465
	dd	8
	align	4
_1165:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-80
	dd	0
	align	4
_1153:
	dd	_348
	dd	466
	dd	9
	align	4
_1164:
	dd	3
	dd	0
	dd	0
	align	4
_1157:
	dd	_348
	dd	467
	dd	10
	align	4
_1163:
	dd	3
	dd	0
	dd	0
	align	4
_1161:
	dd	_348
	dd	468
	dd	11
	align	4
_1162:
	dd	_348
	dd	469
	dd	11
	align	4
_1166:
	dd	_348
	dd	474
	dd	8
	align	4
_1190:
	dd	3
	dd	0
	dd	0
	align	4
_1168:
	dd	_348
	dd	475
	dd	9
	align	4
_1169:
	dd	_348
	dd	476
	dd	9
	align	4
_1173:
	dd	_348
	dd	477
	dd	9
	align	4
_1177:
	dd	_348
	dd	478
	dd	9
	align	4
_1181:
	dd	_348
	dd	479
	dd	9
	align	4
_1185:
	dd	_348
	dd	480
	dd	9
	align	4
_1191:
	dd	_348
	dd	484
	dd	8
_1211:
	db	"B",0
	align	4
_1210:
	dd	3
	dd	0
	dd	2
	dd	_1211
	dd	_172
	dd	-84
	dd	0
	align	4
_1195:
	dd	_348
	dd	485
	dd	9
	align	4
_1204:
	dd	_348
	dd	486
	dd	9
	align	4
_1212:
	dd	_348
	dd	489
	dd	8
	align	4
_1219:
	dd	3
	dd	0
	dd	0
	align	4
_1214:
	dd	_348
	dd	489
	dd	25
	align	4
_1220:
	dd	_348
	dd	490
	dd	8
	align	4
_1228:
	dd	3
	dd	0
	dd	0
	align	4
_1224:
	dd	_348
	dd	490
	dd	33
	align	4
_1229:
	dd	_348
	dd	491
	dd	8
	align	4
_1239:
	dd	_348
	dd	500
	dd	4
	align	4
_1241:
	dd	_348
	dd	502
	dd	4
	align	4
_1351:
	dd	3
	dd	0
	dd	0
	align	4
_1243:
	dd	_348
	dd	503
	dd	5
	align	4
_1244:
	dd	_348
	dd	504
	dd	5
	align	4
_1247:
	dd	_348
	dd	505
	dd	5
	align	4
_1347:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-88
	dd	0
	align	4
_1259:
	dd	_348
	dd	506
	dd	6
	align	4
_1280:
	dd	3
	dd	0
	dd	0
	align	4
_1263:
	dd	_348
	dd	507
	dd	7
	align	4
_1269:
	dd	_348
	dd	508
	dd	7
	align	4
_1279:
	dd	3
	dd	0
	dd	0
	align	4
_1273:
	dd	_348
	dd	509
	dd	8
	align	4
_1278:
	dd	_348
	dd	510
	dd	8
_1345:
	db	"MussSenden",0
	align	4
_1344:
	dd	3
	dd	0
	dd	2
	dd	_1345
	dd	_172
	dd	-92
	dd	0
	align	4
_1282:
	dd	_348
	dd	513
	dd	7
	align	4
_1290:
	dd	_348
	dd	514
	dd	7
	align	4
_1293:
	dd	3
	dd	0
	dd	0
	align	4
_1292:
	dd	_348
	dd	514
	dd	34
	align	4
_1294:
	dd	_348
	dd	515
	dd	7
	align	4
_1335:
	dd	3
	dd	0
	dd	0
	align	4
_1296:
	dd	_348
	dd	516
	dd	8
	align	4
_1299:
	dd	_348
	dd	517
	dd	8
	align	4
_1304:
	dd	_348
	dd	518
	dd	8
	align	4
_1311:
	dd	_348
	dd	519
	dd	8
	align	4
_1314:
	dd	_348
	dd	520
	dd	8
	align	4
_1331:
	dd	3
	dd	0
	dd	2
	dd	_1211
	dd	_172
	dd	-96
	dd	0
	align	4
_1318:
	dd	_348
	dd	521
	dd	9
	align	4
_1325:
	dd	_348
	dd	522
	dd	9
	align	4
_1332:
	dd	_348
	dd	524
	dd	8
	align	4
_1336:
	dd	_348
	dd	526
	dd	7
	align	4
_1343:
	dd	3
	dd	0
	dd	0
	align	4
_1338:
	dd	_348
	dd	527
	dd	8
	align	4
_1346:
	dd	_348
	dd	531
	dd	6
	align	4
_1348:
	dd	_348
	dd	533
	dd	5
	align	4
_1352:
	dd	_348
	dd	536
	dd	4
	align	4
_1355:
	dd	_348
	dd	537
	dd	4
	align	4
_1399:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-100
	dd	0
	align	4
_1367:
	dd	_348
	dd	538
	dd	5
	align	4
_1370:
	dd	_348
	dd	539
	dd	5
	align	4
_1385:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_167
	dd	-104
	dd	0
	align	4
_1382:
	dd	_348
	dd	540
	dd	6
	align	4
_1386:
	dd	_348
	dd	542
	dd	5
	align	4
_1389:
	dd	_348
	dd	543
	dd	5
	align	4
_1394:
	dd	_348
	dd	544
	dd	5
	align	4
_1395:
	dd	_348
	dd	545
	dd	5
	align	4
_1398:
	dd	3
	dd	0
	dd	0
	align	4
_1397:
	dd	_348
	dd	545
	dd	30
	align	4
_1400:
	dd	_348
	dd	547
	dd	4
	align	4
_1403:
	dd	_348
	dd	548
	dd	4
	align	4
_1408:
	dd	3
	dd	0
	dd	0
	align	4
_1405:
	dd	_348
	dd	548
	dd	28
	align	4
_1409:
	dd	_348
	dd	550
	dd	4
	align	4
_1411:
	dd	_348
	dd	553
	dd	3
	align	4
_1414:
	dd	_348
	dd	554
	dd	3
	align	4
_1436:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-108
	dd	0
	align	4
_1426:
	dd	_348
	dd	555
	dd	4
	align	4
_1435:
	dd	3
	dd	0
	dd	0
	align	4
_1430:
	dd	_348
	dd	555
	dd	30
	align	4
_1437:
	dd	_348
	dd	557
	dd	3
	align	4
_1440:
	dd	_348
	dd	559
	dd	3
	align	4
_1443:
	dd	_348
	dd	560
	dd	3
	align	4
_1465:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-112
	dd	0
	align	4
_1455:
	dd	_348
	dd	561
	dd	4
	align	4
_1464:
	dd	3
	dd	0
	dd	0
	align	4
_1459:
	dd	_348
	dd	561
	dd	30
	align	4
_1466:
	dd	_348
	dd	563
	dd	3
	align	4
_1469:
	dd	_348
	dd	565
	dd	3
	align	4
_1473:
	dd	_348
	dd	566
	dd	3
	align	4
_1476:
	dd	_348
	dd	567
	dd	3
	align	4
_1481:
	dd	_348
	dd	568
	dd	3
	align	4
_1484:
	dd	_348
	dd	569
	dd	3
	align	4
_1487:
	dd	_348
	dd	570
	dd	3
_1503:
	db	"DosBannMSG_Count",0
_1504:
	db	"CountMSG",0
	align	4
_1502:
	dd	1
	dd	_1503
	dd	2
	dd	_220
	dd	_221
	dd	-4
	dd	2
	dd	_1504
	dd	_172
	dd	-8
	dd	0
	align	4
_1495:
	dd	_348
	dd	580
	dd	2
	align	4
_1501:
	dd	3
	dd	0
	dd	0
	align	4
_1497:
	dd	_348
	dd	581
	dd	3
_1513:
	db	"DosBann_Time",0
_1514:
	db	"Sekunden",0
	align	4
_1512:
	dd	1
	dd	_1513
	dd	2
	dd	_220
	dd	_221
	dd	-4
	dd	2
	dd	_1514
	dd	_172
	dd	-8
	dd	0
	align	4
_1505:
	dd	_348
	dd	589
	dd	2
	align	4
_1511:
	dd	3
	dd	0
	dd	0
	align	4
_1507:
	dd	_348
	dd	590
	dd	3
_1609:
	db	"CreateServer",0
_1610:
	db	"TCP_Port",0
_1611:
	db	"UDP_Port",0
_1612:
	db	"S",0
	align	4
_1608:
	dd	1
	dd	_1609
	dd	2
	dd	_1610
	dd	_172
	dd	-4
	dd	2
	dd	_1611
	dd	_172
	dd	-8
	dd	2
	dd	_1612
	dd	_221
	dd	-12
	dd	2
	dd	_713
	dd	_714
	dd	-16
	dd	0
	align	4
_1515:
	dd	_348
	dd	599
	dd	2
	align	4
_1517:
	dd	_348
	dd	600
	dd	2
	align	4
_1521:
	dd	_348
	dd	601
	dd	2
	align	4
_1525:
	dd	_348
	dd	602
	dd	2
	align	4
_1529:
	dd	_348
	dd	603
	dd	2
	align	4
_1533:
	dd	_348
	dd	604
	dd	2
	align	4
_1537:
	dd	_348
	dd	605
	dd	2
	align	4
_1541:
	dd	_348
	dd	606
	dd	2
	align	4
_1545:
	dd	_348
	dd	607
	dd	2
	align	4
_1549:
	dd	_348
	dd	608
	dd	2
	align	4
_1553:
	dd	_348
	dd	609
	dd	2
	align	4
_1557:
	dd	_348
	dd	610
	dd	2
	align	4
_1561:
	dd	_348
	dd	612
	dd	2
	align	4
_1568:
	dd	3
	dd	0
	dd	0
	align	4
_1567:
	dd	_348
	dd	612
	dd	30
	align	4
_1569:
	dd	_348
	dd	613
	dd	2
	align	4
_1576:
	dd	3
	dd	0
	dd	0
	align	4
_1575:
	dd	_348
	dd	613
	dd	46
	align	4
_1577:
	dd	_348
	dd	614
	dd	2
	align	4
_1584:
	dd	3
	dd	0
	dd	0
	align	4
_1583:
	dd	_348
	dd	614
	dd	32
	align	4
_1585:
	dd	_348
	dd	616
	dd	2
	align	4
_1589:
	dd	_348
	dd	617
	dd	2
	align	4
_1596:
	dd	3
	dd	0
	dd	0
	align	4
_1595:
	dd	_348
	dd	617
	dd	27
	align	4
_1597:
	dd	_348
	dd	618
	dd	2
	align	4
_1602:
	dd	_348
	dd	620
	dd	2
	align	4
_1604:
	dd	_348
	dd	621
	dd	2
	align	4
_1605:
	dd	_348
	dd	623
	dd	2
	align	4
_1606:
	dd	_348
	dd	624
	dd	2
	align	4
_1607:
	dd	_348
	dd	626
	dd	2
	align	4
_1614:
	dd	1
	dd	_176
	dd	2
	dd	_345
	dd	_652
	dd	-4
	dd	0
	align	4
_1613:
	dd	3
	dd	0
	dd	0
	align	4
_1616:
	dd	1
	dd	_176
	dd	2
	dd	_345
	dd	_174
	dd	-4
	dd	0
	align	4
_1615:
	dd	3
	dd	0
	dd	0
	align	4
_1746:
	dd	1
	dd	_231
	dd	2
	dd	_728
	dd	_469
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	2
	dd	_192
	dd	_195
	dd	-12
	dd	0
	align	4
_1617:
	dd	_348
	dd	672
	dd	3
	align	4
_1619:
	dd	_348
	dd	673
	dd	3
	align	4
_1623:
	dd	_348
	dd	725
	dd	3
	align	4
_1745:
	dd	3
	dd	0
	dd	0
	align	4
_1624:
	dd	_348
	dd	676
	dd	4
	align	4
_1743:
	dd	3
	dd	0
	dd	2
	dd	_928
	dd	_172
	dd	-16
	dd	0
	align	4
_1626:
	dd	_348
	dd	677
	dd	5
	align	4
_1680:
	dd	3
	dd	0
	dd	0
	align	4
_1630:
	dd	_348
	dd	678
	dd	6
	align	4
_1633:
	dd	3
	dd	0
	dd	0
	align	4
_1634:
	dd	_348
	dd	680
	dd	6
	align	4
_1679:
	dd	3
	dd	0
	dd	0
	align	4
_1638:
	dd	_348
	dd	681
	dd	7
	align	4
_1678:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-20
	dd	0
	align	4
_1641:
	dd	_348
	dd	682
	dd	8
	align	4
_1645:
	dd	_348
	dd	684
	dd	8
	align	4
_1677:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-24
	dd	0
	align	4
_1647:
	dd	_348
	dd	685
	dd	9
	align	4
_1649:
	dd	_348
	dd	686
	dd	9
	align	4
_1653:
	dd	_348
	dd	688
	dd	9
	align	4
_1676:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-28
	dd	0
	align	4
_1654:
	dd	_348
	dd	689
	dd	10
	align	4
_1658:
	dd	_348
	dd	690
	dd	10
	align	4
_1672:
	dd	3
	dd	0
	dd	0
	align	4
_1660:
	dd	_348
	dd	691
	dd	11
	align	4
_1663:
	dd	_348
	dd	692
	dd	11
	align	4
_1668:
	dd	_348
	dd	693
	dd	11
	align	4
_1671:
	dd	_348
	dd	694
	dd	11
	align	4
_1673:
	dd	_348
	dd	696
	dd	10
	align	4
_1681:
	dd	_348
	dd	704
	dd	5
	align	4
_1684:
	dd	_348
	dd	705
	dd	5
	align	4
_1686:
	dd	_348
	dd	706
	dd	5
	align	4
_1730:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-32
	dd	0
	align	4
_1698:
	dd	_348
	dd	707
	dd	6
	align	4
_1701:
	dd	_348
	dd	708
	dd	6
	align	4
_1716:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_167
	dd	-36
	dd	0
	align	4
_1713:
	dd	_348
	dd	709
	dd	7
	align	4
_1717:
	dd	_348
	dd	711
	dd	6
	align	4
_1720:
	dd	_348
	dd	712
	dd	6
	align	4
_1725:
	dd	_348
	dd	713
	dd	6
	align	4
_1726:
	dd	_348
	dd	714
	dd	6
	align	4
_1729:
	dd	3
	dd	0
	dd	0
	align	4
_1728:
	dd	_348
	dd	714
	dd	31
	align	4
_1731:
	dd	_348
	dd	716
	dd	5
	align	4
_1734:
	dd	_348
	dd	717
	dd	5
	align	4
_1742:
	dd	3
	dd	0
	dd	0
	align	4
_1736:
	dd	_348
	dd	718
	dd	6
	align	4
_1739:
	dd	_348
	dd	719
	dd	6
	align	4
_1744:
	dd	_348
	dd	724
	dd	4
_2190:
	db	"SendUDP_Port",0
	align	4
_2189:
	dd	1
	dd	_232
	dd	2
	dd	_728
	dd	_469
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	2
	dd	_192
	dd	_193
	dd	-12
	dd	2
	dd	_1491
	dd	_172
	dd	-16
	dd	2
	dd	_1494
	dd	_172
	dd	-20
	dd	2
	dd	_2190
	dd	_172
	dd	-24
	dd	2
	dd	_1611
	dd	_172
	dd	-28
	dd	0
	align	4
_1747:
	dd	_348
	dd	729
	dd	3
	align	4
_1749:
	dd	_348
	dd	730
	dd	3
	align	4
_1753:
	dd	_348
	dd	732
	dd	3
	align	4
_1757:
	dd	_348
	dd	734
	dd	3
	align	4
_1759:
	dd	_348
	dd	735
	dd	3
	align	4
_1761:
	dd	_348
	dd	737
	dd	3
	align	4
_1763:
	dd	_348
	dd	738
	dd	3
	align	4
_1769:
	dd	_348
	dd	891
	dd	3
	align	4
_2178:
	dd	3
	dd	0
	dd	2
	dd	_928
	dd	_172
	dd	-32
	dd	0
	align	4
_1770:
	dd	_348
	dd	740
	dd	4
	align	4
_1775:
	dd	3
	dd	0
	dd	0
	align	4
_1774:
	dd	_348
	dd	741
	dd	5
	align	4
_1776:
	dd	_348
	dd	744
	dd	4
	align	4
_1779:
	dd	3
	dd	0
	dd	0
	align	4
_1778:
	dd	_348
	dd	745
	dd	5
	align	4
_1780:
	dd	_348
	dd	748
	dd	4
	align	4
_1964:
	dd	3
	dd	0
	dd	0
	align	4
_1784:
	dd	_348
	dd	749
	dd	5
	align	4
_1787:
	dd	3
	dd	0
	dd	0
	align	4
_1788:
	dd	_348
	dd	750
	dd	5
	align	4
_1963:
	dd	3
	dd	0
	dd	0
	align	4
_1792:
	dd	_348
	dd	751
	dd	6
	align	4
_1793:
	dd	_348
	dd	752
	dd	6
	align	4
_1962:
	dd	3
	dd	0
	dd	2
	dd	_834
	dd	_167
	dd	-36
	dd	0
	align	4
_1796:
	dd	_348
	dd	753
	dd	7
	align	4
_1800:
	dd	_348
	dd	755
	dd	7
	align	4
_1827:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-40
	dd	0
	align	4
_1802:
	dd	_348
	dd	756
	dd	8
	align	4
_1804:
	dd	_348
	dd	757
	dd	8
	align	4
_1826:
	dd	3
	dd	0
	dd	0
	align	4
_1805:
	dd	_348
	dd	758
	dd	9
	align	4
_1808:
	dd	_348
	dd	759
	dd	9
	align	4
_1822:
	dd	3
	dd	0
	dd	0
	align	4
_1810:
	dd	_348
	dd	760
	dd	10
	align	4
_1813:
	dd	_348
	dd	761
	dd	10
	align	4
_1818:
	dd	_348
	dd	762
	dd	10
	align	4
_1821:
	dd	_348
	dd	763
	dd	10
	align	4
_1823:
	dd	_348
	dd	765
	dd	9
	align	4
_1828:
	dd	_348
	dd	769
	dd	7
	align	4
_1851:
	dd	3
	dd	0
	dd	0
	align	4
_1830:
	dd	_348
	dd	770
	dd	8
	align	4
_1834:
	dd	_348
	dd	771
	dd	8
	align	4
_1838:
	dd	_348
	dd	773
	dd	8
	align	4
_1850:
	dd	3
	dd	0
	dd	0
	align	4
_1839:
	dd	_348
	dd	774
	dd	9
	align	4
_1842:
	dd	_348
	dd	775
	dd	9
	align	4
_1845:
	dd	3
	dd	0
	dd	0
	align	4
_1844:
	dd	_348
	dd	775
	dd	34
	align	4
_1846:
	dd	_348
	dd	777
	dd	9
	align	4
_1852:
	dd	_348
	dd	781
	dd	7
	align	4
_1961:
	dd	3
	dd	0
	dd	2
	dd	_166
	dd	_167
	dd	-44
	dd	2
	dd	_1233
	dd	_172
	dd	-48
	dd	2
	dd	_1234
	dd	_172
	dd	-52
	dd	2
	dd	_1235
	dd	_346
	dd	-56
	dd	0
	align	4
_1854:
	dd	_348
	dd	782
	dd	8
	align	4
_1858:
	dd	_348
	dd	783
	dd	8
	align	4
_1862:
	dd	_348
	dd	784
	dd	8
	align	4
_1866:
	dd	_348
	dd	786
	dd	8
	align	4
_1869:
	dd	_348
	dd	787
	dd	8
	align	4
_1871:
	dd	_348
	dd	788
	dd	8
	align	4
_1895:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-60
	dd	0
	align	4
_1883:
	dd	_348
	dd	789
	dd	9
	align	4
_1894:
	dd	3
	dd	0
	dd	0
	align	4
_1887:
	dd	_348
	dd	790
	dd	10
	align	4
_1893:
	dd	3
	dd	0
	dd	0
	align	4
_1891:
	dd	_348
	dd	791
	dd	11
	align	4
_1892:
	dd	_348
	dd	792
	dd	11
	align	4
_1896:
	dd	_348
	dd	797
	dd	8
	align	4
_1920:
	dd	3
	dd	0
	dd	0
	align	4
_1898:
	dd	_348
	dd	798
	dd	9
	align	4
_1899:
	dd	_348
	dd	799
	dd	9
	align	4
_1903:
	dd	_348
	dd	800
	dd	9
	align	4
_1907:
	dd	_348
	dd	801
	dd	9
	align	4
_1911:
	dd	_348
	dd	802
	dd	9
	align	4
_1915:
	dd	_348
	dd	803
	dd	9
	align	4
_1921:
	dd	_348
	dd	807
	dd	8
	align	4
_1940:
	dd	3
	dd	0
	dd	2
	dd	_1211
	dd	_172
	dd	-64
	dd	0
	align	4
_1925:
	dd	_348
	dd	808
	dd	9
	align	4
_1934:
	dd	_348
	dd	809
	dd	9
	align	4
_1941:
	dd	_348
	dd	811
	dd	8
	align	4
_1948:
	dd	3
	dd	0
	dd	0
	align	4
_1943:
	dd	_348
	dd	811
	dd	25
	align	4
_1949:
	dd	_348
	dd	812
	dd	8
	align	4
_1957:
	dd	3
	dd	0
	dd	0
	align	4
_1953:
	dd	_348
	dd	812
	dd	33
	align	4
_1958:
	dd	_348
	dd	813
	dd	8
	align	4
_1965:
	dd	_348
	dd	821
	dd	4
	align	4
_1967:
	dd	_348
	dd	822
	dd	4
	align	4
_1980:
	dd	3
	dd	0
	dd	0
	align	4
_1969:
	dd	_348
	dd	823
	dd	5
	align	4
_1970:
	dd	_348
	dd	824
	dd	5
	align	4
_1973:
	dd	_348
	dd	825
	dd	5
	align	4
_1976:
	dd	_348
	dd	826
	dd	5
	align	4
_1979:
	dd	_348
	dd	827
	dd	5
	align	4
_1981:
	dd	_348
	dd	830
	dd	4
	align	4
_2009:
	dd	3
	dd	0
	dd	0
	align	4
_1985:
	dd	_348
	dd	831
	dd	5
	align	4
_2008:
	dd	3
	dd	0
	dd	0
	align	4
_1989:
	dd	_348
	dd	832
	dd	6
	align	4
_1993:
	dd	_348
	dd	833
	dd	6
	align	4
_1996:
	dd	_348
	dd	834
	dd	6
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	77,83,58
	align	4
_1999:
	dd	_348
	dd	835
	dd	6
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	80,58
	align	4
_2004:
	dd	_348
	dd	836
	dd	6
	align	4
_2007:
	dd	_348
	dd	837
	dd	6
	align	4
_2010:
	dd	_348
	dd	841
	dd	4
	align	4
_2013:
	dd	_348
	dd	842
	dd	4
	align	4
_2057:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-68
	dd	0
	align	4
_2025:
	dd	_348
	dd	843
	dd	5
	align	4
_2028:
	dd	_348
	dd	844
	dd	5
	align	4
_2043:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_167
	dd	-72
	dd	0
	align	4
_2040:
	dd	_348
	dd	845
	dd	6
	align	4
_2044:
	dd	_348
	dd	847
	dd	5
	align	4
_2047:
	dd	_348
	dd	848
	dd	5
	align	4
_2052:
	dd	_348
	dd	849
	dd	5
	align	4
_2053:
	dd	_348
	dd	850
	dd	5
	align	4
_2056:
	dd	3
	dd	0
	dd	0
	align	4
_2055:
	dd	_348
	dd	850
	dd	30
	align	4
_2058:
	dd	_348
	dd	852
	dd	4
	align	4
_2061:
	dd	_348
	dd	853
	dd	4
	align	4
_2066:
	dd	3
	dd	0
	dd	0
	align	4
_2063:
	dd	_348
	dd	853
	dd	28
	align	4
_2067:
	dd	_348
	dd	855
	dd	4
	align	4
_2176:
	dd	3
	dd	0
	dd	0
	align	4
_2069:
	dd	_348
	dd	856
	dd	5
	align	4
_2070:
	dd	_348
	dd	857
	dd	5
	align	4
_2073:
	dd	_348
	dd	858
	dd	5
	align	4
_2172:
	dd	3
	dd	0
	dd	2
	dd	_388
	dd	_346
	dd	-76
	dd	0
	align	4
_2085:
	dd	_348
	dd	859
	dd	6
	align	4
_2106:
	dd	3
	dd	0
	dd	0
	align	4
_2089:
	dd	_348
	dd	860
	dd	7
	align	4
_2095:
	dd	_348
	dd	861
	dd	7
	align	4
_2105:
	dd	3
	dd	0
	dd	0
	align	4
_2099:
	dd	_348
	dd	862
	dd	8
	align	4
_2104:
	dd	_348
	dd	863
	dd	8
	align	4
_2170:
	dd	3
	dd	0
	dd	2
	dd	_1345
	dd	_172
	dd	-80
	dd	0
	align	4
_2108:
	dd	_348
	dd	866
	dd	7
	align	4
_2116:
	dd	_348
	dd	867
	dd	7
	align	4
_2119:
	dd	3
	dd	0
	dd	0
	align	4
_2118:
	dd	_348
	dd	867
	dd	34
	align	4
_2120:
	dd	_348
	dd	869
	dd	7
	align	4
_2161:
	dd	3
	dd	0
	dd	0
	align	4
_2122:
	dd	_348
	dd	870
	dd	8
	align	4
_2125:
	dd	_348
	dd	871
	dd	8
	align	4
_2130:
	dd	_348
	dd	872
	dd	8
	align	4
_2137:
	dd	_348
	dd	873
	dd	8
	align	4
_2140:
	dd	_348
	dd	874
	dd	8
	align	4
_2157:
	dd	3
	dd	0
	dd	2
	dd	_1211
	dd	_172
	dd	-84
	dd	0
	align	4
_2144:
	dd	_348
	dd	875
	dd	9
	align	4
_2151:
	dd	_348
	dd	876
	dd	9
	align	4
_2158:
	dd	_348
	dd	878
	dd	8
	align	4
_2162:
	dd	_348
	dd	880
	dd	7
	align	4
_2169:
	dd	3
	dd	0
	dd	0
	align	4
_2164:
	dd	_348
	dd	881
	dd	8
	align	4
_2171:
	dd	_348
	dd	885
	dd	6
	align	4
_2173:
	dd	_348
	dd	887
	dd	5
	align	4
_2177:
	dd	_348
	dd	890
	dd	4
	align	4
_2179:
	dd	_348
	dd	892
	dd	3
	align	4
_2182:
	dd	_348
	dd	893
	dd	3
	align	4
_2185:
	dd	_348
	dd	894
	dd	3
_2198:
	db	"NetworkConnect",0
	align	4
_2197:
	dd	1
	dd	_2198
	dd	2
	dd	_173
	dd	_174
	dd	-4
	dd	0
	align	4
_2191:
	dd	_348
	dd	903
	dd	2
	align	4
_2196:
	dd	3
	dd	0
	dd	0
	align	4
_2193:
	dd	_348
	dd	903
	dd	17
_2231:
	db	"GetClientList",0
	align	4
_2230:
	dd	1
	dd	_2231
	dd	2
	dd	_220
	dd	_221
	dd	-4
	dd	0
	align	4
_2199:
	dd	_348
	dd	911
	dd	2
	align	4
_2226:
	dd	3
	dd	0
	dd	2
	dd	_470
	dd	_181
	dd	-8
	dd	0
	align	4
_2201:
	dd	_348
	dd	912
	dd	3
	align	4
_2203:
	dd	_348
	dd	913
	dd	3
	align	4
_2206:
	dd	_348
	dd	914
	dd	3
	align	4
_2221:
	dd	3
	dd	0
	dd	2
	dd	_712
	dd	_174
	dd	-12
	dd	0
	align	4
_2218:
	dd	_348
	dd	915
	dd	4
	align	4
_2222:
	dd	_348
	dd	917
	dd	3
	align	4
_2225:
	dd	_348
	dd	918
	dd	3
	align	4
_2229:
	dd	3
	dd	0
	dd	0
	align	4
_2228:
	dd	_348
	dd	920
	dd	3
_2236:
	db	"ClientLatenz",0
	align	4
_2235:
	dd	1
	dd	_2236
	dd	2
	dd	_173
	dd	_174
	dd	-4
	dd	0
	align	4
_2232:
	dd	_348
	dd	929
	dd	2
_2367:
	db	"ConnectServer",0
	align	4
_2366:
	dd	1
	dd	_2367
	dd	2
	dd	_214
	dd	_167
	dd	-4
	dd	2
	dd	_1610
	dd	_172
	dd	-8
	dd	2
	dd	_1611
	dd	_172
	dd	-12
	dd	2
	dd	_173
	dd	_174
	dd	-16
	dd	2
	dd	_713
	dd	_714
	dd	-20
	dd	0
	align	4
_2237:
	dd	_348
	dd	937
	dd	2
	align	4
_2239:
	dd	_348
	dd	938
	dd	2
	align	4
_2243:
	dd	_348
	dd	939
	dd	2
	align	4
_2247:
	dd	_348
	dd	940
	dd	2
	align	4
_2251:
	dd	_348
	dd	942
	dd	2
	align	4
_2255:
	dd	_348
	dd	943
	dd	2
	align	4
_2259:
	dd	_348
	dd	944
	dd	2
	align	4
_2263:
	dd	_348
	dd	945
	dd	2
	align	4
_2267:
	dd	_348
	dd	946
	dd	2
	align	4
_2271:
	dd	_348
	dd	947
	dd	2
	align	4
_2275:
	dd	_348
	dd	948
	dd	2
	align	4
_2279:
	dd	_348
	dd	949
	dd	2
	align	4
_2283:
	dd	_348
	dd	950
	dd	2
	align	4
_2287:
	dd	_348
	dd	951
	dd	2
	align	4
_2291:
	dd	_348
	dd	952
	dd	2
	align	4
_2295:
	dd	_348
	dd	954
	dd	2
	align	4
_2302:
	dd	3
	dd	0
	dd	0
	align	4
_2301:
	dd	_348
	dd	954
	dd	35
	align	4
_2303:
	dd	_348
	dd	955
	dd	2
	align	4
_2310:
	dd	3
	dd	0
	dd	0
	align	4
_2309:
	dd	_348
	dd	955
	dd	43
	align	4
_2311:
	dd	_348
	dd	956
	dd	2
	align	4
_2316:
	dd	_348
	dd	957
	dd	2
	align	4
_2321:
	dd	_348
	dd	958
	dd	2
	align	4
_2328:
	dd	3
	dd	0
	dd	0
	align	4
_2327:
	dd	_348
	dd	958
	dd	38
	align	4
_2329:
	dd	_348
	dd	960
	dd	2
	align	4
_2333:
	dd	_348
	dd	961
	dd	2
	align	4
_2340:
	dd	3
	dd	0
	dd	0
	align	4
_2339:
	dd	_348
	dd	961
	dd	32
	align	4
_2341:
	dd	_348
	dd	962
	dd	2
	align	4
_2346:
	dd	_348
	dd	963
	dd	2
	align	4
_2351:
	dd	_348
	dd	964
	dd	2
	align	4
_2356:
	dd	_348
	dd	966
	dd	2
	align	4
_2360:
	dd	_348
	dd	968
	dd	2
	align	4
_2362:
	dd	_348
	dd	969
	dd	2
	align	4
_2363:
	dd	_348
	dd	971
	dd	2
	align	4
_2364:
	dd	_348
	dd	972
	dd	2
	align	4
_2365:
	dd	_348
	dd	974
	dd	2
_2436:
	db	"GetMessages",0
	align	4
_2435:
	dd	1
	dd	_2436
	dd	2
	dd	_468
	dd	_469
	dd	-4
	dd	2
	dd	_220
	dd	_221
	dd	-8
	dd	2
	dd	_173
	dd	_174
	dd	-12
	dd	2
	dd	_470
	dd	_181
	dd	-16
	dd	0
	align	4
_2368:
	dd	_348
	dd	982
	dd	2
	align	4
_2370:
	dd	_348
	dd	983
	dd	2
	align	4
_2372:
	dd	_348
	dd	985
	dd	2
	align	4
_2374:
	dd	_348
	dd	986
	dd	2
	align	4
_2403:
	dd	3
	dd	0
	dd	0
	align	4
_2376:
	dd	_348
	dd	987
	dd	3
	align	4
_2379:
	dd	_348
	dd	988
	dd	3
	align	4
_2399:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-20
	dd	0
	align	4
_2391:
	dd	_348
	dd	989
	dd	4
	align	4
_2394:
	dd	_348
	dd	990
	dd	4
	align	4
_2400:
	dd	_348
	dd	992
	dd	3
	align	4
_2404:
	dd	_348
	dd	995
	dd	2
	align	4
_2433:
	dd	3
	dd	0
	dd	0
	align	4
_2406:
	dd	_348
	dd	996
	dd	3
	align	4
_2409:
	dd	_348
	dd	997
	dd	3
	align	4
_2429:
	dd	3
	dd	0
	dd	2
	dd	_583
	dd	_473
	dd	-24
	dd	0
	align	4
_2421:
	dd	_348
	dd	998
	dd	4
	align	4
_2424:
	dd	_348
	dd	999
	dd	4
	align	4
_2430:
	dd	_348
	dd	1001
	dd	3
	align	4
_2434:
	dd	_348
	dd	1004
	dd	2
