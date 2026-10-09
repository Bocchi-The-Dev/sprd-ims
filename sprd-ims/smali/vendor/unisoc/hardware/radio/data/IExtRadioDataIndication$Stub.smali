.class public abstract Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;
.super Landroid/os/Binder;
.source "IExtRadioDataIndication.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearCodeFallbackInd:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_postUrspInd:I = 0x3

.field static final TRANSACTION_rauSuccessInd:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->markVintfStability()V

    .line 47
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;
    .locals 2

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 71
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 78
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 83
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v1

    .line 89
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p3, p4}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->postUrspInd(IILjava/lang/String;)V

    .line 122
    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->clearCodeFallbackInd(I)V

    .line 110
    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->rauSuccessInd(I)V

    .line 102
    nop

    .line 129
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
