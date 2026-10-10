.class public abstract Lcom/android/ims/internal/IImsDozeManager$Stub;
.super Landroid/os/Binder;
.source "IImsDozeManager.java"

# interfaces
.implements Lcom/android/ims/internal/IImsDozeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsDozeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsDozeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_registerImsDozeObserver:I = 0x2

.field static final blacklist TRANSACTION_setImsDozeEnabled:I = 0x1

.field static final blacklist TRANSACTION_unregisterImsDozeObserver:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.android.ims.internal.IImsDozeManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsDozeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsDozeManager;
    .locals 2

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string v0, "com.android.ims.internal.IImsDozeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsDozeManager;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/android/ims/internal/IImsDozeManager;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsDozeManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsDozeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 50
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    nop

    .line 55
    const/4 v0, 0x1

    const-string v1, "com.android.ims.internal.IImsDozeManager"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 66
    packed-switch p1, :pswitch_data_1

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v0

    .line 89
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsDozeObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsDozeObserver;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsDozeManager$Stub;->unregisterImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsDozeObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsDozeObserver;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsDozeManager$Stub;->registerImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    goto :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsDozeManager$Stub;->setImsDozeEnabled(Z)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    nop

    .line 100
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
