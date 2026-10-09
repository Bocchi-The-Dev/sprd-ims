.class final Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRadioInterface.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderServiceDeathRecipient"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 3776
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 3794
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->serviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has died."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3795
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3796
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3795
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3797
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->unlinkToDeath()V

    .line 3798
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3779
    if-eqz p1, :cond_0

    .line 3780
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 3781
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3783
    :cond_0
    return-void
.end method

.method public declared-synchronized unlinkToDeath()V
    .locals 2

    monitor-enter p0

    .line 3786
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 3787
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3790
    :cond_0
    monitor-exit p0

    return-void

    .line 3785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
