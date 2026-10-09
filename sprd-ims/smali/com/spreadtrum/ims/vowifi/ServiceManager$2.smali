.class Lcom/spreadtrum/ims/vowifi/ServiceManager$2;
.super Landroid/os/Handler;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->handleNormalMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$mprocessPendingAction(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V

    goto :goto_0

    .line 67
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->rebindService()V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 72
    if-nez v0, :cond_3

    .line 73
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Try to handle the pending action, but the action is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v1

    .line 80
    return-void

    .line 77
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 83
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 84
    iget v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_action:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 85
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->handlePendingAction(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    monitor-enter v0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$2;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mPendingActions:Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 92
    :cond_4
    :goto_0
    return-void
.end method
