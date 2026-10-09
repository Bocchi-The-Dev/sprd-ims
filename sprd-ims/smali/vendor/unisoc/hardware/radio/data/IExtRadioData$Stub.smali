.class public abstract Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;
.super Landroid/os/Binder;
.source "IExtRadioData.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/data/IExtRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/IExtRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_attachData:I = 0x3

.field static final TRANSACTION_deactivateDataCallExt:I = 0xb

.field static final TRANSACTION_enableRauNotify:I = 0x4

.field static final TRANSACTION_forceDeatch:I = 0x5

.field static final TRANSACTION_getActivedPdpCount:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_reAttach:I = 0x7

.field static final TRANSACTION_responseAcknowledgement:I = 0x1

.field static final TRANSACTION_setExtResponseFunctions:I = 0x2

.field static final TRANSACTION_setPsDataOff:I = 0x8

.field static final TRANSACTION_setUsbShareStateSwitch:I = 0x9

.field static final TRANSACTION_setupDataCallExt:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->markVintfStability()V

    .line 71
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioData;
    .locals 2

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    sget-object v4, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 95
    const/4 v11, 0x1

    if-lt v1, v11, :cond_0

    const v5, 0xffffff

    if-gt v1, v5, :cond_0

    .line 96
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 118
    packed-switch v1, :pswitch_data_0

    .line 240
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 102
    :sswitch_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v11

    .line 107
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v11

    .line 113
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v11

    .line 229
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->deactivateDataCallExt(III)V

    .line 236
    goto/16 :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    sget-object v4, Lvendor/unisoc/hardware/radio/data/DataProfileInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/unisoc/hardware/radio/data/DataProfileInfoExt;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 213
    sget-object v7, Lvendor/unisoc/hardware/radio/data/LinkAddressExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 219
    sget-object v10, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v12

    invoke-virtual/range {v0 .. v10}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->setupDataCallExt(IILvendor/unisoc/hardware/radio/data/DataProfileInfoExt;ZI[Lvendor/unisoc/hardware/radio/data/LinkAddressExt;[Ljava/lang/String;ILvendor/unisoc/hardware/radio/data/SliceInfoExt;Z)V

    .line 224
    goto/16 :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->setUsbShareStateSwitch(IZ)V

    .line 198
    goto :goto_0

    .line 181
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1, v3, v4}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->setPsDataOff(IZI)V

    .line 188
    goto :goto_0

    .line 173
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->reAttach(I)V

    .line 176
    goto :goto_0

    .line 165
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->getActivedPdpCount(I)V

    .line 168
    goto :goto_0

    .line 157
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->forceDeatch(I)V

    .line 160
    goto :goto_0

    .line 149
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->enableRauNotify(I)V

    .line 152
    goto :goto_0

    .line 139
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1, v3}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->attachData(IZ)V

    .line 144
    goto :goto_0

    .line 128
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;

    move-result-object v1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;

    move-result-object v4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1, v4}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_0

    .line 122
    :pswitch_a
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->responseAcknowledgement()V

    .line 123
    nop

    .line 243
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
