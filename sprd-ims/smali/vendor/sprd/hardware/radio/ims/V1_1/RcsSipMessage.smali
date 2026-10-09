.class public final Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;
.super Ljava/lang/Object;
.source "RcsSipMessage.java"


# instance fields
.field public callId:Ljava/lang/String;

.field public content:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public delegateid:I

.field public headerSection:Ljava/lang/String;

.field public startLine:Ljava/lang/String;

.field public viaBranch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

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
            "Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 101
    new-instance v4, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    invoke-direct {v4}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;-><init>()V

    .line 102
    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
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
            "Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 167
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    nop

    :goto_0
    if-ge v4, v1, :cond_0

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 177
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 26
    return v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    if-eq v2, v3, :cond_2

    .line 29
    return v1

    .line 31
    :cond_2
    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    .line 32
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    if-eq v2, v3, :cond_3

    .line 33
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 39
    return v1

    .line 41
    :cond_5
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 42
    return v1

    .line 44
    :cond_6
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 45
    return v1

    .line 47
    :cond_7
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 48
    return v1

    .line 50
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    .line 59
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    .line 113
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 115
    nop

    .line 116
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    .line 115
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 120
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 122
    nop

    .line 123
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    .line 122
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 128
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 129
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    .line 129
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 133
    iget-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 135
    nop

    .line 136
    mul-int/lit8 v7, v6, 0x1

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    .line 137
    iget-object v8, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 142
    nop

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    .line 142
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 147
    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    .line 149
    nop

    .line 150
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v4, v2

    const/4 v13, 0x0

    .line 149
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 154
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 85
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ".delegateid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .startLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .headerSection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .viaBranch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    .line 181
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 182
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget-object v6, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 183
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-object v6, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 185
    iget-object v4, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 186
    const-wide/16 v5, 0x28

    add-long/2addr v5, p2

    add-long/2addr v2, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 187
    const-wide/16 v2, 0xc

    add-long/2addr v2, v5

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 188
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 189
    nop

    :goto_0
    if-ge v7, v4, :cond_0

    .line 190
    mul-int/lit8 v3, v7, 0x1

    int-to-long v8, v3

    iget-object v3, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v8, v9, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 192
    :cond_0
    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 194
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 195
    const-wide/16 v0, 0x48

    add-long/2addr p2, v0

    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 196
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 160
    return-void
.end method
