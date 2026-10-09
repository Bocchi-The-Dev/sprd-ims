.class public Lvendor/unisoc/hardware/radio/data/SliceInfoExt;
.super Ljava/lang/Object;
.source "SliceInfoExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/SliceInfoExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_EMBB:B = 0x1t

.field public static final SERVICE_TYPE_MIOT:B = 0x3t

.field public static final SERVICE_TYPE_NONE:B = 0x0t

.field public static final SERVICE_TYPE_URLLC:B = 0x2t

.field public static final STATUS_ALLOWED:B = 0x2t

.field public static final STATUS_CONFIGURED:B = 0x1t

.field public static final STATUS_DEFAULT_CONFIGURED:B = 0x5t

.field public static final STATUS_REJECTED_NOT_AVAILABLE_IN_PLMN:B = 0x3t

.field public static final STATUS_REJECTED_NOT_AVAILABLE_IN_REG_AREA:B = 0x4t

.field public static final STATUS_UNKNOWN:B


# instance fields
.field public mappedHplmnSd:I

.field public mappedHplmnSst:B

.field public sliceDifferentiator:I

.field public sliceServiceType:B

.field public status:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/SliceInfoExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceServiceType:B

    .line 8
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceDifferentiator:I

    .line 9
    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSst:B

    .line 10
    iput v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSd:I

    .line 11
    iput-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->status:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    nop

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 58
    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceServiceType:B

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 58
    :cond_2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceDifferentiator:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 58
    :cond_4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSst:B

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 58
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSd:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 58
    :cond_8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->status:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    nop

    .line 62
    return-void

    .line 58
    :cond_a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 45
    :cond_b
    :try_start_6
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c

    .line 58
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceServiceType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->sliceDifferentiator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSst:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->mappedHplmnSd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-byte v0, p0, Lvendor/unisoc/hardware/radio/data/SliceInfoExt;->status:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method
