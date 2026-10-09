.class public final Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 382
    return-void
.end method


# virtual methods
.method public ImsAddGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 938
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 941
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 943
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x21

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 947
    nop

    .line 948
    return-void

    .line 946
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 947
    throw v0
.end method

.method public ImsEnableLocalConferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1066
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1069
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1071
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x29

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1072
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1075
    throw v0
.end method

.method public ImsHandoverResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 954
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 957
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 959
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 963
    nop

    .line 964
    return-void

    .line 962
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 963
    throw v0
.end method

.method public ImsHoldSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1018
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1021
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1023
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x26

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1027
    nop

    .line 1028
    return-void

    .line 1026
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1027
    throw v0
.end method

.method public ImsInitialGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 922
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 925
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 927
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 928
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 931
    nop

    .line 932
    return-void

    .line 930
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 931
    throw v0
.end method

.method public ImsMuteSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1034
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1037
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1039
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1043
    throw v0
.end method

.method public ImsSilenceSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1050
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1053
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1055
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x28

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1056
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1059
    nop

    .line 1060
    return-void

    .line 1058
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1059
    throw v0
.end method

.method public acceptCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 544
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 547
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 549
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 550
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 553
    throw v0
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 386
    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public callMediaChangeRequestTimeOutResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1408
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1411
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1413
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1414
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1417
    nop

    .line 1418
    return-void

    .line 1416
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1417
    throw v0
.end method

.method public conferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 528
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 531
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 533
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 537
    throw v0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 1806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1807
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1809
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1811
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1813
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1814
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1815
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1818
    nop

    .line 1819
    return-void

    .line 1817
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1818
    throw p2
.end method

.method public dialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1656
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1659
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1661
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1662
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1665
    nop

    .line 1666
    return-void

    .line 1664
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1665
    throw v0
.end method

.method public dialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 432
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 435
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 437
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 438
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 441
    throw v0
.end method

.method public emergencyDialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1672
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1675
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1677
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1678
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1681
    nop

    .line 1682
    return-void

    .line 1680
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1681
    throw v0
.end method

.method public emergencyDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 448
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 451
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 453
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 457
    throw v0
.end method

.method public enableImsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 857
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 860
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 862
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 863
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 866
    nop

    .line 867
    return-void

    .line 865
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 866
    throw v0
.end method

.method public enableLocalHoldResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1375
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1376
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1379
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1381
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1382
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1385
    nop

    .line 1386
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1385
    throw v0
.end method

.method public enableWiFiParamReportResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1391
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1392
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1395
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1397
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1398
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1401
    nop

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1401
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 401
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public explicitCallTransferResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 758
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 761
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 763
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 764
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 767
    nop

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 767
    throw v0
.end method

