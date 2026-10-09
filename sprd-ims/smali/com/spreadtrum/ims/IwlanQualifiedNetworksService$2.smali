.class Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;
.super Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;
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

    .line 143
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWiFiAvailable(I)V
    .locals 4

    .line 146
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoWiFiAvailable, invalid slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVoWiFiAvailable, slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVoWiFiRegistered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 154
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    :cond_1
    return-void
.end method

.method public onVoWiFiUnavailable(I)V
    .locals 4

    .line 161
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoWiFiAvailable, invalid slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v1, v1, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVoWiFiUnavailable, slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVoWiFiRegistered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->mIsIwlanAvailable:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 169
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$2;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v1

    const/16 v2, 0x3ea

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    :cond_1
    return-void
.end method
