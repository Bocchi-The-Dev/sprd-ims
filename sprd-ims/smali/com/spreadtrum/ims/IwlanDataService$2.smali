.class Lcom/spreadtrum/ims/IwlanDataService$2;
.super Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanDataService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWiFiAttachStateChanged(II)V
    .locals 4

    .line 454
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object p2, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoWiFiAttachStateChanged, invalid slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 456
    return-void

    .line 458
    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanDataService;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v1, v1, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget v1, v1, p1

    if-eq v1, p2, :cond_1

    .line 461
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVoWiFiAttachStateChanged, slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pdnState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " register:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aput p2, v0, p1

    .line 464
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService;->mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v1, v1, Lcom/spreadtrum/ims/IwlanDataService;->mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcom/spreadtrum/ims/IwlanDataService$2;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v3, v3, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget v3, v3, p1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 468
    :cond_2
    return-void
.end method
