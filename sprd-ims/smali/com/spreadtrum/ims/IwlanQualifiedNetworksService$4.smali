.class Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;
.super Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;
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

    .line 190
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-direct {p0}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMmsTransportStateChange(IZ)V
    .locals 3

    .line 193
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object p2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMmsTransportStateChange with invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMmsTransportStateChange, slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRetrySend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsMmsRetrySend:[Z

    aput-boolean p2, v0, p1

    .line 199
    iget-object p2, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {p2}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$4;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method
