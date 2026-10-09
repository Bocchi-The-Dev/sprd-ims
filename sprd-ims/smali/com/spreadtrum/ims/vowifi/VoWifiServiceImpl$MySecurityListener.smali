.class Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySecurityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3

    .line 1724
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security service disconnected, and current attach cmd state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service disconnect, and the current reset step is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1743
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStopped(I)V

    .line 1744
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto :goto_0

    .line 1740
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 1741
    nop

    .line 1748
    :cond_1
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1749
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailed(I)V
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1630
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSOSError(I)V

    .line 1631
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1632
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_2

    .line 1633
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStopped(I)V

    .line 1634
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto :goto_0

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    if-eqz v0, :cond_1

    .line 1637
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitRetry(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1638
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_2

    .line 1639
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStopped(I)V

    .line 1640
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto :goto_0

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v2, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1644
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 1645
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-eqz p1, :cond_2

    .line 1646
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Attached failed but in reset process. It means reset finished."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1650
    :cond_2
    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStateChanged(I)V

    .line 1571
    :cond_0
    return-void
.end method

.method public onStopped(ZI)V
    .locals 5

    .line 1656
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "The platform do not support VOLTE, set the local addr to null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->setUsedLocalAddr(Ljava/lang/String;)V

    .line 1661
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-eqz v2, :cond_2

    .line 1663
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-ne p1, v0, :cond_1

    .line 1665
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Z

    .line 1667
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "S2b stopped, it means the reset action finished. Notify the result."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1670
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    goto/16 :goto_3

    .line 1671
    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x2

    if-nez p1, :cond_7

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v4, v4, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-eqz v4, :cond_7

    .line 1672
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-ne p1, v3, :cond_3

    goto :goto_0

    .line 1694
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1695
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_d

    .line 1696
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStopped(I)V

    .line 1697
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto/16 :goto_3

    .line 1674
    :cond_4
    :goto_0
    nop

    .line 1675
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-ne p1, p2, :cond_5

    .line 1677
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSOSProcessFinished()Z

    move-result v1

    .line 1680
    :cond_5
    if-eqz v1, :cond_6

    .line 1681
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    goto :goto_1

    .line 1683
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getNextStep()I

    move-result p1

    .line 1684
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 1686
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1687
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 1688
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    :goto_1
    goto :goto_3

    .line 1700
    :cond_7
    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    if-eqz p1, :cond_9

    .line 1701
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    if-ne p1, v0, :cond_8

    .line 1703
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0x32

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1706
    :cond_8
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitRetry(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    goto :goto_3

    .line 1708
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_d

    .line 1709
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1710
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachStopped(I)V

    .line 1711
    const p1, 0xd20f

    if-ne p2, p1, :cond_a

    .line 1712
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto :goto_3

    .line 1713
    :cond_a
    const p1, 0xd20a

    if-eq p2, p1, :cond_c

    const p1, 0xd20b

    if-ne p2, p1, :cond_b

    goto :goto_2

    .line 1717
    :cond_b
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    goto :goto_3

    .line 1715
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    .line 1720
    :cond_d
    :goto_3
    return-void
.end method

.method public onSuccessed(I)V
    .locals 6

    .line 1575
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    .line 1576
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1585
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSuccessed] Shouldn\'t be here, please check! The ECBM step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1578
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getNextStep()I

    move-result p1

    .line 1579
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 1580
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1581
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1582
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    goto/16 :goto_2

    .line 1588
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1590
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v2, 0x32

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1591
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_a

    .line 1592
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->getConfig(I)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v0

    .line 1593
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1594
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1595
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 1596
    return-void

    .line 1599
    :cond_4
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mgetVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Ljava/lang/String;

    move-result-object v3

    .line 1600
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1601
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_imsi:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mgetLastVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1603
    :cond_5
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v5, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_imsi:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mupdateVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :goto_1
    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf4:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    .line 1607
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf6:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1608
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1610
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle as attach failed, localIPv4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", localIPv6: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pcscfIPv4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf4:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pcscfIPv6: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf6:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", voltePcscfAddr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1615
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    goto :goto_2

    .line 1617
    :cond_8
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v4, v4, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v4, v4, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateAttachSessionId(I)V

    .line 1619
    :cond_9
    iput-object v3, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_voltePcscf:Ljava/lang/String;

    .line 1620
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput v2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 1621
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 1624
    :cond_a
    :goto_2
    return-void
.end method
