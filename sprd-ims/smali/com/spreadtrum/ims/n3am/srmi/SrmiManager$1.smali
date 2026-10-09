.class Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;
.super Ljava/lang/Object;
.source "SrmiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 564
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " connected."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->onServiceConnectionChanged(Landroid/os/IBinder;)V

    .line 566
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 558
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " disconnected."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->onServiceConnectionChanged(Landroid/os/IBinder;)V

    .line 560
    return-void
.end method
