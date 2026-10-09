.class public Lcom/spreadtrum/ims/vowifi/UtSyncManager;
.super Ljava/lang/Object;
.source "UtSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;,
        Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYNC_CLIR:I = 0x2

.field private static final MSG_SYNC_CW:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/spreadtrum/ims/vowifi/UtSyncManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

.field private mHandler:Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;


# direct methods
.method static bridge synthetic -$$Nest$mqueryCLIRStatus(Lcom/spreadtrum/ims/vowifi/UtSyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->queryCLIRStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryCWStatus(Lcom/spreadtrum/ims/vowifi/UtSyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->queryCWStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->sInstance:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    .line 61
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SyncManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;

    invoke-direct {v0, p0, p1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/UtSyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mHandler:Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/vowifi/UtSyncManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->sInstance:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->sInstance:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    .line 57
    :cond_0
    sget-object p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->sInstance:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    return-object p0
.end method

.method private queryCLIRStatus()V
    .locals 4

    .line 108
    sget-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Start query CLIR status."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    const-string v2, "To get the CLIR mode from CP."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/ims/internal/IImsServiceEx;->getCLIRStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the CLIR statue as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void
.end method

.method private queryCWStatus()V
    .locals 4

    .line 94
    sget-object v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Start query CW status."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const-string v2, "To get the CLIR mode from CP."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/ims/internal/IImsServiceEx;->getCallWaitingStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the CLIR statue as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public sync(I)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_subId:I

    if-eq v0, p1, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    invoke-direct {v0, p1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;-><init>(I)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAirplaneModeOff(Landroid/content/Context;)Z

    move-result v0

    .line 77
    sget-object v1, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to sync the UT items for the sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", synced["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_synced:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "], syncedWhenAMOff["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_syncedWhenAMOff:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "], isAirplaneModeOff["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_synced:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_syncedWhenAMOff:Z

    if-nez p1, :cond_3

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mHandler:Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;->sendEmptyMessage(I)Z

    .line 84
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mHandler:Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;->sendEmptyMessage(I)Z

    .line 86
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iput-boolean v1, p1, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_synced:Z

    .line 87
    if-eqz v0, :cond_3

    .line 88
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->mCurSyncState:Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;

    iput-boolean v1, p1, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_syncedWhenAMOff:Z

    .line 91
    :cond_3
    return-void
.end method
