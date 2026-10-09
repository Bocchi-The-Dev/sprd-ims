.class Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySOSListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onSOSCallTerminated()V
    .locals 2

    .line 1757
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAllCallsEnd()V

    .line 1760
    :cond_0
    return-void
.end method

.method public onSOSRequestError()V
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 1777
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 1780
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    .line 1783
    :cond_0
    return-void
.end method

.method public onSOSRequestFinished()V
    .locals 3

    .line 1765
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getNextStep()I

    move-result v0

    .line 1766
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sendECBMTimeoutMsg(I)V

    .line 1768
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1769
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1770
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1771
    return-void
.end method
