.class public abstract Lcom/android/ims/internal/IVoWifiCall$Stub;
.super Landroid/os/Binder;
.source "IVoWifiCall.java"

# interfaces
.implements Lcom/android/ims/internal/IVoWifiCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IVoWifiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cameraAttach:I = 0x1e

.field static final blacklist TRANSACTION_cameraDetach:I = 0x1f

.field static final blacklist TRANSACTION_captureStart:I = 0x22

.field static final blacklist TRANSACTION_captureStop:I = 0x23

.field static final blacklist TRANSACTION_captureStopAll:I = 0x24

.field static final blacklist TRANSACTION_confAcceptInvite:I = 0x15

.field static final blacklist TRANSACTION_confAddMembers:I = 0x14

.field static final blacklist TRANSACTION_confCall:I = 0xf

.field static final blacklist TRANSACTION_confDtmf:I = 0x1d

.field static final blacklist TRANSACTION_confHold:I = 0x12

.field static final blacklist TRANSACTION_confInit:I = 0x10

.field static final blacklist TRANSACTION_confKickMembers:I = 0x17

.field static final blacklist TRANSACTION_confRelease:I = 0x1a

.field static final blacklist TRANSACTION_confResume:I = 0x13

.field static final blacklist TRANSACTION_confSetLocalImageForTrans:I = 0x19

.field static final blacklist TRANSACTION_confSetMute:I = 0x18

.field static final blacklist TRANSACTION_confSetup:I = 0x11

.field static final blacklist TRANSACTION_confTerm:I = 0x16

.field static final blacklist TRANSACTION_confUpdate:I = 0x1b

.field static final blacklist TRANSACTION_confUpdateSRVCCResult:I = 0x1c

.field static final blacklist TRANSACTION_getDefaultVideoLevel:I = 0x2c

.field static final blacklist TRANSACTION_getMediaJitter:I = 0x30

.field static final blacklist TRANSACTION_getMediaLostRatio:I = 0x2f

.field static final blacklist TRANSACTION_getMediaRtt:I = 0x31

.field static final blacklist TRANSACTION_localRenderAdd:I = 0x28

.field static final blacklist TRANSACTION_localRenderRemove:I = 0x2a

.field static final blacklist TRANSACTION_localRenderRotate:I = 0x26

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_remoteRenderAdd:I = 0x27

.field static final blacklist TRANSACTION_remoteRenderRemove:I = 0x29

.field static final blacklist TRANSACTION_remoteRenderRotate:I = 0x25

.field static final blacklist TRANSACTION_sendSessionModifyRequest:I = 0x2d

.field static final blacklist TRANSACTION_sendSessionModifyResponse:I = 0x2e

.field static final blacklist TRANSACTION_sendUSSDMessage:I = 0x32

.field static final blacklist TRANSACTION_sessAnswer:I = 0xb

.field static final blacklist TRANSACTION_sessCall:I = 0x5

.field static final blacklist TRANSACTION_sessDtmf:I = 0xa

.field static final blacklist TRANSACTION_sessHold:I = 0x8

.field static final blacklist TRANSACTION_sessRelease:I = 0xd

.field static final blacklist TRANSACTION_sessResume:I = 0x9

.field static final blacklist TRANSACTION_sessSetMicMute:I = 0x6

.field static final blacklist TRANSACTION_sessTerm:I = 0x7

.field static final blacklist TRANSACTION_sessUpdate:I = 0xc

.field static final blacklist TRANSACTION_sessUpdateSRVCCResult:I = 0xe

.field static final blacklist TRANSACTION_setDefaultVideoLevel:I = 0x2b

.field static final blacklist TRANSACTION_startAudioStream:I = 0x3

.field static final blacklist TRANSACTION_stopAudioStream:I = 0x4

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2

.field static final blacklist TRANSACTION_updateCurCallSlot:I = 0x34

.field static final blacklist TRANSACTION_updateDataRouterState:I = 0x33

.field static final blacklist TRANSACTION_videoStart:I = 0x20

