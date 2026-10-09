.class public Lvendor/unisoc/hardware/radio/data/QosFilterExt;
.super Ljava/lang/Object;
.source "QosFilterExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/QosFilterExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_BIDIRECTIONAL:B = 0x2t

.field public static final DIRECTION_DOWNLINK:B = 0x0t

.field public static final DIRECTION_UPLINK:B = 0x1t

.field public static final PROTOCOL_AH:B = 0x33t

.field public static final PROTOCOL_ESP:B = 0x32t

.field public static final PROTOCOL_TCP:B = 0x6t

.field public static final PROTOCOL_UDP:B = 0x11t

.field public static final PROTOCOL_UNSPECIFIED:B = -0x1t


# instance fields
.field public direction:B

.field public flowLabel:Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

.field public localAddresses:[Ljava/lang/String;

.field public localPort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

.field public precedence:I

.field public protocol:B

.field public remoteAddresses:[Ljava/lang/String;

.field public remotePort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

.field public spi:Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

.field public tos:Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosFilterExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/QosFilterExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->protocol:B

    .line 15
    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->direction:B

    .line 16
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->precedence:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 104
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 106
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 93
    nop

    .line 94
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->localPort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 95
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->remotePort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->tos:Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->flowLabel:Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->spi:Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 78
    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->localAddresses:[Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 78
    :cond_2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->remoteAddresses:[Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 78
    :cond_4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_5
    :try_start_3
    sget-object v2, Lvendor/unisoc/hardware/radio/data/PortRangeExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->localPort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 78
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_7
    :try_start_4
    sget-object v2, Lvendor/unisoc/hardware/radio/data/PortRangeExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->remotePort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 78
    :cond_8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->protocol:B

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 78
    :cond_a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_b
    :try_start_6
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->tos:Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 78
    :cond_c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_d
    :try_start_7
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->flowLabel:Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 78
    :cond_e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_f
    :try_start_8
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->spi:Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 78
    :cond_10
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->direction:B

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 78
    :cond_12
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->precedence:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :cond_14
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 55
    :cond_15
    :try_start_b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 77
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16

    .line 78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_16
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->localAddresses:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->remoteAddresses:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->localPort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->remotePort:Lvendor/unisoc/hardware/radio/data/PortRangeExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget-byte v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->protocol:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->tos:Lvendor/unisoc/hardware/radio/data/QosFilterTypeOfServiceExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->flowLabel:Lvendor/unisoc/hardware/radio/data/QosFilterIpv6FlowLabelExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->spi:Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget-byte p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->direction:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterExt;->precedence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
