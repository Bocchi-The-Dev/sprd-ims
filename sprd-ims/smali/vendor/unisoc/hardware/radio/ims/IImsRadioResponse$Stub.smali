.class public abstract Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_ImsAddGroupCallResponse:I = 0x1

.field static final TRANSACTION_ImsEnableLocalConferenceResponse:I = 0x2

.field static final TRANSACTION_ImsHandoverResponse:I = 0x3

.field static final TRANSACTION_ImsHoldSingleCallResponse:I = 0x4

.field static final TRANSACTION_ImsInitialGroupCallResponse:I = 0x5

.field static final TRANSACTION_ImsMuteSingleCallResponse:I = 0x6

.field static final TRANSACTION_ImsSilenceSingleCallResponse:I = 0x7

.field static final TRANSACTION_acceptCallResponse:I = 0x8

.field static final TRANSACTION_bootstrapAuthenticationResponse:I = 0x9

.field static final TRANSACTION_callMediaChangeRequestTimeOutResponse:I = 0xa

.field static final TRANSACTION_closeDialogResponse:I = 0xb

.field static final TRANSACTION_conferenceResponse:I = 0xc

.field static final TRANSACTION_dialRTTResponse:I = 0xd

.field static final TRANSACTION_dialResponse:I = 0xe

.field static final TRANSACTION_emergencyDialRTTResponse:I = 0xf

.field static final TRANSACTION_emergencyDialResponse:I = 0x10

.field static final TRANSACTION_enableImsResponse:I = 0x11

.field static final TRANSACTION_enableLocalHoldResponse:I = 0x12

.field static final TRANSACTION_enableWiFiParamReportResponse:I = 0x13

.field static final TRANSACTION_explicitCallTransferResponse:I = 0x14

.field static final TRANSACTION_getCallForwardStatusUriResponse:I = 0x15

.field static final TRANSACTION_getCallWaitingResponse:I = 0x16

.field static final TRANSACTION_getClipResponse:I = 0x17

.field static final TRANSACTION_getClirResponse:I = 0x18

.field static final TRANSACTION_getFacilityLockForAppResponse:I = 0x19

.field static final TRANSACTION_getImsBearerStateResponse:I = 0x1a

.field static final TRANSACTION_getImsCurrentCallsResponse:I = 0x1b

.field static final TRANSACTION_getImsPaniInfoResponse:I = 0x1c

.field static final TRANSACTION_getImsPcscfAddressResponse:I = 0x1d

.field static final TRANSACTION_getImsRegAddressResponse:I = 0x1e

.field static final TRANSACTION_getImsRegistrationStateResponse:I = 0x1f

.field static final TRANSACTION_getImsStackVersionResponse:I = 0x20

.field static final TRANSACTION_getImsUserAgentResponse:I = 0x21

.field static final TRANSACTION_getImsVoiceCallAvailabilityResponse:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLastCallFailCauseResponse:I = 0x23

.field static final TRANSACTION_getPAUResponse:I = 0x24

.field static final TRANSACTION_getRTTAllowedPLMNResponse:I = 0x25

.field static final TRANSACTION_getSmsBearerResponse:I = 0x26

.field static final TRANSACTION_getSpecialRatcapResponse:I = 0x27

.field static final TRANSACTION_getSrvccCapbilityResponse:I = 0x28

.field static final TRANSACTION_getVideoResolutionResponse:I = 0x29

.field static final TRANSACTION_getVoLTEAllowedPLMNResponse:I = 0x2a

.field static final TRANSACTION_hangupForegroundResumeBackgroundResponse:I = 0x2b

.field static final TRANSACTION_hangupResponse:I = 0x2c

.field static final TRANSACTION_hangupWaitingOrBackgroundResponse:I = 0x2d

.field static final TRANSACTION_holdActiveCallResponse:I = 0x2e

.field static final TRANSACTION_initISIMResponse:I = 0x2f

.field static final TRANSACTION_notifyDataRouterUpdateResponse:I = 0x30

.field static final TRANSACTION_notifyHandoverCallInfoResponse:I = 0x31

.field static final TRANSACTION_notifyImsCallEndResponse:I = 0x32

.field static final TRANSACTION_notifyImsHandoverStatusUpdateResponse:I = 0x33

.field static final TRANSACTION_notifyImsNetworkInfoChangedResponse:I = 0x34

.field static final TRANSACTION_notifyVoWifiCallStateChangedResponse:I = 0x35

