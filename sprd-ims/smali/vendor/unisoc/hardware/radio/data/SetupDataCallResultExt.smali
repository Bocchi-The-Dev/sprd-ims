.class public Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;
.super Ljava/lang/Object;
.source "SetupDataCallResultExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_CONNECTION_STATUS_ACTIVE:I = 0x2

.field public static final DATA_CONNECTION_STATUS_DORMANT:I = 0x1

.field public static final DATA_CONNECTION_STATUS_INACTIVE:I = 0x0

.field public static final HANDOVER_FAILURE_MODE_DO_FALLBACK:B = 0x1t

.field public static final HANDOVER_FAILURE_MODE_LEGACY:B = 0x0t

.field public static final HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:B = 0x2t

.field public static final HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:B = 0x3t


# instance fields
.field public active:I

.field public addresses:[Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

.field public cause:I

.field public cid:I

.field public defaultQos:Lvendor/unisoc/hardware/radio/data/QosExt;

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public handoverFailureMode:B

.field public ifname:Ljava/lang/String;

.field public mtuV4:I

.field public mtuV6:I

.field public pcscf:[Ljava/lang/String;

.field public pduSessionId:I

.field public qosSessions:[Lvendor/unisoc/hardware/radio/data/QosSessionExt;

.field public sliceInfo:Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

.field public suggestedRetryTime:J

.field public trafficDescriptors:[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->suggestedRetryTime:J

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->cid:I

    .line 10
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->active:I

    .line 17
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV4:I

    .line 18
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV6:I

    .line 21
    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->handoverFailureMode:B

    .line 22
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->pduSessionId:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 135
    nop

    .line 136
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 137
    invoke-direct {p0, v3}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return v2

    .line 141
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 142
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 144
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 124
    nop

    .line 125
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->addresses:[Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 126
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->defaultQos:Lvendor/unisoc/hardware/radio/data/QosExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->qosSessions:[Lvendor/unisoc/hardware/radio/data/QosSessionExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->sliceInfo:Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->trafficDescriptors:[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 130
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_25

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 110
    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->cause:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 110
    :cond_2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->suggestedRetryTime:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 110
    :cond_4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->cid:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 110
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->active:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 110
    :cond_8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->type:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 110
    :cond_a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->ifname:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 110
    :cond_c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_d
    :try_start_7
    sget-object v2, Lvendor/unisoc/hardware/radio/data/LinkAddressExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->addresses:[Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 110
    :cond_e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->dnses:[Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 110
    :cond_10
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->gateways:[Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 110
    :cond_12
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->pcscf:[Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 110
    :cond_14
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV4:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 110
    :cond_16
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV6:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 110
    :cond_18
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_19
    :try_start_d
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/QosExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->defaultQos:Lvendor/unisoc/hardware/radio/data/QosExt;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 110
    :cond_1a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1b
    :try_start_e
    sget-object v2, Lvendor/unisoc/hardware/radio/data/QosSessionExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/unisoc/hardware/radio/data/QosSessionExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->qosSessions:[Lvendor/unisoc/hardware/radio/data/QosSessionExt;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 110
    :cond_1c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->handoverFailureMode:B

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 110
    :cond_1e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->pduSessionId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 110
    :cond_20
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_21
    :try_start_11
    sget-object v2, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->sliceInfo:Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_22

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 110
    :cond_22
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_23
    :try_start_12
    sget-object v2, Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->trafficDescriptors:[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 109
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_24

    .line 112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    nop

    .line 114
    return-void

    .line 110
    :cond_24
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 71
    :cond_25
    :try_start_13
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 109
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_26

    .line 110
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_26
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->cause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->suggestedRetryTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->cid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->active:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->ifname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->addresses:[Lvendor/unisoc/hardware/radio/data/LinkAddressExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->dnses:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->gateways:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->pcscf:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 53
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV4:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->mtuV6:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->defaultQos:Lvendor/unisoc/hardware/radio/data/QosExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->qosSessions:[Lvendor/unisoc/hardware/radio/data/QosSessionExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 57
    iget-byte v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->handoverFailureMode:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->pduSessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->sliceInfo:Lvendor/unisoc/hardware/radio/data/SliceInfoExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/data/SetupDataCallResultExt;->trafficDescriptors:[Lvendor/unisoc/hardware/radio/data/TrafficDescriptorExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void
.end method
