.class Lcom/spreadtrum/ims/IwlanNetworkService$2;
.super Lcom/android/ims/internal/IImsRegisterListener$Stub;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanNetworkService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanNetworkService;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegisterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsRegisterStateChange(Z)V
    .locals 4

    .line 164
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanNetworkService;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmIsIwlanRegistered(Lcom/spreadtrum/ims/IwlanNetworkService;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-eq v1, v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsRegisterStateChange, slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vowifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanNetworkService;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmIsIwlanRegistered(Lcom/spreadtrum/ims/IwlanNetworkService;)[Z

    move-result-object v1

    aput-boolean v0, v1, p1

    .line 169
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanNetworkService;)Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$2;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanNetworkService;)Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method