.method public getCallForwardStatusUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 1196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1197
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1199
    invoke-static {v0, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1201
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1203
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1204
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1207
    nop

    .line 1208
    return-void

    .line 1206
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1207
    throw p2
.end method

.method public getCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 692
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 694
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 695
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 697
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x12

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    throw p2
.end method

.method public getClipResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 675
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 677
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 679
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 681
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 685
    throw p2
.end method

.method public getClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 641
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 643
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 644
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 646
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 648
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xf

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 652
    throw p2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1919
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1921
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1923
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1924
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1927
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1928
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    nop

    .line 1931
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1929
    return-object v0

    .line 1931
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1932
    throw v0
.end method

.method public getFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 790
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 792
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 794
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 796
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 797
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 800
    nop

    .line 801
    return-void

    .line 799
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 800
    throw p2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 12
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

    .line 1843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1844
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1846
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1848
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1849
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1856
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 1857
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 1858
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 1857
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 1861
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1862
    nop

    :goto_0
    if-ge v10, v11, :cond_0

    .line 1863
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 1865
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 1866
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1867
    nop

    .line 1869
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1873
    :cond_0
    nop

    .line 1875
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1873
    return-object v0

    .line 1875
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1876
    throw v0
.end method

.method public getImsBearerStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1262
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1264
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1266
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1268
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x35

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1269
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    nop

    .line 1273
    return-void

    .line 1271
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    throw p2
.end method

.method public getImsCurrentCallsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 888
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 889
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 891
    invoke-static {v0, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 893
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 895
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 896
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 899
    nop

    .line 900
    return-void

    .line 898
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 899
    throw p2
.end method

.method public getImsPaniInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1441
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1443
    invoke-virtual {p2, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1445
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1447
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1448
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1451
    nop

    .line 1452
    return-void

    .line 1450
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1451
    throw p2
.end method

.method public getImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1475
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1477
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1479
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1481
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x42

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1482
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1485
    nop

    .line 1486
    return-void

    .line 1484
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1485
    throw p2
.end method

.method public getImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 1507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1508
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1510
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1512
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1514
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x44

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1518
    nop

    .line 1519
    return-void

    .line 1517
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1518
    throw p2
.end method

.method public getImsRegistrationStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 414
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 416
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 417
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 419
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 421
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x1

    invoke-interface {p2, p3, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 425
    nop

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 425
    throw p2
.end method

.method public getImsStackVersionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1753
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1755
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1757
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1759
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x53

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1760
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1763
    nop

    .line 1764
    return-void

    .line 1762
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1763
    throw p2
.end method

.method public getImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1769
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1770
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1772
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1774
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1776
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x54

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1777
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1780
    nop

    .line 1781
    return-void

    .line 1779
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1780
    throw p2
.end method

.method public getImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1098
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1100
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1102
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1104
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1105
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1108
    nop

    .line 1109
    return-void

    .line 1107
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1108
    throw p2
.end method

.method public getLastCallFailCauseResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 576
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 578
    invoke-virtual {p2, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 580
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 582
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 586
    nop

    .line 587
    return-void

    .line 585
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 586
    throw p2
.end method

.method public getPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1720
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1724
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1726
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x51

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1727
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1730
    nop

    .line 1731
    return-void

    .line 1729
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1730
    throw p2
.end method

.method public getRTTAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1639
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1641
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1643
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1645
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1649
    nop

    .line 1650
    return-void

    .line 1648
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1649
    throw p2
.end method

.method public getSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1557
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1559
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1561
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1563
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x47

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1564
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1567
    nop

    .line 1568
    return-void

    .line 1566
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1567
    throw p2
.end method

.method public getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1424
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1426
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1428
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1430
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1431
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1434
    nop

    .line 1435
    return-void

    .line 1433
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1434
    throw p2
.end method

.method public getSrvccCapbilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1458
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1460
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1462
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1464
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x41

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1465
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1467
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1468
    throw p2
.end method

.method public getVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1343
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1345
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1347
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1349
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1353
    nop

    .line 1354
    return-void

    .line 1352
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1353
    throw p2
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1574
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1576
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1578
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1580
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1581
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1584
    nop

    .line 1585
    return-void

    .line 1583
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1584
    throw p2
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 496
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 499
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 501
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 502
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 505
    throw v0
.end method

.method public hangupResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 464
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 467
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 469
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 470
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 473
    throw v0
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 480
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 483
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 485
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 486
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 489
    nop

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 489
    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .line 406
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public holdActiveCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1591
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1594
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1596
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x49

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1597
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1599
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1600
    throw v0
.end method

.method public initISIMResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 840
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 842
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 844
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 846
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 847
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 850
    nop

    .line 851
    return-void

    .line 849
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 850
    throw p2
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 5
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

    .line 1787
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1788
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1790
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1792
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1793
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1796
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    nop

    .line 1799
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1797
    return-object v0

    .line 1799
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1800
    throw v0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1827
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1829
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1830
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1833
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    nop

    .line 1836
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1834
    return-object v0

    .line 1836
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1837
    throw v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public notifyDataRouterUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1311
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1314
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1316
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x38

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1317
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1320
    nop

    .line 1321
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1320
    throw v0
.end method

.method public notifyHandoverCallInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1327
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1330
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1332
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x39

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1333
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1336
    nop

    .line 1337
    return-void

    .line 1335
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1336
    throw v0
.end method

.method public notifyImsCallEndResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1002
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1005
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1007
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x25

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1008
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1011
    nop

    .line 1012
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1011
    throw v0
.end method

.method public notifyImsHandoverStatusUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 970
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 973
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 975
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 976
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 979
    nop

    .line 980
    return-void

    .line 978
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 979
    throw v0
.end method

.method public notifyImsNetworkInfoChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 986
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 989
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 991
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 992
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 995
    nop

    .line 996
    return-void

    .line 994
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 995
    throw v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1939
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1943
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1947
    nop

    .line 1948
    return-void

    .line 1946
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1947
    throw v0
.end method

.method public notifyVoWifiCallStateChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1295
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1298
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1300
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1301
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1303
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1304
    throw v0
.end method

.method public notifyVoWifiEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1279
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1284
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x36

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1288
    nop

    .line 1289
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1288
    throw v0
.end method

.method public notifyVoWifiWhiteListResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1737
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1740
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1742
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x52

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1743
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1746
    nop

    .line 1747
    return-void

    .line 1745
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1746
    throw v0
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1902
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1903
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1907
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1908
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1912
    nop

    .line 1913
    return-void

    .line 1911
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1912
    throw v0
.end method

.method public queryColpResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1146
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1147
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1149
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1151
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1153
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1154
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1157
    nop

    .line 1158
    return-void

    .line 1156
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1157
    throw p2
.end method

.method public queryColrResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1164
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1166
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1168
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1170
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1171
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1174
    nop

    .line 1175
    return-void

    .line 1173
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1174
    throw p2
.end method

.method public rejectCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 560
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 563
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 565
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 569
    nop

    .line 570
    return-void

    .line 568
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 569
    throw v0
.end method

.method public requestVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1115
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1118
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1120
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1121
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1124
    nop

    .line 1125
    return-void

    .line 1123
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1124
    throw v0
.end method

.method public responseVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1131
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1134
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1136
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1137
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1140
    nop

    .line 1141
    return-void

    .line 1139
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1140
    throw v0
.end method

.method public sendDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 609
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 612
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 614
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    nop

    .line 619
    return-void

    .line 617
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    throw v0
.end method

.method public sendRTTMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1703
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1704
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1707
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1709
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1710
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1713
    nop

    .line 1714
    return-void

    .line 1712
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1713
    throw v0
.end method

.method public sendUssdResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 824
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 827
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 829
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 830
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 833
    nop

    .line 834
    return-void

    .line 832
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 833
    throw v0
.end method

.method public separateConnectionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 726
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 729
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 731
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 732
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 735
    nop

    .line 736
    return-void

    .line 734
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 735
    throw v0
.end method

.method public setBarringPasswordResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 774
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 777
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 779
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 780
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 783
    throw v0
.end method

.method public setCallForwardUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1214
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1217
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1219
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1220
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1223
    nop

    .line 1224
    return-void

    .line 1222
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1223
    throw v0
.end method

.method public setCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 713
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 715
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 716
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 719
    nop

    .line 720
    return-void

    .line 718
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 719
    throw v0
.end method

.method public setClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 659
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 662
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 664
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 668
    nop

    .line 669
    return-void

    .line 667
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 668
    throw v0
.end method

.method public setFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 807
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 809
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 811
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 813
    :try_start_0
    iget-object p2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 814
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 817
    nop

    .line 818
    return-void

    .line 816
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 817
    throw p2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1883
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1887
    :try_start_0
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1888
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1891
    nop

    .line 1892
    return-void

    .line 1890
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1891
    throw v0
.end method

.method public setImsInitialAttachApnResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1233
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1235
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x33

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1236
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1239
    nop

    .line 1240
    return-void

    .line 1238
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1239
    throw v0
.end method

.method public setImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1492
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1495
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1497
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x43

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1501
    nop

    .line 1502
    return-void

    .line 1500
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1501
    throw v0
.end method

.method public setImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1525
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1528
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1530
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x45

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1531
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1533
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1534
    throw v0
.end method

.method public setImsSmscAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1246
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1249
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1251
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x34

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1252
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1255
    nop

    .line 1256
    return-void

    .line 1254
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1255
    throw v0
.end method

.method public setImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1082
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1085
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1087
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1088
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1091
    nop

    .line 1092
    return-void

    .line 1090
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1091
    throw v0
.end method

.method public setMuteResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 742
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 745
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 747
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x15

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 751
    throw v0
.end method

.method public setPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1607
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1610
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1612
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1613
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1616
    nop

    .line 1617
    return-void

    .line 1615
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1616
    throw v0
.end method

.method public setRTTChannelEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1687
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1688
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1691
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1693
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1697
    nop

    .line 1698
    return-void

    .line 1696
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1697
    throw v0
.end method

.method public setRTTEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1623
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1626
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1628
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1629
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1631
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1632
    throw v0
.end method

.method public setSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1541
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1544
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1546
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x46

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1550
    nop

    .line 1551
    return-void

    .line 1549
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1550
    throw v0
.end method

.method public setVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1360
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1363
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1365
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1366
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1369
    nop

    .line 1370
    return-void

    .line 1368
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1369
    throw v0
.end method

.method public startDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 593
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 596
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 598
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 599
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 602
    nop

    .line 603
    return-void

    .line 601
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 602
    throw v0
.end method

.method public stopDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 628
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 630
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 631
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 634
    nop

    .line 635
    return-void

    .line 633
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 634
    throw v0
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 512
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 515
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 517
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 518
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 521
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 396
    const-string v0, "[class or subclass of vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public updateCLIPResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1181
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1184
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1186
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x30

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1187
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1190
    nop

    .line 1191
    return-void

    .line 1189
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1190
    throw v0
.end method

.method public videoPhoneDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 873
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 876
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 878
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 879
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 882
    throw v0
.end method

.method public volteCallFallBackToVoiceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 906
    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 909
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 911
    :try_start_0
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 912
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 915
    nop

    .line 916
    return-void

    .line 914
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 915
    throw v0
.end method
