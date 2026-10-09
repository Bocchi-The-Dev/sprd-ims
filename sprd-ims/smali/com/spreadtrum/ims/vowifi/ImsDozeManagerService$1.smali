.class Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;
.super Landroid/os/Handler;
.source "ImsDozeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 40
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsDozeObserver;

    .line 42
    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$fgetmImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsDozeObserver;->onDozeModeOnOff(Z)V

    goto :goto_1

    .line 45
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$fgetmObserverList(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$fgetmObserverList(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsDozeObserver;

    .line 47
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$fgetmImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsDozeObserver;->onDozeModeOnOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    nop

    .line 53
    :cond_2
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify the ims doze status["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$fgetmImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for the message["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "] as catch the ex: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 52
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_2
    return-void
.end method
