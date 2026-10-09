.class public Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Default;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ImsAddGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public ImsEnableLocalConferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public ImsHandoverResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public ImsHoldSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public ImsInitialGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public ImsMuteSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public ImsSilenceSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public acceptCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public bootstrapAuthenticationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public callMediaChangeRequestTimeOutResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public closeDialogResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public conferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public dialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public dialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public emergencyDialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public emergencyDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public enableImsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public enableLocalHoldResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public enableWiFiParamReportResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public getCallForwardStatusUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public getClipResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public getClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public getImsBearerStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public getImsCurrentCallsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallVoLTE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public getImsPaniInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public getImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public getImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public getImsStackVersionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public getImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public getImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 312
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public getLastCallFailCauseResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public getPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public getRTTAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public getSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public getSpecialRatcapResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public getSrvccCapbilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public getVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public hangupResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    return-void
.end method

.method public holdActiveCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public initISIMResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public notifyDataRouterUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public notifyHandoverCallInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public notifyImsCallEndResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public notifyImsHandoverStatusUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public notifyImsNetworkInfoChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public notifyVoWifiCallStateChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public notifyVoWifiEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public notifyVoWifiWhiteListResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public publishCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public queryColpResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public queryColrResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public rejectCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public requestVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public responseVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public sendDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public sendOptionsCapabilityRequestResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public sendRTTMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public sendSipMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public sendUssdResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    return-void
.end method

.method public separateConnectionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    return-void
.end method

.method public setCallForwardUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public setCarrierImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    return-void
.end method

.method public setClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public setImsInitialAttachApnResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public setImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public setImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public setImsSmscAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public setImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public setLocalToneResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public setMuteResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    return-void
.end method

.method public setPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    return-void
.end method

.method public setRTTChannelEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    return-void
.end method

.method public setRTTEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public setSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    return-void
.end method

.method public setUceCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    return-void
.end method

.method public setVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    return-void
.end method

.method public startDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    return-void
.end method

.method public stopDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    return-void
.end method

.method public subscribeForCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    return-void
.end method

.method public triggerFullNetworkRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public triggerSipDelegateDeregistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    return-void
.end method

.method public updateCLIPResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    return-void
.end method

.method public updateSipDelegateRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    return-void
.end method

.method public videoPhoneDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    return-void
.end method

.method public volteCallFallBackToVoiceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method