.field static final blacklist TRANSACTION_videoStop:I = 0x21


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 370
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 371
    const-string v0, "com.android.ims.internal.IVoWifiCall"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCall;
    .locals 2

    .line 379
    if-nez p0, :cond_0

    .line 380
    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_0
    const-string v0, "com.android.ims.internal.IVoWifiCall"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v1, :cond_1

    .line 384
    check-cast v0, Lcom/android/ims/internal/IVoWifiCall;

    return-object v0

    .line 386
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IVoWifiCall$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 390
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    nop

    .line 395
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IVoWifiCall"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 396
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 406
    packed-switch p1, :pswitch_data_1

    .line 1022
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 402
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    return v0

    .line 1013
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->updateCurCallSlot(I)I

    move-result p1

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    goto/16 :goto_0

    .line 1001
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->updateDataRouterState(II)I

    move-result p1

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    goto/16 :goto_0

    .line 989
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sendUSSDMessage(ILjava/lang/String;)I

    move-result p1

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    goto/16 :goto_0

    .line 975
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->getMediaRtt(IZZ)I

    move-result p1

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    goto/16 :goto_0

    .line 961
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->getMediaJitter(IZZ)I

    move-result p1

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    goto/16 :goto_0

    .line 947
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->getMediaLostRatio(IZZ)I

    move-result p1

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    goto/16 :goto_0

    .line 935
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sendSessionModifyResponse(II)I

    move-result p1

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    goto/16 :goto_0

    .line 923
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sendSessionModifyRequest(II)I

    move-result p1

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    goto/16 :goto_0

    .line 915
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->getDefaultVideoLevel()I

    move-result p1

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    goto/16 :goto_0

    .line 906
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->setDefaultVideoLevel(I)I

    move-result p1

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    goto/16 :goto_0

    .line 894
    :pswitch_b
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->localRenderRemove(Landroid/view/Surface;Z)I

    move-result p1

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    goto/16 :goto_0

    .line 880
    :pswitch_c
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->remoteRenderRemove(Landroid/view/Surface;ZI)I

    move-result p1

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    goto/16 :goto_0

    .line 868
    :pswitch_d
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->localRenderAdd(Landroid/view/Surface;Z)I

    move-result p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    goto/16 :goto_0

    .line 854
    :pswitch_e
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->remoteRenderAdd(Landroid/view/Surface;ZI)I

    move-result p1

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    goto/16 :goto_0

    .line 840
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->localRenderRotate(ZII)I

    move-result p1

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    goto/16 :goto_0

    .line 826
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->remoteRenderRotate(ZII)I

    move-result p1

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    goto/16 :goto_0

    .line 818
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->captureStopAll()I

    move-result p1

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_0

    .line 809
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->captureStop(Z)I

    move-result p1

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    goto/16 :goto_0

    .line 793
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/ims/internal/IVoWifiCall$Stub;->captureStart(ZIII)I

    move-result p1

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    goto/16 :goto_0

    .line 781
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->videoStop(ZI)I

    move-result p1

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    goto/16 :goto_0

    .line 769
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->videoStart(ZI)I

    move-result p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    goto/16 :goto_0

    .line 757
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->cameraDetach(ZI)I

    move-result p1

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    goto/16 :goto_0

    .line 743
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->cameraAttach(ZIZ)I

    move-result p1

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    goto/16 :goto_0

    .line 731
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confDtmf(II)I

    move-result p1

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    goto/16 :goto_0

    .line 719
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confUpdateSRVCCResult(II)I

    move-result p1

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    goto/16 :goto_0

    .line 707
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confUpdate(II)I

    move-result p1

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    goto/16 :goto_0

    .line 697
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confRelease(I)I

    move-result p1

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    goto/16 :goto_0

    .line 683
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confSetLocalImageForTrans(ILjava/lang/String;Z)I

    move-result p1

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    goto/16 :goto_0

    .line 671
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confSetMute(IZ)I

    move-result p1

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    goto/16 :goto_0

    .line 659
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confKickMembers(I[Ljava/lang/String;)I

    move-result p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    goto/16 :goto_0

    .line 647
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confTerm(II)I

    move-result p1

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    goto/16 :goto_0

    .line 637
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confAcceptInvite(I)I

    move-result p1

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    goto/16 :goto_0

    .line 623
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confAddMembers(I[Ljava/lang/String;[I)I

    move-result p1

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    goto/16 :goto_0

    .line 613
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confResume(I)I

    move-result p1

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    goto/16 :goto_0

    .line 603
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confHold(I)I

    move-result p1

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    goto/16 :goto_0

    .line 591
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confSetup(ILjava/lang/String;)I

    move-result p1

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    goto/16 :goto_0

    .line 581
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confInit(Z)I

    move-result p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    goto/16 :goto_0

    .line 567
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->confCall([Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    goto/16 :goto_0

    .line 555
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessUpdateSRVCCResult(II)I

    move-result p1

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    goto/16 :goto_0

    .line 545
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessRelease(I)I

    move-result p1

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    goto/16 :goto_0

    .line 533
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessUpdate(II)I

    move-result p1

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    goto/16 :goto_0

    .line 517
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessAnswer(ILjava/lang/String;ZZ)I

    move-result p1

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    goto/16 :goto_0

    .line 505
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessDtmf(II)I

    move-result p1

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    goto/16 :goto_0

    .line 495
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessResume(I)I

    move-result p1

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    goto/16 :goto_0

    .line 485
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessHold(I)I

    move-result p1

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    goto/16 :goto_0

    .line 473
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessTerm(II)I

    move-result p1

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    goto :goto_0

    .line 461
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessSetMicMute(IZ)I

    move-result p1

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    goto :goto_0

    .line 441
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/ims/internal/IVoWifiCall$Stub;->sessCall(Ljava/lang/String;Ljava/lang/String;ZZZZ)I

    move-result p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    goto :goto_0

    .line 434
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->stopAudioStream()V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto :goto_0

    .line 428
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->startAudioStream()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto :goto_0

    .line 420
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCallCallback;

    move-result-object p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->unregisterCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto :goto_0

    .line 411
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCallCallback;

    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiCall$Stub;->registerCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    nop

    .line 1025
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
