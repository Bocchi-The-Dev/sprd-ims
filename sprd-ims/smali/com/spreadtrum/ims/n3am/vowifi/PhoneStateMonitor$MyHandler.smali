.class Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;
.super Landroid/os/Handler;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    .line 102
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->sendout()V

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to send the notify as there isn\'t srmi message."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    :goto_0
    return-void
.end method
