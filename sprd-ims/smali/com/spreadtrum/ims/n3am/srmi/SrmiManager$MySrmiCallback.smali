.class Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;
.super Lcom/sprd/srmi/ISrmiCallback$Stub;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySrmiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-direct {p0}, Lcom/sprd/srmi/ISrmiCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V

    return-void
.end method


# virtual methods
.method public onMsgReceived(Ljava/lang/String;II)V
    .locals 3

    .line 782
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received the srmi message, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    move-result-object v1

    .line 785
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 784
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 786
    return-void
.end method
