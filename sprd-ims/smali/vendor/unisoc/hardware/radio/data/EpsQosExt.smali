.class public Lvendor/unisoc/hardware/radio/data/EpsQosExt;
.super Ljava/lang/Object;
.source "EpsQosExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/EpsQosExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downlink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

.field public qci:I

.field public uplink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lvendor/unisoc/hardware/radio/data/EpsQosExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/EpsQosExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->qci:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 65
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 67
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 57
    nop

    .line 58
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->downlink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 59
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->uplink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 41
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void

    .line 50
    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->qci:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 50
    :cond_2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    :try_start_2
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->downlink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 50
    :cond_4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_5
    :try_start_3
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->uplink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    nop

    .line 54
    return-void

    .line 50
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 41
    :cond_7
    :try_start_4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8

    .line 50
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_8
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->qci:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->downlink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 30
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->uplink:Lvendor/unisoc/hardware/radio/data/QosBandwidthExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 33
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    return-void
.end method
