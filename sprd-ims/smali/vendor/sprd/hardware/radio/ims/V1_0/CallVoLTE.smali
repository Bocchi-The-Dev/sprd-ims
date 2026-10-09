.class public final Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;
.super Ljava/lang/Object;
.source "CallVoLTE.java"


# instance fields
.field public als:I

.field public cliValidityPresent:I

.field public csMode:I

.field public index:I

.field public isLoopBack:B

.field public isMT:B

.field public isVoicePrivacy:B

.field public mediaDescription:Ljava/lang/String;

.field public mpty:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public negStatus:I

.field public negStatusPresent:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public priority:I

.field public prioritypresent:I

.field public state:I

.field public toa:I

.field public uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    .line 15
    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    .line 19
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    .line 23
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    .line 27
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    .line 31
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    .line 35
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    .line 39
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    .line 43
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    .line 47
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    .line 51
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    .line 55
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    .line 59
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    .line 63
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    .line 67
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    .line 71
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    .line 76
    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    .line 80
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    .line 84
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    .line 88
    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    .line 89
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

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
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 255
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 256
    mul-int/lit16 v3, v2, 0x90

    int-to-long v5, v3

    .line 257
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 256
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 262
    new-instance v4, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    invoke-direct {v4}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;-><init>()V

    .line 263
    mul-int/lit16 v5, v3, 0x90

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 264
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
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
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;)V"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 324
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 325
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 326
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 327
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x90

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 328
    nop

    :goto_0
    if-ge v4, v1, :cond_0

    .line 329
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    mul-int/lit16 v5, v4, 0x90

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 334
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 335
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 97
    return v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    if-eq v2, v3, :cond_2

    .line 100
    return v1

    .line 102
    :cond_2
    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    .line 103
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    if-eq v2, v3, :cond_3

    .line 104
    return v1

    .line 106
    :cond_3
    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    iget-byte v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    if-eq v2, v3, :cond_4

    .line 107
    return v1

    .line 109
    :cond_4
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    if-eq v2, v3, :cond_5

    .line 110
    return v1

    .line 112
    :cond_5
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    if-eq v2, v3, :cond_6

    .line 113
    return v1

    .line 115
    :cond_6
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 116
    return v1

    .line 118
    :cond_7
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    if-eq v2, v3, :cond_8

    .line 119
    return v1

    .line 121
    :cond_8
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    if-eq v2, v3, :cond_9

    .line 122
    return v1

    .line 124
    :cond_9
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    if-eq v2, v3, :cond_a

    .line 125
    return v1

    .line 127
    :cond_a
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    if-eq v2, v3, :cond_b

    .line 128
    return v1

    .line 130
    :cond_b
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    if-eq v2, v3, :cond_c

    .line 131
    return v1

    .line 133
    :cond_c
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 134
    return v1

    .line 136
    :cond_d
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    if-eq v2, v3, :cond_e

    .line 137
    return v1

    .line 139
    :cond_e
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    if-eq v2, v3, :cond_f

    .line 140
    return v1

    .line 142
    :cond_f
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    if-eq v2, v3, :cond_10

    .line 143
    return v1

    .line 145
    :cond_10
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    if-eq v2, v3, :cond_11

    .line 146
    return v1

    .line 148
    :cond_11
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    if-eq v2, v3, :cond_12

    .line 149
    return v1

    .line 151
    :cond_12
    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    iget-byte v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    if-eq v2, v3, :cond_13

    .line 152
    return v1

    .line 154
    :cond_13
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 155
    return v1

    .line 157
    :cond_14
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    if-eq v2, v3, :cond_15

    .line 158
    return v1

    .line 160
    :cond_15
    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    iget-byte v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    if-eq v2, v3, :cond_16

    .line 161
    return v1

    .line 163
    :cond_16
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 164
    return v1

    .line 166
    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 171
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    .line 173
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    .line 176
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    .line 182
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    .line 188
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    .line 189
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    .line 191
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    .line 192
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    .line 273
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    .line 274
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    .line 275
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    .line 276
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    .line 277
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    .line 279
    nop

    .line 280
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 279
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 284
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    .line 285
    const-wide/16 v4, 0x24

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    .line 286
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    .line 287
    const-wide/16 v4, 0x2c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    .line 288
    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    .line 289
    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    .line 291
    nop

    .line 292
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 291
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 296
    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    .line 297
    const-wide/16 v4, 0x4c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    .line 298
    const-wide/16 v4, 0x50

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    .line 299
    const-wide/16 v4, 0x54

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    .line 300
    const-wide/16 v4, 0x58

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    .line 301
    const-wide/16 v4, 0x5c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    .line 302
    const-wide/16 v4, 0x60

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    .line 304
    nop

    .line 305
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 304
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 309
    const-wide/16 v2, 0x70

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    .line 310
    const-wide/16 v2, 0x74

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    .line 311
    iget-object v0, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    const-wide/16 v2, 0x78

    add-long v2, p3, v2

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 312
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 246
    const-wide/16 v0, 0x90

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 247
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 248
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ".index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", .negStatusPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", .negStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", .mediaDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", .csMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", .state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-static {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", .mpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", .numberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", .prioritypresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .cliValidityPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", .isLoopBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", .uusInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 339
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 340
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 341
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 342
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 343
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 344
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 345
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 346
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 347
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 348
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 349
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 350
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 351
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 352
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 353
    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 354
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 355
    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 356
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 357
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 358
    const-wide/16 v0, 0x74

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 359
    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    const-wide/16 v1, 0x78

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 360
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 315
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 316
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 318
    return-void
.end method
