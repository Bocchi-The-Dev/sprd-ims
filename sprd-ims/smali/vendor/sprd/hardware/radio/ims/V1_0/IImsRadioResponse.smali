.class public interface abstract Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;,
        Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 4

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 19
    return-object v0

    .line 22
    :cond_0
    nop

    .line 23
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    if-eqz v3, :cond_1

    .line 26
    check-cast v2, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    return-object v2

    .line 29
    :cond_1
    new-instance v2, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;

    invoke-direct {v2, p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    :try_start_0
    invoke-interface {v2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 34
    return-object v2

    .line 36
    :cond_2
    goto :goto_0

    .line 38
    :cond_3
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 40
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 0

    .line 47
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    const-string v0, "default"

    invoke-static {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->getService(Ljava/lang/String;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ImsAddGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsEnableLocalConferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsHandoverResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsHoldSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsInitialGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsMuteSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ImsSilenceSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract acceptCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract callMediaChangeRequestTimeOutResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract conferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract emergencyDialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract emergencyDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableImsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableLocalHoldResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableWiFiParamReportResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract explicitCallTransferResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallForwardStatusUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getClipResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsBearerStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsCurrentCallsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsPaniInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsRegistrationStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsStackVersionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastCallFailCauseResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRTTAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSrvccCapbilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupForegroundResumeBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupWaitingOrBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract holdActiveCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initISIMResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDataRouterUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyHandoverCallInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyImsCallEndResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyImsHandoverStatusUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyImsNetworkInfoChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyVoWifiCallStateChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyVoWifiEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyVoWifiWhiteListResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryColpResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryColrResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract rejectCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract responseVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendRTTMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendUssdResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract separateConnectionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBarringPasswordResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallForwardUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsInitialAttachApnResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsSmscAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMuteResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRTTChannelEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRTTEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract switchWaitingOrHoldingAndActiveResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateCLIPResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract videoPhoneDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract volteCallFallBackToVoiceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
