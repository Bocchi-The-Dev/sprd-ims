.class public abstract Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;
.super Landroid/os/Binder;
.source "IIwlanMmsActionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IIwlanMmsActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IIwlanMmsActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IIwlanMmsActionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMmsTransportStateChange:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.ims.internal.IIwlanMmsActionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IIwlanMmsActionListener;
    .locals 2

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    const-string v0, "com.android.ims.internal.IIwlanMmsActionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IIwlanMmsActionListener;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/android/ims/internal/IIwlanMmsActionListener;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    nop

    .line 49
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IIwlanMmsActionListener"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 60
    packed-switch p1, :pswitch_data_1

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v0

    .line 65
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;->onMmsTransportStateChange(IZ)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    nop

    .line 78
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
