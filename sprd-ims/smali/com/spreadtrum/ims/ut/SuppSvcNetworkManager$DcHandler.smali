.class Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;
.super Landroid/os/Handler;
.source "SuppSvcNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DcHandler"
.end annotation


# instance fields
.field private paused:Z

.field final synthetic this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Landroid/os/Looper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->paused:Z

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 116
    const-string v0, "SuppSvcNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcHandler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSSWork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSSWork(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 133
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$sfgetpausedSync()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->releaseNetworkRequest(I)V

    .line 135
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->paused:Z

    .line 136
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetrequestBuffer(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetrequestBuffer(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;

    .line 138
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetrequestBuffer(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 139
    const-string p1, "SuppSvcNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcHandler remove queue for  subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_0
    monitor-exit v0

    .line 144
    goto/16 :goto_1

    .line 143
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 119
    :pswitch_1
    invoke-static {}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$sfgetpausedSync()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;

    .line 121
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->paused:Z

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "SuppSvcNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcHandler SS request ongoing, add subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into the queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetrequestBuffer(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    iget v2, p1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->subId:I

    iget-object p1, p1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->message:Landroid/os/Message;

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->requestNetwork(ILandroid/os/Message;)V

    .line 128
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->paused:Z

    .line 130
    :goto_0
    monitor-exit v0

    .line 131
    goto :goto_1

    .line 130
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 156
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSSWork(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$monSwitchDataTimeout(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    goto :goto_1

    .line 151
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSSWork(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$monRequestSwitchDataSimDone(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    goto :goto_1

    .line 146
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSSWork(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$monReleaseNetworkRequest(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    .line 163
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
