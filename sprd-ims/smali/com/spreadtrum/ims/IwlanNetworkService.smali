.class public Lcom/spreadtrum/ims/IwlanNetworkService;
.super Landroid/telephony/NetworkService;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;,
        Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final IWLAN_REGISTRATION_STATE_CHANGED:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

.field private mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mImsListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

.field private mIsImsListenerRegistered:Z

.field private mIsIwlanRegistered:[Z

.field private mIwlanProviderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanNetworkService;)Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mHandler:Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIwlanRegistered(Lcom/spreadtrum/ims/IwlanNetworkService;)[Z
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsIwlanRegistered:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanNetworkService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/IwlanNetworkService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanNetworkService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->tryRegisterImsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    .line 61
    new-instance v0, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;-><init>(Lcom/spreadtrum/ims/IwlanNetworkService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mHandler:Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIwlanProviderArray:Landroid/util/SparseArray;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    .line 95
    new-instance v0, Lcom/spreadtrum/ims/IwlanNetworkService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanNetworkService$1;-><init>(Lcom/spreadtrum/ims/IwlanNetworkService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/spreadtrum/ims/IwlanNetworkService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanNetworkService$2;-><init>(Lcom/spreadtrum/ims/IwlanNetworkService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    .line 76
    return-void
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 284
    sget-object v0, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method private final loge(Ljava/lang/String;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private declared-synchronized tryRegisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v0, :cond_1

    .line 180
    :try_start_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsImsListenerRegistered:Z

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsImsListenerRegistered:Z

    .line 182
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_0
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

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

    .line 188
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryUnregisterImsListener()V
    .locals 4

    monitor-enter p0

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsImsListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsImsListenerRegistered:Z

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsListenerBinder:Lcom/android/ims/internal/IImsRegisterListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    sget-object v1, Lcom/spreadtrum/ims/IwlanNetworkService;->TAG:Ljava/lang/String;

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

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isVoWiFiRegisteredForPhone(I)Z
    .locals 3

    .line 201
    nop

    .line 202
    const-string v0, "gsm.sys.vowifi.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 204
    if-nez p1, :cond_0

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, ",1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    move v1, p1

    .line 207
    :cond_1
    :goto_0
    return v1
.end method

.method public notifyVoWiFiRegistrationChanged(I)V
    .locals 2

    .line 237
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiRegistrationChanged, valid slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIwlanProviderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;

    .line 243
    invoke-virtual {p1}, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->notifyNetworkRegistrationInfoChanged()V

    .line 244
    return-void

    .line 238
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiRegistrationChanged, invalid slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 268
    invoke-super {p0, p1}, Landroid/telephony/NetworkService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 80
    const-string v0, "IWLAN Service onCreate."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Landroid/telephony/NetworkService;->onCreate()V

    .line 82
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    .line 84
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsIwlanRegistered:[Z

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;

    invoke-direct {v3, p0, v1}, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;-><init>(Lcom/spreadtrum/ims/IwlanNetworkService;I)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIsIwlanRegistered:[Z

    aput-boolean v0, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->tryRegisterImsListener()V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method public onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 2

    .line 258
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateNetworkServiceProvider, valid slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mIwlanProviderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/NetworkService$NetworkServiceProvider;

    return-object p1

    .line 259
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateNetworkServiceProvider, invalid slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->log(Ljava/lang/String;)V

    .line 260
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 278
    invoke-super {p0}, Landroid/telephony/NetworkService;->onDestroy()V

    .line 279
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->tryUnregisterImsListener()V

    .line 280
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 273
    invoke-super {p0, p1}, Landroid/telephony/NetworkService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
