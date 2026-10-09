.class public abstract Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;
.super Landroid/os/Binder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_ImsAddGroupCall:I = 0x1

.field static final TRANSACTION_ImsEnableLocalConference:I = 0x2

.field static final TRANSACTION_ImsHandover:I = 0x3

.field static final TRANSACTION_ImsHoldSingleCall:I = 0x4

.field static final TRANSACTION_ImsInitialGroupCall:I = 0x5

.field static final TRANSACTION_ImsMuteSingleCall:I = 0x6

.field static final TRANSACTION_ImsSilenceSingleCall:I = 0x7

.field static final TRANSACTION_acceptCall:I = 0x8

.field static final TRANSACTION_bootstrapAuthentication:I = 0x9

.field static final TRANSACTION_callMediaChangeRequestTimeOut:I = 0xa

.field static final TRANSACTION_closeDialog:I = 0xb

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_dial:I = 0xd

.field static final TRANSACTION_dialRTT:I = 0xe

.field static final TRANSACTION_emergencyDial:I = 0xf

.field static final TRANSACTION_emergencyDialRTT:I = 0x10

.field static final TRANSACTION_enableIms:I = 0x11

.field static final TRANSACTION_enableLocalHold:I = 0x12

.field static final TRANSACTION_enableWiFiParamReport:I = 0x13

.field static final TRANSACTION_explicitCallTransfer:I = 0x14

.field static final TRANSACTION_getCallForwardStatusUri:I = 0x15

.field static final TRANSACTION_getCallWaiting:I = 0x16

.field static final TRANSACTION_getClip:I = 0x17

.field static final TRANSACTION_getClir:I = 0x18

.field static final TRANSACTION_getFacilityLockForApp:I = 0x19

.field static final TRANSACTION_getImsBearerState:I = 0x1a

.field static final TRANSACTION_getImsCurrentCalls:I = 0x1b

.field static final TRANSACTION_getImsPaniInfo:I = 0x1c

.field static final TRANSACTION_getImsPcscfAddress:I = 0x1d

.field static final TRANSACTION_getImsRegAddress:I = 0x1e

.field static final TRANSACTION_getImsRegistrationState:I = 0x1f

.field static final TRANSACTION_getImsStackVersion:I = 0x20

.field static final TRANSACTION_getImsUserAgent:I = 0x21

.field static final TRANSACTION_getImsVoiceCallAvailability:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLastCallFailCause:I = 0x23

.field static final TRANSACTION_getPAU:I = 0x24

.field static final TRANSACTION_getRTTAllowedPLMN:I = 0x25

.field static final TRANSACTION_getSmsBearer:I = 0x26

.field static final TRANSACTION_getSpecialRatcap:I = 0x27

.field static final TRANSACTION_getSrvccCapbility:I = 0x28

.field static final TRANSACTION_getVideoResolution:I = 0x29

.field static final TRANSACTION_getVoLTEAllowedPLMN:I = 0x2a

.field static final TRANSACTION_hangup:I = 0x2b

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0x2c

.field static final TRANSACTION_hangupWaitingOrBackground:I = 0x2d

.field static final TRANSACTION_holdActiveCall:I = 0x2e

.field static final TRANSACTION_initISIM:I = 0x2f

.field static final TRANSACTION_notifyDataRouterUpdate:I = 0x30

.field static final TRANSACTION_notifyHandoverCallInfo:I = 0x31

.field static final TRANSACTION_notifyImsCallEnd:I = 0x32

.field static final TRANSACTION_notifyImsHandoverStatusUpdate:I = 0x33

.field static final TRANSACTION_notifyImsNetworkInfoChanged:I = 0x34

.field static final TRANSACTION_notifyVoWifiCallStateChanged:I = 0x35

.field static final TRANSACTION_notifyVoWifiEnable:I = 0x36

.field static final TRANSACTION_notifyVoWifiWhiteList:I = 0x37

.field static final TRANSACTION_publishCapabilities:I = 0x38

.field static final TRANSACTION_queryColp:I = 0x39

.field static final TRANSACTION_queryColr:I = 0x3a

.field static final TRANSACTION_rejectCall:I = 0x3b

.field static final TRANSACTION_requestVolteCallMediaChange:I = 0x3c

.field static final TRANSACTION_responseAcknowledgement:I = 0x3d

.field static final TRANSACTION_responseVolteCallMediaChange:I = 0x3e

