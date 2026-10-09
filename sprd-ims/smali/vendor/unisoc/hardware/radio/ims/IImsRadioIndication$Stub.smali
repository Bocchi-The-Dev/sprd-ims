.class public abstract Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_IMSHandoverStateChangedInd:I = 0x1

.field static final TRANSACTION_ImsBearerEstablished:I = 0x2

.field static final TRANSACTION_ImsCallStateChanged:I = 0x3

.field static final TRANSACTION_ImsCallTextInfoInd:I = 0x27

.field static final TRANSACTION_ImsConfigurationChangedInd:I = 0x4

.field static final TRANSACTION_ImsCsfbVendorCauseInd:I = 0x5

.field static final TRANSACTION_ImsErrorCauseInd:I = 0x6

.field static final TRANSACTION_ImsHandoverRequestInd:I = 0x7

.field static final TRANSACTION_ImsHandoverStatusChanged:I = 0x8

.field static final TRANSACTION_ImsNetworkInfoChanged:I = 0x9

.field static final TRANSACTION_ImsNetworkStateChanged:I = 0xa

.field static final TRANSACTION_ImsNewSmsStatusReportInd:I = 0xb

.field static final TRANSACTION_ImsRegisterAddressChanged:I = 0xc

.field static final TRANSACTION_ImsWifiParamInd:I = 0xd

.field static final TRANSACTION_RttCPSCapabilityChangeInd:I = 0xe

.field static final TRANSACTION_RttMessageReceived:I = 0xf

.field static final TRANSACTION_airPlaneModeExitRequestInd:I = 0x10

.field static final TRANSACTION_callStateChanged:I = 0x11

.field static final TRANSACTION_ctccAutoSwitchInd:I = 0x25

.field static final TRANSACTION_earlyMediaInd:I = 0x12

.field static final TRANSACTION_featureTagRegistrationChangedInd:I = 0x13

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_holdToneInd:I = 0x24

.field static final TRANSACTION_notifyCapabilitiesChangedInd:I = 0x14

.field static final TRANSACTION_onImsUssd:I = 0x15

.field static final TRANSACTION_onRemoteCapabilitiesDemandInd:I = 0x16

.field static final TRANSACTION_onResourceTerminatedInd:I = 0x17

.field static final TRANSACTION_onTerminatedInd:I = 0x18

.field static final TRANSACTION_radioStateChanged:I = 0x19

.field static final TRANSACTION_receiveSipMessageInd:I = 0x1a

.field static final TRANSACTION_sendSipMessageResultInd:I = 0x1b

.field static final TRANSACTION_simMgrSimStatusChangedInd:I = 0x1c

.field static final TRANSACTION_simRefresh:I = 0x1d

.field static final TRANSACTION_srvccStateNotify:I = 0x1e

.field static final TRANSACTION_subscriberAssociatedUriChangedInd:I = 0x26

.field static final TRANSACTION_suppSvcNotify:I = 0x1f

.field static final TRANSACTION_videoQualityInd:I = 0x20

.field static final TRANSACTION_voWifiAttachStateChangedInd:I = 0x21

.field static final TRANSACTION_voWifiEmergencyAttachStateChangedInd:I = 0x22

