.class Lcom/spreadtrum/ims/vowifi/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 35
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 50
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 51
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iput-object p2, p1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mServiceBinder:Landroid/os/IBinder;

    .line 52
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->onServiceChanged()V

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 38
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 39
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mServiceBinder:Landroid/os/IBinder;

    .line 40
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->onNativeReset()V

    .line 41
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->onServiceChanged()V

    .line 44
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "As service disconnected, will rebind the service after 10s."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$1;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    return-void
.end method
