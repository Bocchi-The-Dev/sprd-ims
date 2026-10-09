.class Lcom/spreadtrum/ims/ImsAdapterService$2;
.super Lcom/android/ims/internal/IImsServiceEx$Stub;
.source "ImsAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsAdapterService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsAdapterService;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->addImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V

    .line 521
    return-void
.end method

.method public addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 454
    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->cancelCurrentRequest()I

    move-result v0

    return v0
.end method

.method public getAliveCallJitter()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getAliveCallJitter()I

    move-result v0

    return v0
.end method

.method public getAliveCallLose()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getAliveCallLose()I

    move-result v0

    return v0
.end method

.method public getAliveCallRtt()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getAliveCallRtt()I

    move-result v0

    return v0
.end method

.method public getCLIRStatus(I)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getCLIRStatus(I)I

    move-result p1

    return p1
.end method

.method public getCallType()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCallType()I

    move-result v0

    return v0
.end method

.method public getCallWaitingStatus(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getCallWaitingStatus(I)V

    .line 489
    return-void
.end method

.method public getCurLocalAddress()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCurLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurPcscfAddress()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCurPcscfAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImsFeature()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCurrentImsFeature()I

    move-result v0

    return v0
.end method

.method public getCurrentImsFeatureForPhone(I)I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getCurrentImsFeatureForPhone(I)I

    move-result p1

    return p1
.end method

.method public getCurrentImsVideoState()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCurrentImsVideoState()I

    move-result v0

    return v0
.end method

.method public getImsCNIInfor()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getImsCNIInfor()V

    .line 513
    return-void
.end method

.method public getImsPcscfAddress()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getImsPcscfAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRegAddress()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getImsRegAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPAU(I)Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getPAU(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVolteRegisterState()I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getVolteRegisterState()I

    move-result v0

    return v0
.end method

.method public getVolteRegisterStateForPhone(I)I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getVolteRegisterStateForPhone(I)I

    move-result p1

    return p1
.end method

.method public isSupportMobike()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->isSupportMobike()Z

    move-result v0

    return v0
.end method

.method public isSupportVoWifiMms(I)Z
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    const-string v1, "support_vowifi_mms"

    invoke-static {p1, v1, v0}, Lcom/spreadtrum/ims/ImsAdapterService;->getBooleanCarrierConfigBySlotId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isVoWifiAttached()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->isVoWifiAttached()Z

    move-result v0

    return v0
.end method

.method public notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsAdapter;->notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 538
    return-void
.end method

.method public notifyMmsTranportStateChange(IZ)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->notifyMmsTranportStateChange(IZ)V

    .line 631
    return-void
.end method

.method public notifyNetworkUnavailable()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->notifyNetworkUnavailable()V

    .line 230
    return-void
.end method

.method public notifySrvccCallInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->notifySrvccCallInfos(Ljava/util/List;)V

    .line 423
    return-void
.end method

.method public notifyVideoCapabilityChange()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->notifyVideoCapabilityChange()V

    .line 479
    return-void
.end method

.method public notifyVoWiFiAttachState(II)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->notifyVoWiFiAttachState(II)V

    .line 598
    return-void
.end method

.method public notifyVoWiFiAvailable(I)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->notifyVoWiFiAvailable(I)V

    .line 564
    return-void
.end method

.method public notifyVoWiFiUnavailable(I)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->notifyVoWiFiUnavailable(I)V

    .line 572
    return-void
.end method

.method public onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;
    .locals 8

    .line 603
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/ImsAdapter;->onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;

    move-result-object p1

    return-object p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    const-string v1, "com.spreadtrum.ims.permisson.IMS_COMMON"

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsAdapterService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 191
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IImsServiceEx-> permission denied !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 p1, 0x0

    return p1

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public registerIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->registerIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V

    .line 611
    return-void
.end method

.method public registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V

    .line 621
    return-void
.end method

.method public registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 321
    return-void
.end method

.method public registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    .line 581
    return-void
.end method

.method public registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 547
    return-void
.end method

.method public releaseVoWifiResource()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->releaseVoWifiResource()I

    move-result v0

    return v0
.end method

.method public removeImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->removeImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V

    .line 529
    return-void
.end method

.method public removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 462
    return-void
.end method

.method public setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V

    .line 278
    return-void
.end method

.method public setMonitorPeriodForNoData(I)V
    .locals 0

    .line 356
    return-void
.end method

.method public setVoWifiUnavailable(IZ)I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->setVoWifiUnavailable(IZ)I

    move-result p1

    return p1
.end method

.method public setVowifiRegister(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->setVowifiRegister(I)V

    .line 446
    return-void
.end method

.method public showVowifiNotification()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getCurPcscfAddress()Ljava/lang/String;

    .line 361
    return-void
.end method

.method public startHandover(I)I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->startHandover(I)I

    move-result p1

    return p1
.end method

.method public startMobike()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->startMobike()V

    .line 497
    return-void
.end method

.method public switchImsFeature(I)I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->switchImsFeature(I)I

    move-result p1

    return p1
.end method

.method public terminateCalls(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->terminateAllCalls(I)V

    .line 340
    return-void
.end method

.method public unregisterIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->unregisterIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V

    .line 616
    return-void
.end method

.method public unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V

    .line 626
    return-void
.end method

.method public unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    .line 590
    return-void
.end method

.method public unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 556
    return-void
.end method

.method public unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 330
    return-void
.end method

.method public updateCLIRStatus(I)I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$2;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->updateCLIRStatus(I)I

    move-result p1

    return p1
.end method