.field static final TRANSACTION_volteEmergencyBearerStateChangedInd:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->markVintfStability()V

    .line 155
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;
    .locals 2

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;

    if-eqz v1, :cond_1

    .line 168
    check-cast v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;

    return-object v0

    .line 170
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 174
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 179
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 186
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 191
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return v1

    .line 197
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v1

    .line 595
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsCallTextInfoInd(IIIILjava/lang/String;)V

    .line 606
    goto/16 :goto_0

    .line 585
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->subscriberAssociatedUriChangedInd(I[Ljava/lang/String;)V

    .line 590
    goto/16 :goto_0

    .line 575
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ctccAutoSwitchInd(II)V

    .line 580
    goto/16 :goto_0

    .line 565
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->holdToneInd(II)V

    .line 570
    goto/16 :goto_0

    .line 555
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->volteEmergencyBearerStateChangedInd(II)V

    .line 560
    goto/16 :goto_0

    .line 545
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->voWifiEmergencyAttachStateChangedInd(II)V

    .line 550
    goto/16 :goto_0

    .line 535
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->voWifiAttachStateChangedInd(II)V

    .line 540
    goto/16 :goto_0

    .line 525
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->videoQualityInd(I[I)V

    .line 530
    goto/16 :goto_0

    .line 515
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 517
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->suppSvcNotify(ILvendor/unisoc/hardware/radio/ims/SuppSvcNotification;)V

    .line 520
    goto/16 :goto_0

    .line 505
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 510
    goto/16 :goto_0

    .line 495
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 497
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/SimRefreshResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/SimRefreshResult;

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->simRefresh(ILvendor/unisoc/hardware/radio/ims/SimRefreshResult;)V

    .line 500
    goto/16 :goto_0

    .line 485
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->simMgrSimStatusChangedInd(II)V

    .line 490
    goto/16 :goto_0

    .line 471
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->sendSipMessageResultInd(IILjava/lang/String;I)V

    .line 480
    goto/16 :goto_0

    .line 461
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 463
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->receiveSipMessageInd(ILvendor/unisoc/hardware/radio/ims/RcsSipMessage;)V

    .line 466
    goto/16 :goto_0

    .line 451
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 456
    goto/16 :goto_0

    .line 439
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1, p3, v2, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->onTerminatedInd(ILjava/lang/String;J)V

    .line 446
    goto/16 :goto_0

    .line 429
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/TerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/unisoc/hardware/radio/ims/TerminatedReason;

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->onResourceTerminatedInd(I[Lvendor/unisoc/hardware/radio/ims/TerminatedReason;)V

    .line 434
    goto/16 :goto_0

    .line 417
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->onRemoteCapabilitiesDemandInd(ILjava/lang/String;[Ljava/lang/String;)V

    .line 424
    goto/16 :goto_0

    .line 405
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->onImsUssd(IILjava/lang/String;)V

    .line 412
    goto/16 :goto_0

    .line 395
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->notifyCapabilitiesChangedInd(I[Ljava/lang/String;)V

    .line 400
    goto/16 :goto_0

    .line 385
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 387
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->featureTagRegistrationChangedInd(I[Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;)V

    .line 390
    goto/16 :goto_0

    .line 375
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->earlyMediaInd(II)V

    .line 380
    goto/16 :goto_0

    .line 367
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 370
    goto/16 :goto_0

    .line 359
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->airPlaneModeExitRequestInd(I)V

    .line 362
    goto/16 :goto_0

    .line 349
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->RttMessageReceived(I[B)V

    .line 354
    goto/16 :goto_0

    .line 337
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->RttCPSCapabilityChangeInd(III)V

    .line 344
    goto/16 :goto_0

    .line 327
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsWifiParamInd(I[I)V

    .line 332
    goto/16 :goto_0

    .line 317
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsRegisterAddressChanged(I[Ljava/lang/String;)V

    .line 322
    goto/16 :goto_0

    .line 307
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsNewSmsStatusReportInd(I[B)V

    .line 312
    goto/16 :goto_0

    .line 297
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsNetworkStateChanged(II)V

    .line 302
    goto/16 :goto_0

    .line 287
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 289
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsNetworkInfoChanged(ILvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V

    .line 292
    goto/16 :goto_0

    .line 277
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsHandoverStatusChanged(II)V

    .line 282
    goto/16 :goto_0

    .line 267
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsHandoverRequestInd(II)V

    .line 272
    goto :goto_0

    .line 257
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsErrorCauseInd(ILvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;)V

    .line 262
    goto :goto_0

    .line 247
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsCsfbVendorCauseInd(ILjava/lang/String;)V

    .line 252
    goto :goto_0

    .line 237
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 239
    sget-object p3, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsConfigurationChangedInd(ILvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;)V

    .line 242
    goto :goto_0

    .line 229
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsCallStateChanged(I)V

    .line 232
    goto :goto_0

    .line 219
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->ImsBearerEstablished(II)V

    .line 224
    goto :goto_0

    .line 207
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;->IMSHandoverStateChangedInd(III)V

    .line 214
    nop

    .line 613
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