.field static final TRANSACTION_sendDtmf:I = 0x3f

.field static final TRANSACTION_sendOptionsCapabilityRequest:I = 0x40

.field static final TRANSACTION_sendRTTMessage:I = 0x41

.field static final TRANSACTION_sendSipMessage:I = 0x42

.field static final TRANSACTION_sendUssd:I = 0x43

.field static final TRANSACTION_separateConnection:I = 0x44

.field static final TRANSACTION_setBarringPassword:I = 0x45

.field static final TRANSACTION_setCallForwardUri:I = 0x46

.field static final TRANSACTION_setCallWaiting:I = 0x47

.field static final TRANSACTION_setCarrierImsUserAgent:I = 0x48

.field static final TRANSACTION_setClir:I = 0x49

.field static final TRANSACTION_setFacilityLockForApp:I = 0x4a

.field static final TRANSACTION_setImsInitialAttachApn:I = 0x4b

.field static final TRANSACTION_setImsPcscfAddress:I = 0x4c

.field static final TRANSACTION_setImsRegAddress:I = 0x4d

.field static final TRANSACTION_setImsResponseFunctions:I = 0x4e

.field static final TRANSACTION_setImsSmscAddress:I = 0x4f

.field static final TRANSACTION_setImsVoiceCallAvailability:I = 0x50

.field static final TRANSACTION_setLocalTone:I = 0x62

.field static final TRANSACTION_setMute:I = 0x51

.field static final TRANSACTION_setPAU:I = 0x52

.field static final TRANSACTION_setRTTChannelEnable:I = 0x53

.field static final TRANSACTION_setRTTEnable:I = 0x54

.field static final TRANSACTION_setSmsBearer:I = 0x55

.field static final TRANSACTION_setUceCapabilities:I = 0x56

.field static final TRANSACTION_setVideoResolution:I = 0x57

.field static final TRANSACTION_startDtmf:I = 0x58

.field static final TRANSACTION_stopDtmf:I = 0x59

.field static final TRANSACTION_subscribeForCapabilities:I = 0x5a

.field static final TRANSACTION_switchWaitingOrHoldingAndActive:I = 0x5b

.field static final TRANSACTION_triggerFullNetworkRegistration:I = 0x5c

.field static final TRANSACTION_triggerSipDelegateDeregistration:I = 0x5d

.field static final TRANSACTION_updateCLIP:I = 0x5e

.field static final TRANSACTION_updateSipDelegateRegistration:I = 0x5f

.field static final TRANSACTION_videoPhoneDial:I = 0x60

