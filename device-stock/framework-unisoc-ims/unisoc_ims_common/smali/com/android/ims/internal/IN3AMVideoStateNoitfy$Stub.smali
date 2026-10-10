.class public abstract Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;
.super Landroid/os/Binder;
.source "IN3AMVideoStateNoitfy.java"

# interfaces
.implements Lcom/android/ims/internal/IN3AMVideoStateNoitfy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IN3AMVideoStateNoitfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyRtpReceived:I = 0x2

.field static final blacklist TRANSACTION_notifyVideoQos:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.android.ims.internal.IN3AMVideoStateNoitfy"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;
    .locals 2

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    const-string v0, "com.android.ims.internal.IN3AMVideoStateNoitfy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    nop

    .line 51
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IN3AMVideoStateNoitfy"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 62
    packed-switch p1, :pswitch_data_1

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v0

    .line 82
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;->notifyRtpReceived(IZ)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;->notifyVideoQos(IIII)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    nop

    .line 95
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
