.class public Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;
.super Landroid/os/Handler;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 148
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    return-void
.end method

.method private handleMsgECBM(I)V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the ECBM message as step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/16 v0, 0xd

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 384
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 385
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->dialEmergencyCall()V

    .line 393
    goto/16 :goto_1

    .line 386
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start the emergency call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 389
    goto/16 :goto_1

    .line 381
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 382
    goto :goto_1

    .line 364
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->onNotifySOSAttachStart()V

    .line 366
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onSOSAttachStart(Lcom/android/ims/internal/IImsCallSession;)V

    .line 367
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v2, "Start sos attach, notify as sos attach start."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isSupportSOSSingleProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSOSMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSOSMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener-IA;)V

    .line 372
    invoke-virtual {p1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->startRequest(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 373
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 374
    goto :goto_1

    .line 377
    :cond_3
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const-string v0, ""

    invoke-static {p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ZLjava/lang/String;)V

    .line 378
    goto :goto_1

    .line 360
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mdeattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    .line 361
    goto :goto_1

    .line 356
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mderegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 357
    goto :goto_1

    .line 395
    :pswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 398
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private handleMsgECBMTimeout(I)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the ECBM timeout message, for step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", and current ECBM step: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSOSMsgTimeout()V

    .line 406
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 409
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 410
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 411
    return-void
.end method

.method private handleMsgReset(I)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the reset message as step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onResetStarted()V

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterState()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 321
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mderegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 323
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    if-lez p1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterFailed(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Do not register now, transfer to force reset."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-ne p1, v0, :cond_4

    .line 337
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 340
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mdeattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    goto :goto_0

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shouldn\'t be here. reset step is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 345
    :goto_0
    return-void
.end method

.method private handleMsgRetry(I)V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the RETRY message as step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 423
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ZLjava/lang/String;)V

    .line 421
    goto :goto_0

    .line 417
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$msecurityForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 418
    nop

    .line 426
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The handler get the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 157
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 158
    :cond_0
    return-void

    .line 159
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 160
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterFailed(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 161
    return-void

    .line 162
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    .line 163
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 164
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-nez v0, :cond_4

    .line 170
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "There isn\'t security manager. Do nothing, please check the process!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/16 v3, 0xc

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 308
    :sswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->loginRetry()V

    goto/16 :goto_0

    .line 295
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 299
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    goto/16 :goto_0

    .line 304
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogin(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    .line 306
    goto/16 :goto_0

    .line 288
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitRetry(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 291
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Z

    .line 292
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$msecurityForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 293
    goto/16 :goto_0

    .line 281
    :sswitch_3
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 284
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->handleMsgRetry(I)V

    .line 285
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0x33

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    goto/16 :goto_0

    .line 270
    :sswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getExitECBMStep()I

    move-result p1

    .line 271
    if-lez p1, :cond_a

    .line 272
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle exit ECBM, and the exit step is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 274
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 275
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 276
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    goto/16 :goto_0

    .line 252
    :sswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCurStep()I

    move-result p1

    .line 253
    if-lez p1, :cond_a

    .line 254
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle enter ECBM, and the enter step is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_6

    .line 257
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->REJECT:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->updateEcbm(ZLcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 263
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 264
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 266
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    goto/16 :goto_0

    .line 248
    :sswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Handle the SRVCC success as register logout now."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 250
    goto/16 :goto_0

    .line 244
    :sswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->handleMsgECBMTimeout(I)V

    .line 245
    goto/16 :goto_0

    .line 240
    :sswitch_8
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    .line 241
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->handleMsgECBM(I)V

    .line 242
    goto/16 :goto_0

    .line 230
    :sswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_7
    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception p1

    .line 236
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch the RemoteException when terminate calls. e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto/16 :goto_0

    .line 220
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 221
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 222
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v1, :cond_8

    .line 223
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateDataRouterState(I)V

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    .line 226
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUpdateDRStateFinished()V

    goto/16 :goto_0

    .line 213
    :sswitch_b
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    if-lez p1, :cond_a

    .line 215
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateCallsRatType(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 208
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mreRegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ILjava/lang/String;)V

    .line 210
    goto :goto_0

    .line 204
    :sswitch_d
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mderegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 205
    goto :goto_0

    .line 201
    :sswitch_e
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 202
    goto :goto_0

    .line 198
    :sswitch_f
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mstartMobikeInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 199
    goto :goto_0

    .line 194
    :sswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mdeattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    .line 196
    goto :goto_0

    .line 191
    :sswitch_11
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUsedLocalAddr:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ZLjava/lang/String;)V

    .line 192
    goto :goto_0

    .line 181
    :sswitch_12
    iget p1, p1, Landroid/os/Message;->arg1:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_9

    .line 183
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onResetStarted()V

    .line 186
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v0, 0x3

    iput v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    .line 187
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Z

    .line 188
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$msecurityForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 189
    goto :goto_0

    .line 176
    :sswitch_13
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    .line 177
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->handleMsgReset(I)V

    .line 178
    nop

    .line 311
    :cond_a
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x32 -> :sswitch_3
        0x33 -> :sswitch_2
        0x34 -> :sswitch_1
        0x35 -> :sswitch_0
    .end sparse-switch
.end method
