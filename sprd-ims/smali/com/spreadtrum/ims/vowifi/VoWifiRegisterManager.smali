.class public Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;
.super Lcom/spreadtrum/ims/vowifi/ServiceManager;
.source "VoWifiRegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;,
        Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;,
        Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;
    }
.end annotation


# static fields
.field private static final MSG_ACTION_DE_REGISTER:I = 0x2

.field private static final MSG_ACTION_FORCE_STOP:I = 0x4

.field private static final MSG_ACTION_LOGIN:I = 0x1

.field private static final MSG_ACTION_PREPARE_FOR_LOGIN:I = 0x5

.field private static final MSG_ACTION_REQUEST_CNI_TIMEOUT:I = 0x6

.field private static final MSG_ACTION_RE_REGISTER:I = 0x3

.field private static final REQUEST_CNI_TIMEOUT_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;

.field private mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

.field private mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRegisterState(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_REG:Ljava/lang/String;

    const-string v1, "com.spreadtrum.vowifi"

    const-string v2, "com.spreadtrum.vowifi.service.RegisterService"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    .line 62
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    .line 63
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;

    .line 72
    new-instance p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;

    invoke-direct {p1, p0, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;

    .line 73
    return-void
.end method

.method private cliOpen(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to open the account."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiRegister;->cliOpen(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v2, v0

    :cond_1
    return v2

    .line 426
    :cond_2
    :goto_0
    const-string p1, "Failed open account as register interface or the account info is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v2
.end method

.method private cliStart()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to start the client."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 437
    const-string v1, "Failed start client as register interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v2

    .line 441
    :cond_0
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiRegister;->cliStart()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method private cliUpdateSettings(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to update the account settings."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 449
    const-string p1, "Failed update as register interface or the account info is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v2

    .line 453
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiRegister;->cliUpdateSettings(Z)I

    move-result p1

    .line 454
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method private updateRegisterState(I)V
    .locals 1

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(II)V

    .line 459
    return-void
.end method

.method private declared-synchronized updateRegisterState(II)V
    .locals 1

    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 464
    :cond_0
    :try_start_1
    iput p1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    .line 465
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onRegisterStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :cond_1
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized deregister(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V
    .locals 5

    monitor-enter p0

    .line 291
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to logout from the ims."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 305
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 307
    :try_start_1
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiRegister;->cliLogout()I

    move-result v1

    .line 308
    if-nez v1, :cond_1

    .line 310
    const-string v1, "Logout from the ims service failed. Please check!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :goto_0
    goto :goto_3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when unregister, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz p1, :cond_2

    invoke-interface {p1, v2, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLogout(II)V

    .line 318
    :cond_2
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 319
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    goto :goto_0

    .line 324
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to logout from the ims, shouldn\'t be here. register state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 299
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregister, handle as force stop as the current status is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v3, :cond_5

    const-string v3, "null"

    goto :goto_2

    :cond_5
    iget v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->forceStop(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)Z

    .line 302
    if-eqz p1, :cond_6

    invoke-interface {p1, v2, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLogout(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forceStop(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)Z
    .locals 4

    monitor-enter p0

    .line 362
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Force stop current register process."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 367
    :try_start_1
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiRegister;->cliReset()I

    move-result v1

    .line 368
    if-nez v1, :cond_0

    .line 369
    const-string v1, "Failed to reset the sip stack, notify as reset block."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onResetBlocked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_0
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch the remote exception when unregister, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onResetBlocked()V

    .line 380
    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 381
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 361
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurRegisterState()I
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurRequiredCNI()Z
    .locals 2

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPAssociatedUri()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegPAssociatedUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleNormalMessage(Landroid/os/Message;)Z
    .locals 2

    .line 108
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 112
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Do not get the CNI info now, handle as go-on register process."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mWaitForCNIResponse:Z

    .line 114
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iput-boolean v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    .line 115
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iput-boolean v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    .line 117
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V

    .line 121
    :cond_0
    monitor-exit p0

    .line 122
    return v0

    .line 121
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 125
    :cond_1
    invoke-super {p0, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->handleNormalMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method protected handlePendingAction(Landroid/os/Message;)Z
    .locals 12

    .line 130
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the pending action, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    nop

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 155
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 156
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    .line 156
    invoke-virtual {p0, v0, v4, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->prepareForLogin(IZLcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V

    .line 159
    goto/16 :goto_0

    .line 149
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 150
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->reRegister(ILjava/lang/String;)V

    .line 151
    nop

    .line 152
    move v3, v4

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 144
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->deregister(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V

    .line 145
    nop

    .line 146
    move v3, v4

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 136
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 136
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->login(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    nop

    .line 140
    move v3, v4

    .line 163
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized login(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    move-object v1, p0

    move v0, p1

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v2, :cond_0

    .line 230
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v2, "Do not prepare for login, please check!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 235
    :cond_0
    :try_start_1
    sget-object v12, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to login to the ims, for sos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is IPv4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current register state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login with the local ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pcscf ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dns server ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x1

    const/4 v13, 0x0

    if-nez p6, :cond_2

    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    .line 243
    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {v0, v2, v13, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLoginFinished(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_1
    monitor-exit p0

    return-void

    .line 245
    :cond_2
    :try_start_2
    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_3

    .line 247
    monitor-exit p0

    return-void

    .line 249
    :cond_3
    :try_start_3
    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iput-boolean v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mIsSOS:Z

    .line 253
    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    if-nez v3, :cond_5

    .line 254
    const-string v0, "When login, the IRegister is null!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {v0, v13, v13, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLoginFinished(ZII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :cond_4
    monitor-exit p0

    return-void

    .line 260
    :cond_5
    :try_start_4
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 261
    nop

    .line 262
    const-string v3, ""

    .line 263
    const/4 v8, -0x1

    .line 264
    iget-object v9, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v9, v9, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v9, v9, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    if-nez v9, :cond_6

    iget-object v9, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v9, v9, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    if-eqz v9, :cond_7

    .line 266
    :cond_6
    iget-object v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_type:I

    .line 267
    iget-object v3, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    iget-object v3, v3, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_info:Ljava/lang/String;

    .line 268
    iget-object v8, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v8, v8, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    iget v8, v8, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_age:I

    move-object v9, v3

    move v10, v8

    move v8, v2

    goto :goto_0

    .line 271
    :cond_7
    move-object v9, v3

    move v10, v8

    move v8, v2

    :goto_0
    iget-object v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v11, p6

    invoke-interface/range {v2 .. v11}, Lcom/android/ims/internal/IVoWifiRegister;->cliLogin(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I

    move-result v0

    .line 273
    if-nez v0, :cond_8

    .line 274
    const-string v0, "Login to the ims service failed, Please check!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 277
    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz v0, :cond_8

    .line 278
    iget-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {v0, v13, v13, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLoginFinished(ZII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    :cond_8
    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :try_start_5
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when login, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    :goto_1
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loginRetry()V
    .locals 8

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "For retry login, shouldn\'t be here. Please check!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle as login retry with current IP address."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v2, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mIsSOS:Z

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    .line 219
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->isCurUsedIPv4()Z

    move-result v3

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    .line 220
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getCurUsedLocalIP()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    .line 221
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getCurUsedPcscfIP()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    .line 218
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->login(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onNativeReset()V
    .locals 2

    .line 77
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string v1, "The register service reset. Notify as the service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onDisconnected()V

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateRegisterState(I)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    .line 87
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onServiceChanged()V
    .locals 4

    .line 94
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    .line 95
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiRegister;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    .line 97
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiRegister;->registerCallback(Lcom/android/ims/internal/IVoWifiRegisterCallback;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->clearPendingList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not register callback as catch the RemoteException. e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1
    return-void
.end method

.method public declared-synchronized prepareForLogin(IZLcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V
    .locals 5

    monitor-enter p0

    .line 169
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare before login, subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    if-ltz p1, :cond_7

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 180
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    iput-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    .line 182
    invoke-interface {v2}, Lcom/android/ims/internal/IVoWifiRegister;->cliReset()I

    move-result v2

    .line 183
    if-nez v2, :cond_2

    .line 184
    const-string p1, "Reset action failed, notify as prepare failed."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz p4, :cond_1

    invoke-interface {p4, v1, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    monitor-exit p0

    return-void

    .line 190
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->cliOpen(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->cliStart()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->cliUpdateSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 191
    new-instance p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    .line 192
    iget-boolean p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    invoke-interface {p4, v4, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V

    goto :goto_1

    .line 194
    :cond_4
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->requestCellularNetInfo()V

    .line 195
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iput-boolean v4, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mWaitForCNIResponse:Z

    .line 196
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 202
    :cond_5
    invoke-interface {p4, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :goto_1
    goto :goto_2

    .line 204
    :catch_0
    move-exception p1

    .line 205
    :try_start_3
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to prepare for login as catch the RemoteException, e: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p4, :cond_6

    invoke-interface {p4, v1, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 172
    :cond_7
    :goto_3
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not get the account info as sub id["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or mIRegister is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz p4, :cond_8

    invoke-interface {p4, v1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    :cond_8
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reRegister(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 331
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-register, with the type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    if-nez v1, :cond_1

    .line 343
    const-string p1, "Failed to re-register as IRegister is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 348
    :cond_1
    :try_start_1
    new-instance v1, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    invoke-direct {v1, p1, p2}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;-><init>(ILjava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mIRegister:Lcom/android/ims/internal/IVoWifiRegister;

    iget p2, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_type:I

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_info:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Lcom/android/ims/internal/IVoWifiRegister;->cliRefresh(ILjava/lang/String;)I

    move-result p1

    .line 350
    if-nez p1, :cond_2

    .line 352
    const-string p1, "Re-register to the ims service failed. Please check!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :cond_2
    goto :goto_0

    .line 354
    :catch_0
    move-exception p1

    .line 355
    :try_start_2
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catch the remote exception when re-register, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLogout(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :cond_4
    :goto_1
    :try_start_3
    const-string p1, "Failed to re-register, please check!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCellularNetInfo(ILjava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    if-nez v0, :cond_0

    .line 399
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    const-string p2, "Update Cellular NetInfo fail because of NULL Request."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 403
    :cond_0
    :try_start_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "As needCellularNetInfo[mNeedPLCI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNeedCNI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] update the type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", age as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mWaitForCNIResponse:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    if-eqz v0, :cond_2

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mWaitForCNIResponse:Z

    .line 411
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    new-instance v2, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;-><init>(ILjava/lang/String;I)V

    iput-object v2, v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    .line 412
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_2

    .line 413
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->mRequest:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onPrepareFinished(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :cond_2
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
