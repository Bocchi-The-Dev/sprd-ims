.class public Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Default;
.super Ljava/lang/Object;
.source "IExtRadioDataResponse.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;
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
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public attachDataResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public deactivateDataCallExtResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public enableRauNotifyResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public forceDeatchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public getActivedPdpCountResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public reAttachResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public setPsDataOffResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public setUsbShareStateSwitchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public setupDataCallExtResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
