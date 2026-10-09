.class public final Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;
.super Ljava/lang/Object;
.source "PublishAndSubscribeResponseInfo.java"


# instance fields
.field public code:I

.field public reason:Ljava/lang/String;

.field public reasonHeaderCause:I

.field public reasonHeaderText:Ljava/lang/String;

.field public sipCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    .line 6
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    .line 8
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 79
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 80
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 80
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 86
    new-instance v4, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    invoke-direct {v4}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;-><init>()V

    .line 87
    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 128
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 129
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    nop

    :goto_0
    if-ge v4, v1, :cond_0

    .line 131
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 14
    return v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 17
    return v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    if-eq v2, v3, :cond_2

    .line 20
    return v1

    .line 22
    :cond_2
    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    .line 23
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    if-eq v2, v3, :cond_3

    .line 24
    return v1

    .line 26
    :cond_3
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    if-eq v2, v3, :cond_4

    .line 27
    return v1

    .line 29
    :cond_4
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 30
    return v1

    .line 32
    :cond_5
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    if-eq v2, v3, :cond_6

    .line 33
    return v1

    .line 35
    :cond_6
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 36
    return v1

    .line 38
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    .line 97
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    .line 98
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    .line 99
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    .line 101
    nop

    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 101
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 106
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    .line 107
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    .line 109
    nop

    .line 110
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v4, v2

    .line 109
    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 114
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 70
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 71
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 72
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ".code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .sipCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .reasonHeaderCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .reasonHeaderText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 141
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 142
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 143
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 144
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 120
    return-void
.end method
