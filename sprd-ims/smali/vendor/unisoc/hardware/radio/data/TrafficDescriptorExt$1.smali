.class Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt$1;
.super Ljava/lang/Object;
.source "TrafficDescriptorExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;
    .locals 1

    .line 14
    new-instance v0, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt$1;->newArray(I)[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;
    .locals 0

    .line 20
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    return-object p1
.end method
