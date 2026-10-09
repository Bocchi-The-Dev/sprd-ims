.class Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRegisterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3

    .line 1545
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register service disconnected, and current register cmd state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1554
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    .line 1558
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onRegisterStateChanged(II)V

    nop

    .line 1562
    :cond_0
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 1563
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginFinished(ZII)V
    .locals 2

    .line 1392
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1394
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-eqz p1, :cond_2

    .line 1395
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1404
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[onLoginFinished] Shouldn\'t be here, please check! The ECBM step: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p3, p3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1397
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1399
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1400
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getNextStep()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1401
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    goto :goto_1

    .line 1407
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 1408
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 p2, 0x3a98

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1409
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Retry-After process success."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1411
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 1413
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    goto :goto_2

    .line 1414
    :cond_4
    const p1, 0xe108

    if-ne p2, p1, :cond_5

    .line 1416
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Login failed as server forbidden. state code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterFailed(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    goto :goto_2

    .line 1418
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mhandleRetryAfter(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1419
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle retry after event for login failed as state code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", retry after: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1422
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 1425
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Last login action is failed, try to use exist address to login again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogin(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    .line 1428
    :goto_2
    return-void
.end method

.method public onLogout(II)V
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1433
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Get the register state changed to logout for reset action."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-ne p1, v1, :cond_0

    .line 1436
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1437
    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1438
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1439
    goto/16 :goto_0

    .line 1441
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do nothing for reset action as reset step is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-eqz v0, :cond_3

    .line 1444
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Get the register state changed to logout in ECBM."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-ne p2, v1, :cond_2

    .line 1446
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getNextStep()I

    move-result p1

    .line 1447
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 1448
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1449
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 1450
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1451
    goto :goto_0

    .line 1455
    :cond_2
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logout from IMS service, but current ecbm step is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1459
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    goto :goto_0

    .line 1461
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mhandleRetryAfter(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1462
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle retry after event for logout as state code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", retry after: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1465
    :cond_4
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 1467
    :goto_0
    return-void
.end method

.method public onPrepareFinished(ZZ)V
    .locals 0

    .line 1471
    if-eqz p1, :cond_0

    .line 1473
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogin(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    goto :goto_0

    .line 1475
    :cond_0
    if-eqz p2, :cond_1

    .line 1476
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Prepare login failed caused by reset failed, native will reset."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$monNativeReset(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1480
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterFailed(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1482
    :goto_0
    return-void
.end method

.method public onRefreshRegFinished(ZII)V
    .locals 0

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p3, p3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p3, p3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p3, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onReregisterFinished(ZI)V

    goto :goto_1

    .line 1489
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result p1

    .line 1490
    if-lez p1, :cond_1

    .line 1493
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mNeedLogoutAfterCall:Z

    goto :goto_1

    .line 1495
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mhandleRetryAfter(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1498
    const p1, 0xe111

    if-ne p2, p1, :cond_2

    .line 1499
    const p2, 0xe105

    goto :goto_0

    :cond_2
    nop

    .line 1500
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 1504
    :cond_3
    :goto_1
    return-void
.end method

.method public onRegisterStateChanged(II)V
    .locals 4

    .line 1510
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateRegisterState(I)V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->updateRegisterState(I)V

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1513
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    .line 1514
    const/4 v2, -0x1

    .line 1515
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 1516
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->isCurUsedIPv4()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 1518
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {v0, p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->updateRegisterState(II)V

    .line 1521
    :cond_3
    const p1, 0xe106

    if-ne p2, p1, :cond_4

    .line 1524
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-login as UE send invite and server response 504, stateCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogin(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V

    .line 1528
    :cond_4
    return-void
.end method

.method public onResetBlocked()V
    .locals 3

    .line 1534
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset blocked, and the current reset step is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Reset blocked, native will reset."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$monNativeReset(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1541
    return-void
.end method
