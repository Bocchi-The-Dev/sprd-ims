.class Lvendor/unisoc/hardware/radio/data/OsAppIdExt$1;
.super Ljava/lang/Object;
.source "OsAppIdExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/OsAppIdExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/data/OsAppIdExt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/OsAppIdExt$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/OsAppIdExt;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/OsAppIdExt;
    .locals 1

    .line 13
    new-instance v0, Lvendor/unisoc/hardware/radio/data/OsAppIdExt;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/OsAppIdExt;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/data/OsAppIdExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/OsAppIdExt$1;->newArray(I)[Lvendor/unisoc/hardware/radio/data/OsAppIdExt;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/data/OsAppIdExt;
    .locals 0

    .line 19
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/data/OsAppIdExt;

    return-object p1
.end method
