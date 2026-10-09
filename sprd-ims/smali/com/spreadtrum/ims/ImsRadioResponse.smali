.class public Lcom/spreadtrum/ims/ImsRadioResponse;
.super Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;
.source "ImsRadioResponse.java"


# instance fields
.field mRil:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 40
    return-void
.end method

.method public static responseIntArrayList(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/spreadtrum/ims/ImsRadioInterface;",
            "Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 246
    if-eqz p0, :cond_2

    .line 247
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 248
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 249
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget p3, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez p3, :cond_1

    .line 252
    iget-object p3, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 254
    :cond_1
    invoke-virtual {p1, p0, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 256
    :cond_2
    return-void
.end method

.method private responseIntArrayList(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 78
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 79
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget p2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 82
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 84
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 86
    :cond_2
    return-void
.end method

.method public static varargs responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V
    .locals 3

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 210
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseIntArrayList(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 213
    return-void
.end method

.method private varargs responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 68
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseIntArrayList(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 71
    return-void
.end method

.method private responseLastCallFailCauseInfo(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 443
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 444
    iget v2, p2, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 445
    iget-object p2, p2, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 446
    iget p2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 447
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 449
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 451
    :cond_1
    return-void
.end method

.method public static responseOptionsCapability(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V
    .locals 4

    .line 373
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 375
    if-eqz p0, :cond_1

    .line 376
    const/4 v0, 0x0

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v2, p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;->theirCaps:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 379
    iget v2, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    .line 380
    new-instance v0, Lcom/spreadtrum/ims/OptionsResult;

    iget v2, p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;->code:I

    iget v3, p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;->sipCode:I

    iget-object p3, p3, Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;->reason:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p3, v1}, Lcom/spreadtrum/ims/OptionsResult;-><init>(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 383
    iget-object p3, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 385
    :cond_0
    invoke-virtual {p1, p0, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 387
    :cond_1
    return-void
.end method

.method public static responsePublishAndSubscribe(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 8

    .line 356
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 358
    if-eqz p0, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 360
    iget v1, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 361
    new-instance v0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;

    iget v3, p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->code:I

    iget v4, p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->sipCode:I

    iget-object v5, p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    iget v6, p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    iget-object v7, p3, Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/spreadtrum/ims/PublishAndSubscribeResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    .line 364
    iget-object p3, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 366
    :cond_0
    invoke-virtual {p1, p0, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 368
    :cond_1
    return-void
.end method

.method public static responseString(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 1

    .line 268
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 270
    if-eqz p0, :cond_1

    .line 271
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 274
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 276
    :cond_1
    return-void
.end method

.method private responseString(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 109
    :cond_1
    return-void
.end method

.method public static responseStringArrayList(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/spreadtrum/ims/ImsRadioInterface;",
            "Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 306
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 307
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 310
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 312
    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/spreadtrum/ims/ImsRadioInterface;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spreadtrum/ims/ImsRadioInterface;",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 125
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 126
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget p2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 129
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 131
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 133
    :cond_2
    return-void
.end method

.method public static varargs responseStrings(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 289
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseStringArrayList(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 292
    return-void
.end method

.method private varargs responseStrings(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 114
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {p2, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseStringArrayList(Lcom/spreadtrum/ims/ImsRadioInterface;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 117
    return-void
.end method

.method public static responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 223
    const/4 p0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 225
    if-eqz p0, :cond_1

    .line 226
    const/4 v0, 0x0

    .line 227
    iget v1, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 230
    :cond_0
    invoke-virtual {p1, p0, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 232
    :cond_1
    return-void
.end method

.method private responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 93
    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 94
    iget-object v2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 98
    :cond_1
    return-void
.end method

.method public static responsebootstrapAuthentication(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V
    .locals 4

    .line 318
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 319
    if-eqz p0, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 321
    iget v1, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 322
    new-instance v0, Lcom/android/ims/internal/GbaAuthResult;

    iget v1, p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;->token:I

    iget v2, p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;->failureReason:I

    iget-object v3, p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;->gbaKey:Ljava/lang/String;

    .line 323
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object p3, p3, Lvendor/unisoc/hardware/radio/ims/GbaResult;->btId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/android/ims/internal/GbaAuthResult;-><init>(II[BLjava/lang/String;)V

    .line 324
    iget-object p3, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 326
    :cond_0
    invoke-virtual {p1, p0, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 328
    :cond_1
    return-void
.end method

.method private responsebootstrapAuthentication(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    const/4 v1, 0x0

    .line 139
    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 140
    new-instance v1, Lcom/android/ims/internal/GbaAuthResult;

    iget v2, p2, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;->token:I

    iget v3, p2, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;->failureReason:I

    iget-object v4, p2, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;->gbaKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object p2, p2, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;->btId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/ims/internal/GbaAuthResult;-><init>(II[BLjava/lang/String;)V

    .line 141
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void
.end method

.method public static responsetUceCapabilities(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V
    .locals 7

    .line 333
    invoke-virtual {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    .line 335
    if-eqz p0, :cond_2

    .line 336
    array-length v0, p3

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    nop

    .line 339
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 340
    new-instance v3, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;

    aget-object v4, p3, v2

    iget v4, v4, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;->radioTech:I

    aget-object v5, p3, v2

    iget v5, v5, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;->capabilities:I

    aget-object v6, p3, v2

    iget v6, v6, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;->reason:I

    invoke-direct {v3, v4, v5, v6}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;-><init>(III)V

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget p3, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez p3, :cond_1

    .line 347
    iget-object p3, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 349
    :cond_1
    invoke-virtual {p1, p0, p2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 351
    :cond_2
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    .line 48
    if-eqz p0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public ImsAddGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 548
    return-void
.end method

.method public ImsEnableLocalConferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 580
    return-void
.end method

.method public ImsHandoverResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 552
    return-void
.end method

.method public ImsHoldSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 567
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 568
    return-void
.end method

.method public ImsInitialGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 543
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 544
    return-void
.end method

.method public ImsMuteSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 572
    return-void
.end method

.method public ImsSilenceSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 576
    return-void
.end method

.method public acceptCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 427
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processRequestAck(I)V

    .line 63
    return-void
.end method

.method public bootstrapAuthenticationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;)V
    .locals 0

    .line 766
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsebootstrapAuthentication(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;)V

    .line 767
    return-void
.end method

.method public callMediaChangeRequestTimeOutResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 668
    return-void
.end method

.method public closeDialogResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 816
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 817
    return-void
.end method

.method public conferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 423
    return-void
.end method

.method public dialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 743
    return-void
.end method

.method public dialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 399
    return-void
.end method

.method public emergencyDialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 747
    return-void
.end method

.method public emergencyDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 403
    return-void
.end method

.method public enableImsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 521
    return-void
.end method

.method public enableLocalHoldResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 660
    return-void
.end method

.method public enableWiFiParamReportResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 664
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 496
    return-void
.end method

.method public getCallForwardStatusUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;",
            ">;)V"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_1

    .line 615
    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 616
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 620
    :cond_1
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .locals 2

    .line 479
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 480
    return-void
.end method

.method public getClipResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 474
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 475
    return-void
.end method

.method public getClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;II)V
    .locals 2

    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 467
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 503
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 504
    return-void
.end method

.method public getImsBearerStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 635
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 636
    return-void
.end method

.method public getImsCurrentCallsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    .line 531
    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 532
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 536
    :cond_1
    return-void
.end method

.method public getImsPaniInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1

    .line 682
    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 683
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 687
    :cond_1
    return-void
.end method

.method public getImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public getImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseStringArrayList(Lcom/spreadtrum/ims/ImsRadioInterface;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 707
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V
    .locals 2

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 395
    return-void
.end method

.method public getImsStackVersionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 775
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 776
    return-void
.end method

.method public getImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public getImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 587
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 588
    return-void
.end method

.method public getLastCallFailCauseResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseLastCallFailCauseInfo(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 436
    return-void
.end method

.method public getPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public getRTTAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 738
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 739
    return-void
.end method

.method public getSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 718
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 719
    return-void
.end method

.method public getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 675
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 676
    return-void
.end method

.method public getSrvccCapbilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 690
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 691
    return-void
.end method

.method public getVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 671
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 672
    return-void
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 722
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 723
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 415
    return-void
.end method

.method public hangupResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 407
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 411
    return-void
.end method

.method public holdActiveCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 727
    return-void
.end method

.method public initISIMResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 516
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 517
    return-void
.end method

.method public notifyDataRouterUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 648
    return-void
.end method

.method public notifyHandoverCallInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 652
    return-void
.end method

.method public notifyImsCallEndResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 564
    return-void
.end method

.method public notifyImsHandoverStatusUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 555
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 556
    return-void
.end method

.method public notifyImsNetworkInfoChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 560
    return-void
.end method

.method public notifyVoWifiCallStateChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 644
    return-void
.end method

.method public notifyVoWifiEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 640
    return-void
.end method

.method public notifyVoWifiWhiteListResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 772
    return-void
.end method

.method public publishCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V
    .locals 0

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsePublishAndSubscribe(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V

    .line 787
    return-void
.end method

.method public queryColpResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 599
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 600
    return-void
.end method

.method public queryColrResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 603
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 604
    return-void
.end method

.method public rejectCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 431
    return-void
.end method

.method public requestVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 592
    return-void
.end method

.method public responseOptionsCapability(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;)V
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 189
    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 190
    new-instance v1, Lcom/spreadtrum/ims/OptionsResult;

    iget v2, p2, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;->code:I

    iget v3, p2, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;->sipCode:I

    iget-object v4, p2, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;->reason:Ljava/lang/String;

    iget-object p2, p2, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;->theirCaps:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v5, Lcom/spreadtrum/ims/ImsRadioResponse$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/spreadtrum/ims/ImsRadioResponse$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/spreadtrum/ims/OptionsResult;-><init>(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 195
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 197
    :cond_1
    return-void
.end method

.method public responsePublishAndSubscribe(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V
    .locals 9

    .line 170
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    const/4 v1, 0x0

    .line 174
    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 175
    new-instance v1, Lcom/spreadtrum/ims/PublishAndSubscribeResult;

    iget v4, p2, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->code:I

    iget v5, p2, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->sipCode:I

    iget-object v6, p2, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reason:Ljava/lang/String;

    iget v7, p2, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderCause:I

    iget-object v8, p2, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->reasonHeaderText:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/spreadtrum/ims/PublishAndSubscribeResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    .line 178
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 182
    :cond_1
    return-void
.end method

.method public responseVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 596
    return-void
.end method

.method public responsetUceCapabilities(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    nop

    .line 155
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 156
    new-instance v4, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;

    iget v5, v5, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;->radioTech:I

    .line 157
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;

    iget v6, v6, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;->capabilities:I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;

    iget v7, v7, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;->reason:I

    invoke-direct {v4, v5, v6, v7}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;-><init>(III)V

    .line 159
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget p2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 163
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 165
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 167
    :cond_2
    return-void
.end method

.method public sendDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 459
    return-void
.end method

.method public sendOptionsCapabilityRequestResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;)V
    .locals 0

    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseOptionsCapability(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;)V

    .line 797
    return-void
.end method

.method public sendRTTMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 754
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 755
    return-void
.end method

.method public sendSipMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 801
    return-void
.end method

.method public sendUssdResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 512
    return-void
.end method

.method public separateConnectionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 488
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 500
    return-void
.end method

.method public setCallForwardUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 623
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 624
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 484
    return-void
.end method

.method public setCarrierImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 762
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 763
    return-void
.end method

.method public setClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 471
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V
    .locals 2

    .line 507
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;[I)V

    .line 508
    return-void
.end method

.method public setImsInitialAttachApnResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 628
    return-void
.end method

.method public setImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 694
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 695
    return-void
.end method

.method public setImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 711
    return-void
.end method

.method public setImsSmscAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 632
    return-void
.end method

.method public setImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 584
    return-void
.end method

.method public setLocalToneResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 821
    return-void
.end method

.method public setMuteResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 492
    return-void
.end method

.method public setPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 731
    return-void
.end method

.method public setRTTChannelEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 751
    return-void
.end method

.method public setRTTEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 735
    return-void
.end method

.method public setSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 714
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 715
    return-void
.end method

.method public setUceCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;",
            ">;)V"
        }
    .end annotation

    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsetUceCapabilities(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 782
    return-void
.end method

.method public setVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 656
    return-void
.end method

.method public startDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 455
    return-void
.end method

.method public stopDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 463
    return-void
.end method

.method public subscribeForCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V
    .locals 0

    .line 791
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsePublishAndSubscribe(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V

    .line 792
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 419
    return-void
.end method

.method public triggerFullNetworkRegistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 813
    return-void
.end method

.method public triggerSipDelegateDeregistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 809
    return-void
.end method

.method public updateCLIPResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 608
    return-void
.end method

.method public updateSipDelegateRegistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 805
    return-void
.end method

.method public videoPhoneDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 525
    return-void
.end method

.method public volteCallFallBackToVoiceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 540
    return-void
.end method
