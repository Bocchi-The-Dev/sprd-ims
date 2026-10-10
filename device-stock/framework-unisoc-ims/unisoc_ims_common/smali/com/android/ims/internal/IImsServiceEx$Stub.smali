.class public abstract Lcom/android/ims/internal/IImsServiceEx$Stub;
.super Landroid/os/Binder;
.source "IImsServiceEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addImsEventListener:I = 0x27

.field static final blacklist TRANSACTION_addImsPdnStateListener:I = 0x1e

.field static final blacklist TRANSACTION_cancelCurrentRequest:I = 0xb

.field static final blacklist TRANSACTION_getAliveCallJitter:I = 0x15

.field static final blacklist TRANSACTION_getAliveCallLose:I = 0x14

.field static final blacklist TRANSACTION_getAliveCallRtt:I = 0x16

.field static final blacklist TRANSACTION_getCLIRStatus:I = 0x20

.field static final blacklist TRANSACTION_getCallType:I = 0x19

.field static final blacklist TRANSACTION_getCallWaitingStatus:I = 0x25

.field static final blacklist TRANSACTION_getCurLocalAddress:I = 0x12

.field static final blacklist TRANSACTION_getCurPcscfAddress:I = 0xf

.field static final blacklist TRANSACTION_getCurrentImsFeature:I = 0x4

.field static final blacklist TRANSACTION_getCurrentImsFeatureForPhone:I = 0x5

.field static final blacklist TRANSACTION_getCurrentImsVideoState:I = 0x13

.field static final blacklist TRANSACTION_getImsCNIInfor:I = 0x26

.field static final blacklist TRANSACTION_getImsPcscfAddress:I = 0x1b

.field static final blacklist TRANSACTION_getImsRegAddress:I = 0x8

.field static final blacklist TRANSACTION_getPAU:I = 0x1c

.field static final blacklist TRANSACTION_getVolteRegisterState:I = 0x17

.field static final blacklist TRANSACTION_getVolteRegisterStateForPhone:I = 0x18

.field static final blacklist TRANSACTION_isSupportMobike:I = 0x24

.field static final blacklist TRANSACTION_isSupportVoWifiMms:I = 0x37

.field static final blacklist TRANSACTION_isVoWifiAttached:I = 0x6

.field static final blacklist TRANSACTION_notifyImsEvent:I = 0x29

.field static final blacklist TRANSACTION_notifyMmsTranportStateChange:I = 0x36

.field static final blacklist TRANSACTION_notifyNetworkUnavailable:I = 0x3

.field static final blacklist TRANSACTION_notifySrvccCallInfos:I = 0x1a

.field static final blacklist TRANSACTION_notifyVideoCapabilityChange:I = 0x22

.field static final blacklist TRANSACTION_notifyVoWiFiAttachState:I = 0x30

.field static final blacklist TRANSACTION_notifyVoWiFiAvailable:I = 0x2c

.field static final blacklist TRANSACTION_notifyVoWiFiUnavailable:I = 0x2d

.field static final blacklist TRANSACTION_onAuthenticationRequest:I = 0x31

.field static final blacklist TRANSACTION_registerIwlanAttachActionListener:I = 0x32

.field static final blacklist TRANSACTION_registerIwlanMmsActionListener:I = 0x34

.field static final blacklist TRANSACTION_registerforImsRegisterStateChanged:I = 0xc

.field static final blacklist TRANSACTION_registerforVoWiFiAttachStateChanged:I = 0x2e

.field static final blacklist TRANSACTION_registerforVoWiFiAvailabilityChanged:I = 0x2a

.field static final blacklist TRANSACTION_releaseVoWifiResource:I = 0x9

.field static final blacklist TRANSACTION_removeImsEventListener:I = 0x28

.field static final blacklist TRANSACTION_removeImsPdnStateListener:I = 0x1f

.field static final blacklist TRANSACTION_setImsServiceListener:I = 0x7

.field static final blacklist TRANSACTION_setMonitorPeriodForNoData:I = 0x10

.field static final blacklist TRANSACTION_setVoWifiUnavailable:I = 0xa

.field static final blacklist TRANSACTION_setVowifiRegister:I = 0x1d

.field static final blacklist TRANSACTION_showVowifiNotification:I = 0x11

.field static final blacklist TRANSACTION_startHandover:I = 0x2

.field static final blacklist TRANSACTION_startMobike:I = 0x23

.field static final blacklist TRANSACTION_switchImsFeature:I = 0x1

.field static final blacklist TRANSACTION_terminateCalls:I = 0xe

.field static final blacklist TRANSACTION_unregisterIwlanAttachActionListener:I = 0x33

.field static final blacklist TRANSACTION_unregisterIwlanMmsActionListener:I = 0x35

.field static final blacklist TRANSACTION_unregisterVoWiFiAttachStateChanged:I = 0x2f

.field static final blacklist TRANSACTION_unregisterVoWiFiAvailabilityChanged:I = 0x2b

.field static final blacklist TRANSACTION_unregisterforImsRegisterStateChanged:I = 0xd

