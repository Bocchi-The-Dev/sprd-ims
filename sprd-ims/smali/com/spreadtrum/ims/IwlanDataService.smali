.class public Lcom/spreadtrum/ims/IwlanDataService;
.super Landroid/telephony/data/DataService;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;,
        Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;,
        Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final IWLAN_PDN_STATE_CHANGED:I = 0x3e9

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x5

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final SET_DATA_PROFILE_COMPLETE:I = 0x4

.field private static final SET_INITIAL_ATTACH_APN_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VOWIFI_IMS_DATA_CALL_CID:I = 0x64

.field private static final VOWIFI_MMS_DATA_CALL_CID:I = 0x65


# instance fields
.field private mDataCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

.field public mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

.field public mIsImsListenerRegistered:Z

.field public mIwlanPdnState:[I

.field public mIwlanProviderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataCallList(Lcom/spreadtrum/ims/IwlanDataService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mDataCallList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanDataService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$misPdnActived(Lcom/spreadtrum/ims/IwlanDataService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->isPdnActived(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPdnDeactived(Lcom/spreadtrum/ims/IwlanDataService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->isPdnDeactived(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMmsTransportState(Lcom/spreadtrum/ims/IwlanDataService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/IwlanDataService;->setMmsTransportState(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanDataService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryRegisterImsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-class v0, Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    .line 92
    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mDataCallList:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$1;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$2;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    .line 108
    return-void
.end method

.method public static convertHalDataCallResult(Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;)Landroid/telephony/data/DataCallResponse;
    .locals 3

    .line 603
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 605
    :cond_0
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 606
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getSuggestedRetryTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getLinkStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getProtocolType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getMtuV4()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getMtuV4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getMtuV6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getHandoverFailureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getPduSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 625
    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object p0

    .line 605
    return-object p0
.end method

.method private isPdnActived(I)Z
    .locals 2

    .line 558
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 559
    return v1

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private isPdnDeactived(I)Z
    .locals 2

    .line 565
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 566
    return v1

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 582
    sget-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method private setMmsTransportState(IZ)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceEx;->notifyMmsTranportStateChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_0

    .line 575
    :catch_0
    move-exception p1

    .line 576
    sget-object p2, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMmsTransportState RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized tryRegisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    if-eqz v0, :cond_1

    .line 475
    :try_start_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    if-nez v1, :cond_0

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    .line 477
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :cond_0
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regiseterforImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryUnregisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 487
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    .line 489
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    :try_start_1
    sget-object v1, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isVoWiFiRegisteredForPhone(I)Z
    .locals 3

    .line 548
    nop

    .line 549
    const-string v0, "gsm.sys.vowifi.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 551
    if-nez p1, :cond_0

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    goto :goto_0

    .line 552
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, ",1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    .line 554
    :cond_1
    :goto_0
    return v1
.end method

.method public notifyVoWiFiAttachStateChanged(II)V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiAttachStateChanged, slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    .line 525
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    .line 530
    if-eqz p1, :cond_1

    .line 531
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 540
    :pswitch_0
    goto :goto_0

    .line 533
    :pswitch_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->notifyActionComplete()V

    .line 534
    goto :goto_0

    .line 536
    :pswitch_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->notifyActionComplete()V

    .line 545
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 431
    if-eqz p1, :cond_0

    const-string v0, "com.unisoc.ims.tests"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "onBind for test"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;

    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;-><init>(Lcom/spreadtrum/ims/IwlanDataService;Landroid/os/IBinder;)V

    return-object v0

    .line 435
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 112
    const-string v0, "IWLAN Data Service onCreate."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/telephony/data/DataService;->onCreate()V

    .line 114
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    .line 117
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/spreadtrum/ims/IwlanDataService;ILcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider-IA;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aput v0, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryRegisterImsListener()V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataServiceProvider created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    .line 421
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataService$DataServiceProvider;

    return-object p1

    .line 424
    :cond_0
    const-string p1, "onCreateDataServiceProvider, invalid slotId\uff01"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    .line 425
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 446
    invoke-super {p0}, Landroid/telephony/data/DataService;->onDestroy()V

    .line 447
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryUnregisterImsListener()V

    .line 448
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 441
    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