.field static final TRANSACTION_notifyVoWifiEnableResponse:I = 0x36

.field static final TRANSACTION_notifyVoWifiWhiteListResponse:I = 0x37

.field static final TRANSACTION_publishCapabilitiesResponse:I = 0x38

.field static final TRANSACTION_queryColpResponse:I = 0x39

.field static final TRANSACTION_queryColrResponse:I = 0x3a

.field static final TRANSACTION_rejectCallResponse:I = 0x3b

.field static final TRANSACTION_requestVolteCallMediaChangeResponse:I = 0x3c

.field static final TRANSACTION_responseVolteCallMediaChangeResponse:I = 0x3d

.field static final TRANSACTION_sendDtmfResponse:I = 0x3e

.field static final TRANSACTION_sendOptionsCapabilityRequestResponse:I = 0x3f

.field static final TRANSACTION_sendRTTMessageResponse:I = 0x40

.field static final TRANSACTION_sendSipMessageResponse:I = 0x41

.field static final TRANSACTION_sendUssdResponse:I = 0x42

.field static final TRANSACTION_separateConnectionResponse:I = 0x43

.field static final TRANSACTION_setBarringPasswordResponse:I = 0x44

.field static final TRANSACTION_setCallForwardUriResponse:I = 0x45

.field static final TRANSACTION_setCallWaitingResponse:I = 0x46

.field static final TRANSACTION_setCarrierImsUserAgentResponse:I = 0x47

.field static final TRANSACTION_setClirResponse:I = 0x48

.field static final TRANSACTION_setFacilityLockForAppResponse:I = 0x49

.field static final TRANSACTION_setImsInitialAttachApnResponse:I = 0x4a

.field static final TRANSACTION_setImsPcscfAddressResponse:I = 0x4b

.field static final TRANSACTION_setImsRegAddressResponse:I = 0x4c

.field static final TRANSACTION_setImsSmscAddressResponse:I = 0x4d

.field static final TRANSACTION_setImsVoiceCallAvailabilityResponse:I = 0x4e

.field static final TRANSACTION_setLocalToneResponse:I = 0x60

.field static final TRANSACTION_setMuteResponse:I = 0x4f

.field static final TRANSACTION_setPAUResponse:I = 0x50

.field static final TRANSACTION_setRTTChannelEnableResponse:I = 0x51

.field static final TRANSACTION_setRTTEnableResponse:I = 0x52

.field static final TRANSACTION_setSmsBearerResponse:I = 0x53

.field static final TRANSACTION_setUceCapabilitiesResponse:I = 0x54

.field static final TRANSACTION_setVideoResolutionResponse:I = 0x55

.field static final TRANSACTION_startDtmfResponse:I = 0x56

.field static final TRANSACTION_stopDtmfResponse:I = 0x57

.field static final TRANSACTION_subscribeForCapabilitiesResponse:I = 0x58

.field static final TRANSACTION_switchWaitingOrHoldingAndActiveResponse:I = 0x59

.field static final TRANSACTION_triggerFullNetworkRegistrationResponse:I = 0x5a

.field static final TRANSACTION_triggerSipDelegateDeregistrationResponse:I = 0x5b

.field static final TRANSACTION_updateCLIPResponse:I = 0x5c

.field static final TRANSACTION_updateSipDelegateRegistrationResponse:I = 0x5d

.field static final TRANSACTION_videoPhoneDialResponse:I = 0x5e

