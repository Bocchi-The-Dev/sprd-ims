.class Lcom/spreadtrum/ims/ImsService$ImsHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsHandler"
.end annotation


# instance fields
.field imsServiceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/spreadtrum/ims/ImsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 1

    .line 373
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService$ImsHandler;->imsServiceWR:Ljava/lang/ref/WeakReference;

    .line 375
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$ImsHandler;->imsServiceWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsService;

    .line 379
    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage->outer reference is null. msg drop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogw(Ljava/lang/String;)V

    .line 381
    return-void

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 384
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    .line 443
    :sswitch_0
    const-string p1, "EVENT_WIFI_RESET_START"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 444
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiResetStart(Lcom/spreadtrum/ims/ImsService;)V

    .line 445
    goto/16 :goto_3

    .line 504
    :sswitch_1
    const-string p1, "EVENT_NOTIFY_CP_VOWIFI_ATTACH_SUCCESSED-> notifyImsHandoverStatus:5"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 506
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/ImsService;)I

    move-result v0

    .line 507
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 506
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 508
    if-eqz p1, :cond_4

    .line 509
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    goto/16 :goto_3

    .line 500
    :sswitch_2
    const-string p1, "EVENT_UPDATE_DATA_ROUTER_FINISHED"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 501
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleUpdateDataRouterFinished(Lcom/spreadtrum/ims/ImsService;)V

    .line 502
    goto/16 :goto_3

    .line 487
    :sswitch_3
    const-string v1, "EVENT_WIFI_RTP_RECEIVED"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 488
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 489
    if-nez p1, :cond_1

    .line 490
    goto/16 :goto_3

    .line 491
    :cond_1
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 493
    :try_start_0
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onRtpReceived(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 496
    :goto_0
    goto/16 :goto_3

    .line 483
    :sswitch_4
    const-string v1, "EVENT_WIFI_UNSOL_UPDATE"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 484
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiUnsolUpdate(Lcom/spreadtrum/ims/ImsService;I)V

    .line 485
    goto/16 :goto_3

    .line 470
    :sswitch_5
    const-string v1, "EVENT_WIFI_NO_RTP"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 471
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 472
    if-nez p1, :cond_2

    .line 473
    goto/16 :goto_3

    .line 474
    :cond_2
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 476
    :try_start_1
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onNoRtpReceived(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 477
    :catch_1
    move-exception p1

    .line 478
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 479
    :goto_1
    goto/16 :goto_3

    .line 460
    :sswitch_6
    const-string p1, "EVENT_WIFI_DPD_DISCONNECTED"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 461
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 463
    :try_start_2
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onDPDDisconnected()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 464
    :catch_2
    move-exception p1

    .line 465
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 466
    :goto_2
    goto/16 :goto_3

    .line 448
    :sswitch_7
    const-string v1, "EVENT_WIFI_RESET_RESAULT"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 449
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiResetResult(Lcom/spreadtrum/ims/ImsService;II)V

    .line 450
    goto/16 :goto_3

    .line 434
    :sswitch_8
    const-string v1, "EVENT_WIFI_REGISTER_RESAULT"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 435
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiRegisterResult(Lcom/spreadtrum/ims/ImsService;Ljava/lang/Boolean;)V

    .line 436
    goto/16 :goto_3

    .line 432
    :sswitch_9
    goto/16 :goto_3

    .line 428
    :sswitch_a
    const-string p1, "EVENT_WIFI_ALL_CALLS_END"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 429
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiAllCallsEnd(Lcom/spreadtrum/ims/ImsService;)V

    .line 430
    goto/16 :goto_3

    .line 422
    :sswitch_b
    const-string v1, "EVENT_WIFI_INCOMING_CALL"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 424
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/internal/IImsCallSession;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiIncomingCall(Lcom/spreadtrum/ims/ImsService;Lcom/android/ims/internal/IImsCallSession;)V

    .line 426
    goto/16 :goto_3

    .line 418
    :sswitch_c
    const-string v1, "EVENT_WIFI_ATTACH_STOPED"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 419
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiAttachStoped(Lcom/spreadtrum/ims/ImsService;I)V

    .line 420
    goto/16 :goto_3

    .line 414
    :sswitch_d
    const-string v1, "EVENT_WIFI_ATTACH_FAILED"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 415
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiAttachFailed(Lcom/spreadtrum/ims/ImsService;I)V

    .line 416
    goto/16 :goto_3

    .line 410
    :sswitch_e
    const-string p1, "EVENT_WIFI_ATTACH_SUCCESSED"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 411
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleWifiAttachSuccessed(Lcom/spreadtrum/ims/ImsService;)V

    .line 412
    goto/16 :goto_3

    .line 398
    :sswitch_f
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_WIFI_ATTACH_STATE_UPDATE-> state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWifiRegistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiRegistered(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsS2bStopped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsS2bStopped(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    .line 403
    invoke-static {v0, v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 405
    :cond_3
    if-eqz p1, :cond_4

    .line 406
    invoke-static {v0, v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsS2bStopped(Lcom/spreadtrum/ims/ImsService;Z)V

    goto :goto_3

    .line 513
    :sswitch_10
    const-string p1, "ACTION_NOTIFY_VIDEO_CAPABILITY_CHANGE"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegisterState()V

    .line 515
    goto :goto_3

    .line 452
    :sswitch_11
    const-string v1, "ACTION_RELEASE_WIFI_RESOURCE"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 453
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleReleaseWifiResource(Lcom/spreadtrum/ims/ImsService;I)V

    .line 454
    goto :goto_3

    .line 456
    :sswitch_12
    const-string v1, "ACTION_CANCEL_CURRENT_REQUEST"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 457
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleCancelCurrentRequest(Lcom/spreadtrum/ims/ImsService;I)V

    .line 458
    goto :goto_3

    .line 438
    :sswitch_13
    const-string v1, "ACTION_NOTIFY_VOWIFI_UNAVAILABLE"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 439
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleVowifiUnavailable(Lcom/spreadtrum/ims/ImsService;IILjava/lang/Boolean;)V

    .line 440
    goto :goto_3

    .line 396
    :sswitch_14
    goto :goto_3

    .line 391
    :sswitch_15
    const-string v1, "ACTION_START_HANDOVER"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 392
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v1, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleHandover(Lcom/spreadtrum/ims/ImsService;ZII)V

    .line 394
    goto :goto_3

    .line 386
    :sswitch_16
    const-string v1, "ACTION_SWITCH_IMS_FEATURE"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 387
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v1, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mhandleHandover(Lcom/spreadtrum/ims/ImsService;ZII)V

    .line 389
    nop

    .line 519
    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_16
        0x65 -> :sswitch_15
        0x66 -> :sswitch_14
        0x67 -> :sswitch_13
        0x68 -> :sswitch_12
        0x69 -> :sswitch_11
        0x6a -> :sswitch_10
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_e
        0xca -> :sswitch_d
        0xcb -> :sswitch_c
        0xcc -> :sswitch_b
        0xcd -> :sswitch_a
        0xce -> :sswitch_9
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_7
        0xd1 -> :sswitch_6
        0xd2 -> :sswitch_5
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_3
        0xd5 -> :sswitch_2
        0xd6 -> :sswitch_1
        0xd7 -> :sswitch_0
    .end sparse-switch
.end method
