.class public Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;
.super Landroid/app/Service;
.source "VideoStateNotifyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mCmChannelSim1:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field private mCmChannelSim2:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyRtpReceived(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->notifyRtpReceived(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyVideoQos(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->notifyVideoQos(IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim1:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 29
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim2:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 30
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;

    invoke-direct {v0, p0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private notifyRtpReceived(IZ)V
    .locals 3

    .line 67
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify rtp received. isReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim1:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim2:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 70
    :goto_0
    if-eqz p2, :cond_1

    .line 71
    new-instance p2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoRtpReceived;

    invoke-direct {p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoRtpReceived;-><init>()V

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    goto :goto_1

    .line 73
    :cond_1
    new-instance p2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoNoRtp;

    invoke-direct {p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoNoRtp;-><init>()V

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 75
    :goto_1
    return-void
.end method

.method private notifyVideoQos(IIII)V
    .locals 3

    .line 51
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify video qos. lose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", jitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;-><init>()V

    .line 55
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosLoss;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosLoss;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 56
    new-instance p2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosJitter;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosJitter;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 57
    new-instance p2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosRtt;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosRtt;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim1:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    goto :goto_0

    .line 61
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim2:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    const-string v0, "CMCP_CPAP_SIM1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim1:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 38
    const-string v0, "CMCP_CPAP_SIM2"

    invoke-static {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->mCmChannelSim2:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 41
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start video state notify service."

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method
