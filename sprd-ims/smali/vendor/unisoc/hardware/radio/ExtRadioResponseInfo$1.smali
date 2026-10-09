.class Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo$1;
.super Ljava/lang/Object;
.source "ExtRadioResponseInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;
    .locals 1

    .line 15
    new-instance v0, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo$1;->newArray(I)[Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;
    .locals 0

    .line 21
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;

    return-object p1
.end method
