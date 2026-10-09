.class Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt$1;
.super Ljava/lang/Object;
.source "QosFilterIpv6FlowLabelExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;
    .locals 2

    .line 70
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;-><init>(Landroid/os/Parcel;Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt-IA;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt$1;->newArray(I)[Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;
    .locals 0

    .line 74
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    return-object p1
.end method
