.class public final Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;
.super Ljava/lang/Object;
.source "CallForwardInfoUri.java"


# instance fields
.field public number:Ljava/lang/String;

.field public numberType:I

.field public reason:I

.field public ruleset:Ljava/lang/String;

.field public serviceClass:I

.field public status:I

.field public timeSeconds:I

.field public ton:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    .line 18
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    .line 22
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    .line 26
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    .line 30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 34
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    .line 41
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 45
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

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
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 133
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 134
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 135
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 134
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 140
    new-instance v4, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v4}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 141
    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
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
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;",
            ">;)V"
        }
    .end annotation

    .line 181
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 184
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 185
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    nop

    :goto_0
    if-ge v4, v1, :cond_0

    .line 188
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 194
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 53
    return v1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    if-eq v2, v3, :cond_2

    .line 56
    return v1

    .line 58
    :cond_2
    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    .line 59
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    if-eq v2, v3, :cond_3

    .line 60
    return v1

    .line 62
    :cond_3
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    if-eq v2, v3, :cond_4

    .line 63
    return v1

    .line 65
    :cond_4
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    if-eq v2, v3, :cond_5

    .line 66
    return v1

    .line 68
    :cond_5
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    if-eq v2, v3, :cond_6

    .line 69
    return v1

    .line 71
    :cond_6
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 72
    return v1

    .line 74
    :cond_7
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    if-eq v2, v3, :cond_8

    .line 75
    return v1

    .line 77
    :cond_8
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 78
    return v1

    .line 80
    :cond_9
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    iget p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    if-eq v2, p1, :cond_a

    .line 81
    return v1

    .line 83
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 88
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    .line 151
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    .line 152
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    .line 153
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    .line 154
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    .line 155
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 157
    nop

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 157
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 162
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    .line 163
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 165
    nop

    .line 166
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 165
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 170
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    .line 171
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 124
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 125
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 126
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .numberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .ton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .ruleset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 198
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 199
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 200
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 201
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 202
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 203
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 204
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 205
    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    iget v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 206
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 174
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 175
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 177
    return-void
.end method
