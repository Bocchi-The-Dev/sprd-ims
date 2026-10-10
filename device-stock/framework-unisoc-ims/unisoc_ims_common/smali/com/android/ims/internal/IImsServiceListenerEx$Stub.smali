.class public abstract Lcom/android/ims/internal/IImsServiceListenerEx$Stub;
.super Landroid/os/Binder;
.source "IImsServiceListenerEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceListenerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceListenerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_imsCallEnd:I = 0x3

.field static final blacklist TRANSACTION_imsPdnStateChange:I = 0x4

.field static final blacklist TRANSACTION_onDPDDisconnected:I = 0x5

.field static final blacklist TRANSACTION_onMediaQualityChanged:I = 0x9

.field static final blacklist TRANSACTION_onNoRtpReceived:I = 0x6

.field static final blacklist TRANSACTION_onRtpReceived:I = 0x8

.field static final blacklist TRANSACTION_onSetVowifiRegister:I = 0xc

.field static final blacklist TRANSACTION_onSrvccFaild:I = 0xa

.field static final blacklist TRANSACTION_onVideoStateChanged:I = 0xb

.field static final blacklist TRANSACTION_onVoWiFiError:I = 0x7

.field static final blacklist TRANSACTION_operationFailed:I = 0x2

.field static final blacklist TRANSACTION_operationSuccessed:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 112
    const-string v0, "com.android.ims.internal.IImsServiceListenerEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceListenerEx;
    .locals 2

    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    const-string v0, "com.android.ims.internal.IImsServiceListenerEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lcom/android/ims/internal/IImsServiceListenerEx;

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsServiceListenerEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 131
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    nop

    .line 136
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IImsServiceListenerEx"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 137
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 147
    packed-switch p1, :pswitch_data_1

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v0

    .line 257
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onSetVowifiRegister(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onVideoStateChanged(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onSrvccFaild()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_0

    .line 227
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onMediaQualityChanged(ZIII)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_0

    .line 218
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onRtpReceived(Z)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_0

    .line 209
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onVoWiFiError(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_0

    .line 200
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onNoRtpReceived(Z)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_0

    .line 193
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->onDPDDisconnected()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_0

    .line 185
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->imsPdnStateChange(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_0

    .line 176
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->imsCallEnd(I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_0

    .line 163
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->operationFailed(ILjava/lang/String;I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 152
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsServiceListenerEx$Stub;->operationSuccessed(II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    nop

    .line 268
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
