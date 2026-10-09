.class public Lcom/spreadtrum/ims/RcsFeatureImpl;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "RcsFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_ENABLED_CAPABILITIES:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCapabilityCallbackProxy:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field private mContext:Landroid/content/Context;

.field private mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mPhoneId:I

.field private mRcsCapabilityExchangeImplSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsHandler:Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;

.field private mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleSetUceCapabilities(Lcom/spreadtrum/ims/RcsFeatureImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/RcsFeatureImpl;->handleSetUceCapabilities(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/spreadtrum/ims/RcsFeatureImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/RcsFeatureImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsCapabilityExchangeImplSet:Ljava/util/HashSet;

    .line 44
    iput p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mPhoneId:I

    .line 45
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mServiceId:I

    .line 46
    iput-object p2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 48
    iput-object p4, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 49
    new-instance p1, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;-><init>(Lcom/spreadtrum/ims/RcsFeatureImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsHandler:Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;

    .line 50
    return-void
.end method

.method private handleSetUceCapabilities(Landroid/os/AsyncResult;)V
    .locals 5

    .line 100
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 102
    if-eqz v0, :cond_1

    .line 103
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 104
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 105
    nop

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->getRadioTech()I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;

    invoke-virtual {v4}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->getReason()I

    move-result v4

    .line 105
    invoke-virtual {p1, v2, v3, v4}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    goto :goto_1

    .line 109
    :cond_1
    const-string p1, "SetUceCapabilities: ret is null"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/RcsFeatureImpl;->log(Ljava/lang/String;)V

    .line 111
    :goto_1
    goto :goto_2

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetUceCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/RcsFeatureImpl;->log(Ljava/lang/String;)V

    .line 114
    :goto_2
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 5

    .line 65
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object p1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities->enableCap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/n disableCap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/RcsFeatureImpl;->log(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 70
    iget-object v3, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 71
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 72
    iget-object v4, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 76
    iget-object v2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 77
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    .line 78
    iget-object v3, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsImsCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsHandler:Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setUceCapabilities(Ljava/util/concurrent/ConcurrentHashMap;Landroid/os/Message;)V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 4

    .line 88
    new-instance v0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;

    iget v1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mImsRi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    .line 89
    iget-object p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsCapabilityExchangeImplSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mRcsCapabilityExchangeImplSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public getServiceId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mServiceId:I

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/spreadtrum/ims/RcsFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/RcsFeatureImpl;->mServiceId:I

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

    .line 118
    return-void
.end method

.method public onCreateRcsFeature()Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    .line 57
    const-string v0, "onCreateRcsFeature."

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/RcsFeatureImpl;->log(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/spreadtrum/ims/RcsFeatureImpl;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method
