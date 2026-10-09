.class Lvendor/unisoc/hardware/radio/data/NrQosExt$1;
.super Ljava/lang/Object;
.source "NrQosExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/NrQosExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/data/NrQosExt;",
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
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/NrQosExt$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/NrQosExt;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/NrQosExt;
    .locals 1

    .line 17
    new-instance v0, Lvendor/unisoc/hardware/radio/data/NrQosExt;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/NrQosExt;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/data/NrQosExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/NrQosExt$1;->newArray(I)[Lvendor/unisoc/hardware/radio/data/NrQosExt;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/data/NrQosExt;
    .locals 0

    .line 23
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/data/NrQosExt;

    return-object p1
.end method
