.class public abstract Lcom/android/ims/internal/IVoWifiUT$Stub;
.super Landroid/os/Binder;
.source "IVoWifiUT.java"

# interfaces
.implements Lcom/android/ims/internal/IVoWifiUT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IVoWifiUT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiUT$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_queryCLIP:I = 0xc

.field static final blacklist TRANSACTION_queryCLIR:I = 0xa

.field static final blacklist TRANSACTION_queryCOLP:I = 0x10

.field static final blacklist TRANSACTION_queryCOLR:I = 0xe

.field static final blacklist TRANSACTION_queryCallBarring:I = 0x4

.field static final blacklist TRANSACTION_queryCallForward:I = 0x5

.field static final blacklist TRANSACTION_queryCallWaiting:I = 0x6

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2

.field static final blacklist TRANSACTION_updateCLIP:I = 0xd

.field static final blacklist TRANSACTION_updateCLIR:I = 0xb

.field static final blacklist TRANSACTION_updateCOLP:I = 0x11

.field static final blacklist TRANSACTION_updateCOLR:I = 0xf

.field static final blacklist TRANSACTION_updateCallBarring:I = 0x7

.field static final blacklist TRANSACTION_updateCallForward:I = 0x8

.field static final blacklist TRANSACTION_updateCallWaiting:I = 0x9

.field static final blacklist TRANSACTION_updateIPAddr:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "com.android.ims.internal.IVoWifiUT"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiUT;
    .locals 2

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    const-string v0, "com.android.ims.internal.IVoWifiUT"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IVoWifiUT;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/android/ims/internal/IVoWifiUT;

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IVoWifiUT$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IVoWifiUT$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    nop

    .line 118
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IVoWifiUT"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 119
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 129
    packed-switch p1, :pswitch_data_1

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v0

    .line 290
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCOLP(Z)I

    move-result p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto/16 :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCOLP()I

    move-result p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    goto/16 :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCOLR(I)I

    move-result p1

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto/16 :goto_0

    .line 265
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCOLR()I

    move-result p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    goto/16 :goto_0

    .line 256
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCLIP(Z)I

    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto/16 :goto_0

    .line 248
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCLIP()I

    move-result p1

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    goto/16 :goto_0

    .line 239
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCLIR(I)I

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    goto/16 :goto_0

    .line 231
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCLIR()I

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    goto/16 :goto_0

    .line 222
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCallWaiting(Z)I

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    goto/16 :goto_0

    .line 204
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    goto/16 :goto_0

    .line 188
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateCallBarring(IZ[Ljava/lang/String;I)I

    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    goto :goto_0

    .line 180
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCallWaiting()I

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto :goto_0

    .line 173
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCallForward()I

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_0

    .line 164
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->queryCallBarring(I)I

    move-result p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_0

    .line 152
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiUT$Stub;->updateIPAddr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    goto :goto_0

    .line 143
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiUTCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiUTCallback;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->unregisterCallback(Lcom/android/ims/internal/IVoWifiUTCallback;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_0

    .line 134
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiUTCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiUTCallback;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiUT$Stub;->registerCallback(Lcom/android/ims/internal/IVoWifiUTCallback;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    nop

    .line 302
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
