.class public abstract Lcom/spreadtrum/ims/vowifi/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;
    }
.end annotation


# static fields
.field private static final MSG_PROCESS_PENDING_ACTION:I = 0x0

.field private static final MSG_REBIND_SERVICE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActionName:Ljava/lang/String;

.field protected mClassName:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mIntent:Landroid/content/Intent;

.field protected mPackageName:Ljava/lang/String;

.field protected mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

.field protected mServiceBinder:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$mprocessPendingAction(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->processPendingAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;-><init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 58
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;-><init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mHandler:Landroid/os/Handler;

    .line 96
    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mContext:Landroid/content/Context;

    .line 99
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;-><init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap-IA;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    .line 101
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPackageName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mClassName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mActionName:Ljava/lang/String;

    .line 104
    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The context is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processPendingAction()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    .line 139
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected addToPendingList(Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;)V
    .locals 3

    .line 151
    if-nez p1, :cond_0

    .line 152
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not add this action to pending list as it is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    invoke-virtual {v2, v1, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->put(Ljava/lang/Integer;Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;)Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bindService()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "The service already bind, needn\'t init again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mActionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mIntent:Landroid/content/Intent;

    .line 116
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    return-void
.end method

.method protected clearPendingList()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->clearPendingList(Ljava/util/ArrayList;)V

    .line 164
    return-void
.end method

.method protected clearPendingList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    monitor-enter v0

    .line 168
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    .line 173
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 174
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 178
    iget v4, v3, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v2, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The pending action[msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_action:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->clear()V

    .line 170
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "All the pending action will be clear."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleNormalMessage(Landroid/os/Message;)Z
    .locals 0

    .line 131
    const/4 p1, 0x0

    return p1
.end method

.method protected handlePendingAction(Landroid/os/Message;)Z
    .locals 0

    .line 190
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onNativeReset()V
.end method

.method protected abstract onServiceChanged()V
.end method

.method protected rebindService()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 124
    :cond_0
    return-void
.end method

.method protected unbindService()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    return-void
.end method
