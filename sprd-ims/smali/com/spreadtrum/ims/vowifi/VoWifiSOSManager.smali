.class public Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;
.super Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.source "VoWifiSOSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method private init()V
    .locals 6

    .line 90
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->TAG:Ljava/lang/String;

    const-string v1, "Init the sos manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_CALL:Ljava/lang/String;

    const-string v3, "com.spreadtrum.vowifi.sec"

    const-string v4, "com.spreadtrum.vowifi.sec.service.CallService"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 96
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_SEC:Ljava/lang/String;

    const-string v4, "com.spreadtrum.vowifi"

    const-string v5, "com.spreadtrum.vowifi.service.SecurityService"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    .line 100
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_REG:Ljava/lang/String;

    const-string v4, "com.spreadtrum.vowifi.sec.service.RegisterService"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    .line 105
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->registerListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;)V

    .line 107
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->bindService()V

    .line 108
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->bindService()V

    .line 109
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->bindService()V

    .line 110
    return-void
.end method

.method private unInit()V
    .locals 2

    .line 113
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->TAG:Ljava/lang/String;

    const-string v1, "Un-init the sos manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    .line 117
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unregisterListener()V

    .line 118
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unbindService()V

    .line 119
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->unbindService()V

    .line 120
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->unbindService()V

    .line 122
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 123
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    .line 124
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    .line 125
    return-void
.end method


# virtual methods
.method protected onSOSCallTerminated()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;->onSOSCallTerminated()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onSOSError(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;->onSOSRequestError()V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    const/16 v0, 0x16b

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 86
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->unInit()V

    .line 87
    return-void
.end method

.method protected onSOSMsgTimeout()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;->onSOSRequestError()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    const/16 v1, 0x16b

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 73
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->unInit()V

    .line 74
    return-void
.end method

.method protected onSOSProcessFinished()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;->onSOSRequestFinished()V

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->unInit()V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public startRequest(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;)Z
    .locals 2

    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCurStep()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager$SOSListener;

    .line 40
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->init()V

    .line 43
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallManager(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)V

    .line 44
    const/4 p1, 0x1

    return p1

    .line 33
    :cond_1
    :goto_0
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start ECBM request, request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p1, 0x0

    return p1
.end method