.field static final TRANSACTION_volteCallFallBackToVoice:I = 0x61


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 330
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 331
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 332
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadio;
    .locals 2

    .line 340
    if-nez p0, :cond_0

    .line 341
    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 345
    check-cast v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    return-object v0

    .line 347
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 351
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    sget-object v4, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 356
    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const v5, 0xffffff

    if-gt p1, v5, :cond_0

    .line 357
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 379
    packed-switch p1, :pswitch_data_0

    .line 1361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 363
    :sswitch_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    return v8

    .line 368
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v8

    .line 374
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    return v8

    .line 1352
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setLocalTone(II)V

    .line 1357
    goto/16 :goto_0

    .line 1342
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->volteCallFallBackToVoice(II)V

    .line 1347
    goto/16 :goto_0

    .line 1332
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1334
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->videoPhoneDial(ILvendor/unisoc/hardware/radio/ims/VideoPhoneDial;)V

    .line 1337
    goto/16 :goto_0

    .line 1322
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->updateSipDelegateRegistration(I[Ljava/lang/String;)V

    .line 1327
    goto/16 :goto_0

    .line 1312
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->updateCLIP(II)V

    .line 1317
    goto/16 :goto_0

    .line 1304
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->triggerSipDelegateDeregistration(I)V

    .line 1307
    goto/16 :goto_0

    .line 1292
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->triggerFullNetworkRegistration(IILjava/lang/String;)V

    .line 1299
    goto/16 :goto_0

    .line 1284
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 1287
    goto/16 :goto_0

    .line 1274
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->subscribeForCapabilities(I[Ljava/lang/String;)V

    .line 1279
    goto/16 :goto_0

    .line 1266
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    .line 1269
    goto/16 :goto_0

    .line 1256
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 1261
    goto/16 :goto_0

    .line 1246
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setVideoResolution(II)V

    .line 1251
    goto/16 :goto_0

    .line 1236
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1238
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;

    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setUceCapabilities(I[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;)V

    .line 1241
    goto/16 :goto_0

    .line 1226
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setSmsBearer(II)V

    .line 1231
    goto/16 :goto_0

    .line 1216
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setRTTEnable(II)V

    .line 1221
    goto/16 :goto_0

    .line 1206
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setRTTChannelEnable(II)V

    .line 1211
    goto/16 :goto_0

    .line 1196
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setPAU(ILjava/lang/String;)V

    .line 1201
    goto/16 :goto_0

    .line 1186
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setMute(IZ)V

    .line 1191
    goto/16 :goto_0

    .line 1176
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsVoiceCallAvailability(II)V

    .line 1181
    goto/16 :goto_0

    .line 1166
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsSmscAddress(ILjava/lang/String;)V

    .line 1171
    goto/16 :goto_0

    .line 1155
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;

    move-result-object v1

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;

    move-result-object v4

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v1, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsResponseFunctions(Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_0

    .line 1143
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsRegAddress(IILjava/lang/String;)V

    .line 1150
    goto/16 :goto_0

    .line 1133
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsPcscfAddress(ILjava/lang/String;)V

    .line 1138
    goto/16 :goto_0

    .line 1123
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/DataProfileInfo;

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setImsInitialAttachApn(ILvendor/unisoc/hardware/radio/ims/DataProfileInfo;)V

    .line 1128
    goto/16 :goto_0

    .line 1105
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 1118
    goto/16 :goto_0

    .line 1095
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setClir(II)V

    .line 1100
    goto/16 :goto_0

    .line 1085
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setCarrierImsUserAgent(ILjava/lang/String;)V

    .line 1090
    goto/16 :goto_0

    .line 1073
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(IZI)V

    .line 1080
    goto/16 :goto_0

    .line 1063
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setCallForwardUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V

    .line 1068
    goto/16 :goto_0

    .line 1049
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, v1, v3, v4, v5}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    goto/16 :goto_0

    .line 1039
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->separateConnection(II)V

    .line 1044
    goto/16 :goto_0

    .line 1029
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 1034
    goto/16 :goto_0

    .line 1019
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1021
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->sendSipMessage(ILvendor/unisoc/hardware/radio/ims/RcsSipMessage;)V

    .line 1024
    goto/16 :goto_0

    .line 1009
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->sendRTTMessage(ILjava/lang/String;)V

    .line 1014
    goto/16 :goto_0

    .line 997
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->sendOptionsCapabilityRequest(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1004
    goto/16 :goto_0

    .line 987
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 992
    goto/16 :goto_0

    .line 973
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1, v3, v4, v5}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->responseVolteCallMediaChange(IIZI)V

    .line 982
    goto/16 :goto_0

    .line 967
    :pswitch_25
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->responseAcknowledgement()V

    .line 968
    goto/16 :goto_0

    .line 956
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->requestVolteCallMediaChange(III)V

    .line 963
    goto/16 :goto_0

    .line 948
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->rejectCall(I)V

    .line 951
    goto/16 :goto_0

    .line 940
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->queryColr(I)V

    .line 943
    goto/16 :goto_0

    .line 932
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->queryColp(I)V

    .line 935
    goto/16 :goto_0

    .line 922
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->publishCapabilities(ILjava/lang/String;)V

    .line 927
    goto/16 :goto_0

    .line 912
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyVoWifiWhiteList(II)V

    .line 917
    goto/16 :goto_0

    .line 902
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyVoWifiEnable(IZ)V

    .line 907
    goto/16 :goto_0

    .line 892
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyVoWifiCallStateChanged(IZ)V

    .line 897
    goto/16 :goto_0

    .line 882
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 884
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyImsNetworkInfoChanged(ILvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V

    .line 887
    goto/16 :goto_0

    .line 872
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyImsHandoverStatusUpdate(II)V

    .line 877
    goto/16 :goto_0

    .line 862
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyImsCallEnd(II)V

    .line 867
    goto/16 :goto_0

    .line 852
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyHandoverCallInfo(ILjava/lang/String;)V

    .line 857
    goto/16 :goto_0

    .line 844
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->notifyDataRouterUpdate(I)V

    .line 847
    goto/16 :goto_0

    .line 836
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->initISIM(I)V

    .line 839
    goto/16 :goto_0

    .line 828
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->holdActiveCall(I)V

    .line 831
    goto/16 :goto_0

    .line 820
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 823
    goto/16 :goto_0

    .line 812
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 815
    goto/16 :goto_0

    .line 802
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->hangup(II)V

    .line 807
    goto/16 :goto_0

    .line 794
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getVoLTEAllowedPLMN(I)V

    .line 797
    goto/16 :goto_0

    .line 786
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getVideoResolution(I)V

    .line 789
    goto/16 :goto_0

    .line 778
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getSrvccCapbility(I)V

    .line 781
    goto/16 :goto_0

    .line 768
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getSpecialRatcap(II)V

    .line 773
    goto/16 :goto_0

    .line 760
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getSmsBearer(I)V

    .line 763
    goto/16 :goto_0

    .line 752
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getRTTAllowedPLMN(I)V

    .line 755
    goto/16 :goto_0

    .line 744
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getPAU(I)V

    .line 747
    goto/16 :goto_0

    .line 736
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getLastCallFailCause(I)V

    .line 739
    goto/16 :goto_0

    .line 728
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsVoiceCallAvailability(I)V

    .line 731
    goto/16 :goto_0

    .line 720
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsUserAgent(I)V

    .line 723
    goto/16 :goto_0

    .line 712
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsStackVersion(I)V

    .line 715
    goto/16 :goto_0

    .line 704
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 707
    goto/16 :goto_0

    .line 696
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsRegAddress(I)V

    .line 699
    goto/16 :goto_0

    .line 688
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsPcscfAddress(I)V

    .line 691
    goto/16 :goto_0

    .line 680
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsPaniInfo(I)V

    .line 683
    goto/16 :goto_0

    .line 672
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsCurrentCalls(I)V

    .line 675
    goto/16 :goto_0

    .line 664
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getImsBearerState(I)V

    .line 667
    goto/16 :goto_0

    .line 648
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    goto/16 :goto_0

    .line 640
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    .line 643
    goto/16 :goto_0

    .line 632
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    .line 635
    goto/16 :goto_0

    .line 622
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    .line 627
    goto/16 :goto_0

    .line 612
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 614
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->getCallForwardStatusUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V

    .line 617
    goto/16 :goto_0

    .line 604
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(I)V

    .line 607
    goto/16 :goto_0

    .line 594
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->enableWiFiParamReport(IZ)V

    .line 599
    goto/16 :goto_0

    .line 584
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->enableLocalHold(IZ)V

    .line 589
    goto/16 :goto_0

    .line 574
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->enableIms(IZ)V

    .line 579
    goto/16 :goto_0

    .line 554
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 556
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/Dial;

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->emergencyDialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V

    .line 569
    goto/16 :goto_0

    .line 534
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/Dial;

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V

    .line 549
    goto/16 :goto_0

    .line 524
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/Dial;

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->dialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;)V

    .line 529
    goto/16 :goto_0

    .line 514
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    sget-object v3, Lvendor/unisoc/hardware/radio/ims/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/Dial;

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/unisoc/hardware/radio/ims/Dial;)V

    .line 519
    goto/16 :goto_0

    .line 506
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    .line 509
    goto/16 :goto_0

    .line 496
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->closeDialog(ILjava/lang/String;)V

    .line 501
    goto/16 :goto_0

    .line 486
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->callMediaChangeRequestTimeOut(II)V

    .line 491
    goto/16 :goto_0

    .line 468
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    move-object v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->bootstrapAuthentication(IIILjava/lang/String;[BZ)V

    .line 481
    goto/16 :goto_0

    .line 460
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->acceptCall(I)V

    .line 463
    goto/16 :goto_0

    .line 448
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsSilenceSingleCall(IIZ)V

    .line 455
    goto :goto_0

    .line 436
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsMuteSingleCall(IIZ)V

    .line 443
    goto :goto_0

    .line 426
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsInitialGroupCall(ILjava/lang/String;)V

    .line 431
    goto :goto_0

    .line 414
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsHoldSingleCall(IIZ)V

    .line 421
    goto :goto_0

    .line 404
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsHandover(II)V

    .line 409
    goto :goto_0

    .line 394
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsEnableLocalConference(IZ)V

    .line 399
    goto :goto_0

    .line 384
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->ImsAddGroupCall(ILjava/lang/String;)V

    .line 389
    nop

    .line 1364
    :goto_0
    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_61
        :pswitch_60
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
