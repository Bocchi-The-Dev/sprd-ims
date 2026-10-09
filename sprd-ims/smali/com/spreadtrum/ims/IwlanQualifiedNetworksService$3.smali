.class Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;
.super Lcom/android/ims/internal/IImsRegisterListener$Stub;
.source "IwlanQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegisterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsRegisterStateChange(Z)V
    .locals 4

    .line 178
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v1, v1, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanRegistered:[Z

    aget-boolean v1, v1, p1

    if-eq v1, v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

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

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v1, v1, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanRegistered:[Z

    aput-boolean v0, v1, p1

    .line 183
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$3;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v1

    const/16 v2, 0x3eb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method
