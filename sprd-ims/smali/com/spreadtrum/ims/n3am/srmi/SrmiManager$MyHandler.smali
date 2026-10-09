.class Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;
.super Landroid/os/Handler;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Landroid/os/Looper;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    .line 536
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 541
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getChannel(Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    .line 544
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->onMsgReceived(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle the srmi message received as name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] or type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] is invalid."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :goto_0
    return-void
.end method
