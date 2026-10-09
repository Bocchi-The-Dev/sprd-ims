.class Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;
.super Landroid/os/Handler;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;Landroid/os/Looper;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 263
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->-$$Nest$msend(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    goto :goto_0

    .line 272
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 274
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->-$$Nest$mprocessPendingMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 276
    :cond_1
    :goto_0
    return-void
.end method
