.class Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo$1;
.super Ljava/lang/Object;
.source "SipDelegateImsConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;
    .locals 1

    .line 48
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo$1;->newArray(I)[Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;
    .locals 0

    .line 54
    new-array p1, p1, [Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;

    return-object p1
.end method
