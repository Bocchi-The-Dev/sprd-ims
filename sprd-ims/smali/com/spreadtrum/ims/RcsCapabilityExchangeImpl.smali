.class public Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "RcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;
    }
.end annotation


# static fields
.field private static final EVENT_CAPABILITIES_CHANGED:I = 0x5

.field private static final EVENT_OPTIONS_CAPABILITIES:I = 0x3

.field private static final EVENT_PUBLISH_CAPABILITIES:I = 0x1

.field private static final EVENT_REMOTE_CAPABILITIES_REQUEST:I = 0x4

.field private static final EVENT_RESOURCE_TERMINATED:I = 0x6

.field private static final EVENT_SUBSCRIBE_CAPABILITIES:I = 0x2

.field private static final EVENT_TERMINATED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mPhoneId:I

.field private mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 41
    iput p1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mPhoneId:I

    .line 42
    iput-object p2, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 44
    iput-object p4, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 45
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mServiceId:I

    .line 46
    new-instance p1, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;-><init>(Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    .line 47
    invoke-direct {p0}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->registerRemoteCapabilitiesRequest()V

    .line 48
    return-void
.end method

.method private registerCapabilitiesChanged(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method private registerRemoteCapabilitiesRequest()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerRemoteCapabilitiesRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method private registerResourceTerminated(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerResourceTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method private registerTerminated(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 3

    .line 80
    sget-object v0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities pidfXml = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->log(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->publishCapabilities(Ljava/lang/String;Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .line 75
    const-string v0, "sendOptionsCapabilityRequest"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->log(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p3}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 63
    const-string v0, "subscribeForCapabilities "

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->log(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->mRcsCapabilityExchangeHandler:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->subscribeForCapabilities(Ljava/util/Collection;Landroid/os/Message;)V

    .line 65
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->registerCapabilitiesChanged(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->registerResourceTerminated(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->registerTerminated(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    .line 68
    return-void
.end method
