.class Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification$1;
.super Ljava/lang/Object;
.source "SuppSvcNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;
    .locals 1

    .line 17
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification$1;->newArray(I)[Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;
    .locals 0

    .line 23
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;

    return-object p1
.end method
