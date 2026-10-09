.class Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;
.super Landroid/os/Handler;
.source "VideoCallEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/os/Looper;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 401
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 406
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " height = "

    const-string v2, "VCE_EVENT_STOP_ENC, mVideoState"

    const-string v3, "temp"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 530
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 508
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 509
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 513
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VCE_EVENT_STRM_RTCP_RR, jitter = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " rtt = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " loss = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object v2

    invoke-interface {v2, v5, p1, v0, v1}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy;->notifyVideoQos(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_0

    .line 519
    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 523
    :cond_0
    :goto_0
    goto :goto_1

    .line 524
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VCE_EVENT_STRM_RTCP_RR: result is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_1
    return-void

    .line 491
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1, v5}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 492
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    const-string v0, "VCE_EVENT_STRM_RTP_RECVED"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 495
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 497
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object p1

    invoke-interface {p1, v5, v4}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy;->notifyRtpReceived(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    goto :goto_2

    .line 498
    :catch_1
    move-exception p1

    .line 499
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 503
    :cond_2
    :goto_2
    return-void

    .line 473
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 474
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    .line 475
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->requestDownToAudio()V

    .line 477
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCE_EVENT_STRM_RTP_BREAK, mStrmRtpBreakTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 480
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 482
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object p1

    invoke-interface {p1, v5, v5}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy;->notifyRtpReceived(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    goto :goto_3

    .line 483
    :catch_2
    move-exception p1

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 488
    :cond_4
    :goto_3
    return-void

    .line 448
    :pswitch_4
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage VCE_EVENT_REMOTE_ROTATE_CHANGE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 450
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 454
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPeerDimensions(II)V

    .line 456
    :cond_5
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCE_EVENT_REMOTE_ROTATE_CHANGE, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 458
    :cond_6
    return-void

    .line 461
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 462
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 465
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 466
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize(II)V

    .line 468
    :cond_7
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VC_EVENT_LOCAL_RESOLUTION_CHANGED, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 470
    :cond_8
    return-void

    .line 444
    :pswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1, v5}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 445
    return-void

    .line 439
    :pswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 441
    return-void

    .line 434
    :pswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fgetmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 436
    return-void

    .line 426
    :pswitch_9
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage VCE_EVENT_NATIVE_SURFACE_NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 428
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->putSurfaceExtra(Landroid/view/Surface;)V

    .line 430
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setIsInScreenShare(Ljava/lang/Boolean;)V

    .line 431
    return-void

    .line 416
    :pswitch_a
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->getNativeSurface()Landroid/view/Surface;

    move-result-object p1

    .line 417
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage VCE_EVENT_NATIVE_SURFACE_READY, surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 420
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->putSurfaceExtra(Landroid/view/Surface;)V

    .line 422
    :cond_a
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setIsInScreenShare(Ljava/lang/Boolean;)V

    .line 423
    return-void

    .line 412
    :pswitch_b
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p1, v5}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V

    .line 413
    return-void

    .line 409
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