.field static final blacklist TRANSACTION_updateCLIRStatus:I = 0x21


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 352
    const-string v0, "com.android.ims.internal.IImsServiceEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceEx;
    .locals 2

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 p0, 0x0

    return-object p0

    .line 363
    :cond_0
    const-string v0, "com.android.ims.internal.IImsServiceEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceEx;

    if-eqz v1, :cond_1

    .line 365
    check-cast v0, Lcom/android/ims/internal/IImsServiceEx;

    return-object v0

    .line 367
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 371
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    nop

    .line 376
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IImsServiceEx"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 377
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 387
    packed-switch p1, :pswitch_data_1

    .line 875
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 383
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    return v0

    .line 866
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->isSupportVoWifiMms(I)Z

    move-result p1

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 871
    goto/16 :goto_0

    .line 855
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyMmsTranportStateChange(IZ)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_0

    .line 846
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IIwlanMmsActionListener;

    move-result-object p1

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_0

    .line 837
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IIwlanMmsActionListener;

    move-result-object p1

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    goto/16 :goto_0

    .line 828
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IIwlanAttachActionListener;

    move-result-object p1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->unregisterIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_0

    .line 819
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IIwlanAttachActionListener;

    move-result-object p1

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->registerIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_0

    .line 799
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/ims/internal/IImsServiceEx$Stub;->onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;

    move-result-object p1

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 814
    goto/16 :goto_0

    .line 788
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyVoWiFiAttachState(II)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_0

    .line 779
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWiFiAttachCallback;

    move-result-object p1

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_0

    .line 770
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWiFiAttachCallback;

    move-result-object p1

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_0

    .line 761
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyVoWiFiUnavailable(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_0

    .line 752
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyVoWiFiAvailable(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_0

    .line 743
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;

    move-result-object p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_0

    .line 734
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;

    move-result-object p1

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_0

    .line 721
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 725
    sget-object v1, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_0

    .line 712
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsEventListener;

    move-result-object p1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->removeImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_0

    .line 703
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsEventListener;

    move-result-object p1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->addImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto/16 :goto_0

    .line 696
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getImsCNIInfor()V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_0

    .line 688
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCallWaitingStatus(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_0

    .line 680
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->isSupportMobike()Z

    move-result p1

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    goto/16 :goto_0

    .line 674
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->startMobike()V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    goto/16 :goto_0

    .line 668
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyVideoCapabilityChange()V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 659
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->updateCLIRStatus(I)I

    move-result p1

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    goto/16 :goto_0

    .line 649
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCLIRStatus(I)I

    move-result p1

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    goto/16 :goto_0

    .line 638
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/ims/internal/IImsPdnStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsPdnStateListener;

    move-result-object p4

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_0

    .line 627
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/ims/internal/IImsPdnStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsPdnStateListener;

    move-result-object p4

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_0

    .line 618
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->setVowifiRegister(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_0

    .line 608
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getPAU(I)Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    goto/16 :goto_0

    .line 600
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getImsPcscfAddress()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    goto/16 :goto_0

    .line 592
    :pswitch_1e
    sget-object p1, Lcom/android/ims/internal/ImsSrvccCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifySrvccCallInfos(Ljava/util/List;)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    goto/16 :goto_0

    .line 584
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCallType()I

    move-result p1

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    goto/16 :goto_0

    .line 575
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getVolteRegisterStateForPhone(I)I

    move-result p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    goto/16 :goto_0

    .line 567
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getVolteRegisterState()I

    move-result p1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    goto/16 :goto_0

    .line 560
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getAliveCallRtt()I

    move-result p1

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    goto/16 :goto_0

    .line 553
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getAliveCallJitter()I

    move-result p1

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    goto/16 :goto_0

    .line 546
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getAliveCallLose()I

    move-result p1

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    goto/16 :goto_0

    .line 539
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCurrentImsVideoState()I

    move-result p1

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    goto/16 :goto_0

    .line 532
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCurLocalAddress()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    goto/16 :goto_0

    .line 526
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->showVowifiNotification()V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_0

    .line 518
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->setMonitorPeriodForNoData(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_0

    .line 510
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCurPcscfAddress()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    goto/16 :goto_0

    .line 502
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->terminateCalls(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    goto/16 :goto_0

    .line 493
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsRegisterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegisterListener;

    move-result-object p1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto/16 :goto_0

    .line 484
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsRegisterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegisterListener;

    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto/16 :goto_0

    .line 476
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->cancelCurrentRequest()I

    move-result p1

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    goto/16 :goto_0

    .line 465
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceEx$Stub;->setVoWifiUnavailable(IZ)I

    move-result p1

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    goto/16 :goto_0

    .line 457
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->releaseVoWifiResource()I

    move-result p1

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    goto/16 :goto_0

    .line 450
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getImsRegAddress()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    goto :goto_0

    .line 442
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto :goto_0

    .line 434
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->isVoWifiAttached()Z

    move-result p1

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 437
    goto :goto_0

    .line 425
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCurrentImsFeatureForPhone(I)I

    move-result p1

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    goto :goto_0

    .line 417
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->getCurrentImsFeature()I

    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    goto :goto_0

    .line 411
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->notifyNetworkUnavailable()V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto :goto_0

    .line 402
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->startHandover(I)I

    move-result p1

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    goto :goto_0

    .line 392
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceEx$Stub;->switchImsFeature(I)I

    move-result p1

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    nop

    .line 878
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