.field static final TRANSACTION_volteCallFallBackToVoiceResponse:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 324
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 325
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->markVintfStability()V

    .line 326
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;
    .locals 2

    .line 334
    if-nez p0, :cond_0

    .line 335
    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;

    return-object v0

    .line 341
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 345
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 350
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 351
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 1213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 357
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    return v1

    .line 362
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v1

    .line 368
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    return v1

    .line 1206
    :pswitch_0
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setLocalToneResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1209
    goto/16 :goto_0

    .line 1198
    :pswitch_1
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->volteCallFallBackToVoiceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1201
    goto/16 :goto_0

    .line 1190
    :pswitch_2
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->videoPhoneDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1193
    goto/16 :goto_0

    .line 1182
    :pswitch_3
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->updateSipDelegateRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1185
    goto/16 :goto_0

    .line 1174
    :pswitch_4
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->updateCLIPResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1177
    goto/16 :goto_0

    .line 1166
    :pswitch_5
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->triggerSipDelegateDeregistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1169
    goto/16 :goto_0

    .line 1158
    :pswitch_6
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->triggerFullNetworkRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1161
    goto/16 :goto_0

    .line 1150
    :pswitch_7
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1153
    goto/16 :goto_0

    .line 1140
    :pswitch_8
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1142
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->subscribeForCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V

    .line 1145
    goto/16 :goto_0

    .line 1132
    :pswitch_9
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->stopDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1135
    goto/16 :goto_0

    .line 1124
    :pswitch_a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->startDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1127
    goto/16 :goto_0

    .line 1116
    :pswitch_b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1119
    goto/16 :goto_0

    .line 1106
    :pswitch_c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1108
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setUceCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V

    .line 1111
    goto/16 :goto_0

    .line 1098
    :pswitch_d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1101
    goto/16 :goto_0

    .line 1090
    :pswitch_e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setRTTEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1093
    goto/16 :goto_0

    .line 1082
    :pswitch_f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setRTTChannelEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1085
    goto/16 :goto_0

    .line 1074
    :pswitch_10
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1077
    goto/16 :goto_0

    .line 1066
    :pswitch_11
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setMuteResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1069
    goto/16 :goto_0

    .line 1058
    :pswitch_12
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1061
    goto/16 :goto_0

    .line 1050
    :pswitch_13
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setImsSmscAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1053
    goto/16 :goto_0

    .line 1042
    :pswitch_14
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1045
    goto/16 :goto_0

    .line 1034
    :pswitch_15
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1037
    goto/16 :goto_0

    .line 1026
    :pswitch_16
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setImsInitialAttachApnResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1029
    goto/16 :goto_0

    .line 1016
    :pswitch_17
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 1021
    goto/16 :goto_0

    .line 1008
    :pswitch_18
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1011
    goto/16 :goto_0

    .line 1000
    :pswitch_19
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setCarrierImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 1003
    goto/16 :goto_0

    .line 992
    :pswitch_1a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 995
    goto/16 :goto_0

    .line 984
    :pswitch_1b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setCallForwardUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 987
    goto/16 :goto_0

    .line 976
    :pswitch_1c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->setBarringPasswordResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 979
    goto/16 :goto_0

    .line 968
    :pswitch_1d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->separateConnectionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 971
    goto/16 :goto_0

    .line 960
    :pswitch_1e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->sendUssdResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 963
    goto/16 :goto_0

    .line 952
    :pswitch_1f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->sendSipMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 955
    goto/16 :goto_0

    .line 944
    :pswitch_20
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->sendRTTMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 947
    goto/16 :goto_0

    .line 934
    :pswitch_21
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 936
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->sendOptionsCapabilityRequestResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V

    .line 939
    goto/16 :goto_0

    .line 926
    :pswitch_22
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->sendDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 929
    goto/16 :goto_0

    .line 918
    :pswitch_23
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->responseVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 921
    goto/16 :goto_0

    .line 910
    :pswitch_24
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->requestVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 913
    goto/16 :goto_0

    .line 902
    :pswitch_25
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->rejectCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 905
    goto/16 :goto_0

    .line 892
    :pswitch_26
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->queryColrResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 897
    goto/16 :goto_0

    .line 882
    :pswitch_27
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->queryColpResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 887
    goto/16 :goto_0

    .line 872
    :pswitch_28
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 874
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->publishCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V

    .line 877
    goto/16 :goto_0

    .line 864
    :pswitch_29
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyVoWifiWhiteListResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 867
    goto/16 :goto_0

    .line 856
    :pswitch_2a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyVoWifiEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 859
    goto/16 :goto_0

    .line 848
    :pswitch_2b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyVoWifiCallStateChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 851
    goto/16 :goto_0

    .line 840
    :pswitch_2c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyImsNetworkInfoChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 843
    goto/16 :goto_0

    .line 832
    :pswitch_2d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyImsHandoverStatusUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 835
    goto/16 :goto_0

    .line 824
    :pswitch_2e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyImsCallEndResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 827
    goto/16 :goto_0

    .line 816
    :pswitch_2f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyHandoverCallInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 819
    goto/16 :goto_0

    .line 808
    :pswitch_30
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->notifyDataRouterUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 811
    goto/16 :goto_0

    .line 798
    :pswitch_31
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->initISIMResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 803
    goto/16 :goto_0

    .line 790
    :pswitch_32
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->holdActiveCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 793
    goto/16 :goto_0

    .line 782
    :pswitch_33
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 785
    goto/16 :goto_0

    .line 774
    :pswitch_34
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->hangupResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 777
    goto/16 :goto_0

    .line 766
    :pswitch_35
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 769
    goto/16 :goto_0

    .line 756
    :pswitch_36
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getVoLTEAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 761
    goto/16 :goto_0

    .line 746
    :pswitch_37
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 751
    goto/16 :goto_0

    .line 736
    :pswitch_38
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getSrvccCapbilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 741
    goto/16 :goto_0

    .line 726
    :pswitch_39
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getSpecialRatcapResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 731
    goto/16 :goto_0

    .line 716
    :pswitch_3a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 721
    goto/16 :goto_0

    .line 706
    :pswitch_3b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getRTTAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 711
    goto/16 :goto_0

    .line 696
    :pswitch_3c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 701
    goto/16 :goto_0

    .line 686
    :pswitch_3d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 688
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getLastCallFailCauseResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V

    .line 691
    goto/16 :goto_0

    .line 676
    :pswitch_3e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 681
    goto/16 :goto_0

    .line 666
    :pswitch_3f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 671
    goto/16 :goto_0

    .line 656
    :pswitch_40
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsStackVersionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 661
    goto/16 :goto_0

    .line 644
    :pswitch_41
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V

    .line 651
    goto/16 :goto_0

    .line 634
    :pswitch_42
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Ljava/lang/String;)V

    .line 639
    goto/16 :goto_0

    .line 624
    :pswitch_43
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 629
    goto/16 :goto_0

    .line 614
    :pswitch_44
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 616
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsPaniInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V

    .line 619
    goto/16 :goto_0

    .line 604
    :pswitch_45
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 606
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsCurrentCallsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallVoLTE;)V

    .line 609
    goto/16 :goto_0

    .line 594
    :pswitch_46
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getImsBearerStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 599
    goto/16 :goto_0

    .line 584
    :pswitch_47
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 589
    goto/16 :goto_0

    .line 572
    :pswitch_48
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;II)V

    .line 579
    goto/16 :goto_0

    .line 562
    :pswitch_49
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getClipResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V

    .line 567
    goto/16 :goto_0

    .line 550
    :pswitch_4a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V

    .line 557
    goto/16 :goto_0

    .line 540
    :pswitch_4b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 542
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->getCallForwardStatusUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V

    .line 545
    goto/16 :goto_0

    .line 532
    :pswitch_4c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->explicitCallTransferResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 535
    goto/16 :goto_0

    .line 524
    :pswitch_4d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->enableWiFiParamReportResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 527
    goto/16 :goto_0

    .line 516
    :pswitch_4e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->enableLocalHoldResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 519
    goto/16 :goto_0

    .line 508
    :pswitch_4f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->enableImsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 511
    goto/16 :goto_0

    .line 500
    :pswitch_50
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->emergencyDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 503
    goto/16 :goto_0

    .line 492
    :pswitch_51
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->emergencyDialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 495
    goto/16 :goto_0

    .line 484
    :pswitch_52
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->dialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 487
    goto/16 :goto_0

    .line 476
    :pswitch_53
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->dialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 479
    goto/16 :goto_0

    .line 468
    :pswitch_54
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->conferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 471
    goto/16 :goto_0

    .line 460
    :pswitch_55
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->closeDialogResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 463
    goto/16 :goto_0

    .line 452
    :pswitch_56
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->callMediaChangeRequestTimeOutResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 455
    goto/16 :goto_0

    .line 442
    :pswitch_57
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 444
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->bootstrapAuthenticationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V

    .line 447
    goto/16 :goto_0

    .line 434
    :pswitch_58
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->acceptCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 437
    goto :goto_0

    .line 426
    :pswitch_59
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsSilenceSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 429
    goto :goto_0

    .line 418
    :pswitch_5a
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsMuteSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 421
    goto :goto_0

    .line 410
    :pswitch_5b
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsInitialGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 413
    goto :goto_0

    .line 402
    :pswitch_5c
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsHoldSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 405
    goto :goto_0

    .line 394
    :pswitch_5d
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsHandoverResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 397
    goto :goto_0

    .line 386
    :pswitch_5e
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsEnableLocalConferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 389
    goto :goto_0

    .line 378
    :pswitch_5f
    sget-object p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->ImsAddGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 381
    nop

    .line 1216
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
