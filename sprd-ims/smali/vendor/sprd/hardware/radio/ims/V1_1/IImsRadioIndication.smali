.class public interface abstract Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;,
        Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 4

    .line 16
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 17
    return-object v0

    .line 20
    :cond_0
    nop

    .line 21
    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Proxy;

    invoke-direct {v2, p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    :try_start_0
    invoke-interface {v2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->interfaceChain()Ljava/util/ArrayList;

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

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 32
    return-object v2

    .line 34
    :cond_2
    goto :goto_0

    .line 36
    :cond_3
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 38
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 0

    .line 45
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    const-string v0, "default"

    invoke-static {v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->getService(Ljava/lang/String;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ImsConfigurationChangedInd(ILvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
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

.method public abstract featureTagRegistrationChangedInd(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;",
            ">;)V"
        }
    .end annotation

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

.method public abstract holdToneInd(II)V
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

.method public abstract notifyCapabilitiesChangedInd(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImsUssd(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteCapabilitiesDemandInd(ILjava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
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

.method public abstract onResourceTerminatedInd(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/TerminatedReason;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTerminatedInd(ILjava/lang/String;J)V
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

.method public abstract receiveSipMessageInd(ILvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSipMessageResultInd(IILjava/lang/String;I)V
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

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
