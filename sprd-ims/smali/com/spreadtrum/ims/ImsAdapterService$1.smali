.class Lcom/spreadtrum/ims/ImsAdapterService$1;
.super Landroid/telephony/ims/aidl/IImsServiceController$Stub;
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

    .line 94
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsAdapter;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 119
    return-void
.end method

.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    return-object p1
.end method

.method public disableIms(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->disableIms(II)V

    .line 172
    return-void
.end method

.method public enableIms(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->enableIms(II)V

    .line 166
    return-void
.end method

.method public getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object p1

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getImsServiceCapabilities()J
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->getImsServiceCapabilities()J

    move-result-wide v0

    .line 177
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$smsanitizeCapabilities(J)J

    move-result-wide v2

    .line 178
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing invalid bits from field: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-long/2addr v0, v2

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-wide v2
.end method

.method public getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getRegistration(I)Lcom/spreadtrum/ims/ImsRegistrationImpl;

    move-result-object p1

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->getSipTransport(I)Lcom/spreadtrum/ims/sip/SipTransportImpl;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/sip/SipTransportImpl;->getBinder()Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public notifyImsServiceReadyForFeatureCreation()V
    .locals 0

    .line 135
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsAdapter;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsAdapter;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 125
    return-void
.end method

.method public removeImsFeature(IIZ)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsAdapter;->removeImsFeature(IIZ)V

    .line 140
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$1;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsAdapter;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 98
    return-void
.end method
