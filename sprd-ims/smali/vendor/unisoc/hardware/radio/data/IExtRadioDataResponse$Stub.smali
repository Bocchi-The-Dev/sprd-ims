.class public abstract Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;
.super Landroid/os/Binder;
.source "IExtRadioDataResponse.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_attachDataResponse:I = 0x1

.field static final TRANSACTION_deactivateDataCallExtResponse:I = 0x9

.field static final TRANSACTION_enableRauNotifyResponse:I = 0x2

.field static final TRANSACTION_forceDeatchResponse:I = 0x3

.field static final TRANSACTION_getActivedPdpCountResponse:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_reAttachResponse:I = 0x5

.field static final TRANSACTION_setPsDataOffResponse:I = 0x6

.field static final TRANSACTION_setUsbShareStateSwitchResponse:I = 0x7

.field static final TRANSACTION_setupDataCallExtResponse:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->markVintfStability()V

    .line 65
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;
    .locals 2

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 96
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 101
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v1

    .line 107
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 185
    :pswitch_0
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->deactivateDataCallExtResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 188
    goto/16 :goto_0

    .line 175
    :pswitch_1
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 177
    sget-object p3, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->setupDataCallExtResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;)V

    .line 180
    goto :goto_0

    .line 167
    :pswitch_2
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->setUsbShareStateSwitchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 170
    goto :goto_0

    .line 159
    :pswitch_3
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->setPsDataOffResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 162
    goto :goto_0

    .line 151
    :pswitch_4
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->reAttachResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 154
    goto :goto_0

    .line 141
    :pswitch_5
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1, p3}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->getActivedPdpCountResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V

    .line 146
    goto :goto_0

    .line 133
    :pswitch_6
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->forceDeatchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 136
    goto :goto_0

    .line 125
    :pswitch_7
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->enableRauNotifyResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 128
    goto :goto_0

    .line 117
    :pswitch_8
    sget-object p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->attachDataResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    .line 120
    nop

    .line 195
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
