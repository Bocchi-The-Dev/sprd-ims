.class public Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;
.super Landroid/telephony/data/QualifiedNetworksService;
.source "IwlanQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;,
        Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ON_IWLAN_AVAILABLE:I = 0x3e9

.field private static final EVENT_ON_IWLAN_MMS_STATE_CHANGED:I = 0x3ec

.field private static final EVENT_ON_IWLAN_REGISTER_STATE_CHANGED:I = 0x3eb

.field private static final EVENT_ON_IWLAN_UNAVAILABLE:I = 0x3ea

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

.field private mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;

.field private mImsRegisterListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

.field private mIsImsListenerRegistered:Z

.field public mIsIwlanAvailable:[Z

.field public mIsIwlanRegistered:[Z

.field public mIsMmsRetrySend:[Z

.field private mIwlanMmsStateListenerBinder:Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;

.field public mIwlanProviderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mHandler:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->tryRegisterImsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/telephony/data/QualifiedNetworksService;-><init>()V

    .line 75
    new-instance v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mHandler:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanProviderArray:Landroid/util/SparseArray;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mPhoneCount:I

    .line 116
    new-instance v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$1;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;

    .line 175
    new-instance v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsRegisterListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    .line 190
    new-instance v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanMmsStateListenerBinder:Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;

    .line 94
    return-void
.end method

.method private declared-synchronized isSupportVoWifiMms(I)Z
    .locals 3

    monitor-enter p0

    .line 324
    const/4 v0, 0x0

    .line 325
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v1, :cond_0

    .line 328
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsServiceEx;->isSupportVoWifiMms(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    goto :goto_0

    .line 329
    :catch_0
    move-exception p1

    .line 330
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVoWifiMms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 323
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 387
    sget-object v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method private declared-synchronized tryRegisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 205
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    :try_start_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsImsListenerRegistered:Z

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsImsListenerRegistered:Z

    .line 210
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 211
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsRegisterListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 212
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanMmsStateListenerBinder:Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->TAG:Ljava/lang/String;

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

    .line 218
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryUnregisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsImsListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsImsListenerRegistered:Z

    .line 224
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 225
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsRegisterListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 226
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanMmsStateListenerBinder:Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    :try_start_1
    sget-object v1, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->TAG:Ljava/lang/String;

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

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isVoWiFiRegisteredForPhone(I)Z
    .locals 3

    .line 234
    nop

    .line 235
    const-string v0, "gsm.sys.vowifi.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    if-nez p1, :cond_0

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, ",1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    .line 240
    :cond_1
    :goto_0
    return v1
.end method

.method public notifyIwlanQualifiedNetworkChanged(I)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyIwlanQualifiedNetworkChanged this is null provider, slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 290
    return-void

    .line 293
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    aget-boolean p1, v2, p1

    const/16 v2, 0x40

    if-eqz p1, :cond_1

    .line 295
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v0, v2, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    goto :goto_0

    .line 298
    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v0, v2, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 301
    :goto_0
    return-void
.end method

.method public notifyMmsQualifiedNetworkChanged(I)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;

    .line 306
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null Provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 308
    return-void

    .line 311
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanRegistered:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsMmsRetrySend:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->isSupportVoWifiMms(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    const-string p1, "notifyMmsQualifiedNetworkChanged with wlan mms"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 315
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_1
    const-string p1, "notifyMmsQualifiedNetworkChanged with wwan mms"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 318
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 321
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 125
    if-eqz p1, :cond_0

    const-string v0, "com.unisoc.ims.tests"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "onBind for test"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 98
    const-string v0, "IWLAN Qualified Networks Service onCreate."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Landroid/telephony/data/QualifiedNetworksService;->onCreate()V

    .line 100
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mPhoneCount:I

    .line 103
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    .line 104
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanRegistered:[Z

    .line 105
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsMmsRetrySend:[Z

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;

    invoke-direct {v3, p0, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;-><init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;I)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    aput-boolean v0, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->tryRegisterImsListener()V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateNetworkAvailabilityProvider for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 350
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIwlanProviderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    return-object p1

    .line 353
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/telephony/data/QualifiedNetworksService;->onDestroy()V

    .line 139
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->tryUnregisterImsListener()V

    .line 140
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
