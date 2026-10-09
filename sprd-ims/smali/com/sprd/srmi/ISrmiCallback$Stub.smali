.class public abstract Lcom/sprd/srmi/ISrmiCallback$Stub;
.super Landroid/os/Binder;
.source "ISrmiCallback.java"

# interfaces
.implements Lcom/sprd/srmi/ISrmiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/ISrmiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onMsgReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sprd.srmi.ISrmiCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sprd/srmi/ISrmiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiCallback;
    .locals 2

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    const-string v0, "com.sprd.srmi.ISrmiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprd/srmi/ISrmiCallback;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/sprd/srmi/ISrmiCallback;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    nop

    .line 48
    const/4 v0, 0x1

    const-string v1, "com.sprd.srmi.ISrmiCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 59
    packed-switch p1, :pswitch_data_1

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v0

    .line 64
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    invoke-virtual {p0, p1, p4, v1}, Lcom/sprd/srmi/ISrmiCallback$Stub;->onMsgReceived(Ljava/lang/String;II)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    nop

    .line 79
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
