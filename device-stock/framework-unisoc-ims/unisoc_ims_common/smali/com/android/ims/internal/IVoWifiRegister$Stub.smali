.class public abstract Lcom/android/ims/internal/IVoWifiRegister$Stub;
.super Landroid/os/Binder;
.source "IVoWifiRegister.java"

# interfaces
.implements Lcom/android/ims/internal/IVoWifiRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IVoWifiRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiRegister$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cliLogin:I = 0x6

.field static final blacklist TRANSACTION_cliLogout:I = 0x8

.field static final blacklist TRANSACTION_cliOpen:I = 0x3

.field static final blacklist TRANSACTION_cliRefresh:I = 0x7

.field static final blacklist TRANSACTION_cliReset:I = 0x9

.field static final blacklist TRANSACTION_cliStart:I = 0x4

.field static final blacklist TRANSACTION_cliUpdateSettings:I = 0x5

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "com.android.ims.internal.IVoWifiRegister"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiRegister;
    .locals 2

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    const-string v0, "com.android.ims.internal.IVoWifiRegister"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IVoWifiRegister;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Lcom/android/ims/internal/IVoWifiRegister;

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IVoWifiRegister$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IVoWifiRegister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 94
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    nop

    .line 99
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IVoWifiRegister"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 100
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 110
    packed-switch p1, :pswitch_data_1

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v0

    .line 204
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliReset()I

    move-result p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto/16 :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliLogout()I

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto/16 :goto_0

    .line 186
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliRefresh(ILjava/lang/String;)I

    move-result p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    goto/16 :goto_0

    .line 160
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliLogin(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I

    move-result p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto :goto_0

    .line 150
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliUpdateSettings(Z)I

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    goto :goto_0

    .line 142
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliStart()I

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_0

    .line 133
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->cliOpen(I)I

    move-result p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_0

    .line 124
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiRegisterCallback;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->unregisterCallback(Lcom/android/ims/internal/IVoWifiRegisterCallback;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_0

    .line 115
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IVoWifiRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiRegisterCallback;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IVoWifiRegister$Stub;->registerCallback(Lcom/android/ims/internal/IVoWifiRegisterCallback;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    nop

    .line 214
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
