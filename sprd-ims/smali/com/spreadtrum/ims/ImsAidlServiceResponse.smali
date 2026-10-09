.class public Lcom/spreadtrum/ims/ImsAidlServiceResponse;
.super Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;
.source "ImsAidlServiceResponse.java"


# instance fields
.field mRil:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 41
    return-void
.end method

.method private responseLastCallFailCauseInfo(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 129
    if-eqz p1, :cond_1

    .line 130
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 131
    iget v1, p3, Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;->causeCode:I

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 132
    iget-object p3, p3, Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 133
    iget p3, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez p3, :cond_0

    .line 134
    iget-object p3, p1, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 136
    :cond_0
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p3, p1, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 138
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    .line 49
    if-eqz p0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 51
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public ImsAddGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 259
    return-void
.end method

.method public ImsEnableLocalConferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 299
    return-void
.end method

.method public ImsHandoverResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 264
    return-void
.end method

.method public ImsHoldSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 284
    return-void
.end method

.method public ImsInitialGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 254
    return-void
.end method

.method public ImsMuteSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 289
    return-void
.end method

.method public ImsSilenceSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 294
    return-void
.end method

.method public acceptCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 112
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processRequestAck(I)V

    .line 64
    return-void
.end method

.method public bootstrapAuthenticationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsebootstrapAuthentication(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V

    .line 542
    return-void
.end method

.method public callMediaChangeRequestTimeOutResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 412
    return-void
.end method

.method public closeDialogResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 607
    return-void
.end method

.method public conferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 107
    return-void
.end method

.method public dialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 511
    return-void
.end method

.method public dialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 77
    return-void
.end method

.method public emergencyDialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 516
    return-void
.end method

.method public emergencyDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 82
    return-void
.end method

.method public enableImsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 227
    return-void
.end method

.method public enableLocalHoldResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 402
    return-void
.end method

.method public enableWiFiParamReportResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 407
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 195
    return-void
.end method

.method public getCallForwardStatusUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 343
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_0
    if-eqz v0, :cond_2

    .line 347
    iget p2, p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 348
    iget-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 352
    :cond_2
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 174
    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    .line 173
    invoke-static {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 175
    return-void
.end method

.method public getClipResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 168
    return-void
.end method

.method public getClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;II)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-static {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 158
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 205
    return-void
.end method

.method public getImsBearerStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 372
    return-void
.end method

.method public getImsCurrentCallsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallVoLTE;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    .line 239
    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 240
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 244
    :cond_1
    return-void
.end method

.method public getImsPaniInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_1

    .line 429
    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 430
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 434
    :cond_1
    return-void
.end method

.method public getImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public getImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Ljava/lang/String;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_1

    .line 461
    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 462
    iget-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V

    .line 466
    :cond_1
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 71
    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    .line 70
    invoke-static {p2, v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 72
    return-void
.end method

.method public getImsStackVersionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 553
    return-void
.end method

.method public getImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public getImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 309
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 616
    const-string v0, "f53a892d42fdfb0cbd0c5a33c747541660d182d8"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public getLastCallFailCauseResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V
    .locals 1

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->responseLastCallFailCauseInfo(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V

    .line 123
    return-void
.end method

.method public getPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseString(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public getRTTAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 506
    return-void
.end method

.method public getSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 481
    return-void
.end method

.method public getSpecialRatcapResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 422
    return-void
.end method

.method public getSrvccCapbilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 439
    return-void
.end method

.method public getVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 417
    return-void
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 486
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 97
    return-void
.end method

.method public hangupResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 87
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 92
    return-void
.end method

.method public holdActiveCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 491
    return-void
.end method

.method public initISIMResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 222
    return-void
.end method

.method public notifyDataRouterUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 387
    return-void
.end method

.method public notifyHandoverCallInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 392
    return-void
.end method

.method public notifyImsCallEndResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 279
    return-void
.end method

.method public notifyImsHandoverStatusUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 269
    return-void
.end method

.method public notifyImsNetworkInfoChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 274
    return-void
.end method

.method public notifyVoWifiCallStateChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 382
    return-void
.end method

.method public notifyVoWifiEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 377
    return-void
.end method

.method public notifyVoWifiWhiteListResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 548
    return-void
.end method

.method public publishCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsePublishAndSubscribe(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V

    .line 568
    return-void
.end method

.method public queryColpResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 324
    return-void
.end method

.method public queryColrResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 329
    return-void
.end method

.method public rejectCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 117
    return-void
.end method

.method public requestVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 314
    return-void
.end method

.method public responseVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 319
    return-void
.end method

.method public sendDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 148
    return-void
.end method

.method public sendOptionsCapabilityRequestResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseOptionsCapability(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V

    .line 582
    return-void
.end method

.method public sendRTTMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 526
    return-void
.end method

.method public sendSipMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 587
    return-void
.end method

.method public sendUssdResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 215
    return-void
.end method

.method public separateConnectionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 185
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 200
    return-void
.end method

.method public setCallForwardUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 357
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 180
    return-void
.end method

.method public setCarrierImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 536
    return-void
.end method

.method public setClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 163
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v1, v0, p1, v2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseInts(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[I)V

    .line 210
    return-void
.end method

.method public setImsInitialAttachApnResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 362
    return-void
.end method

.method public setImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 444
    return-void
.end method

.method public setImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 471
    return-void
.end method

.method public setImsSmscAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 367
    return-void
.end method

.method public setImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 304
    return-void
.end method

.method public setLocalToneResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 612
    return-void
.end method

.method public setMuteResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 190
    return-void
.end method

.method public setPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 496
    return-void
.end method

.method public setRTTChannelEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 521
    return-void
.end method

.method public setRTTEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 501
    return-void
.end method

.method public setSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 476
    return-void
.end method

.method public setUceCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsetUceCapabilities(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V

    .line 561
    return-void
.end method

.method public setVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 397
    return-void
.end method

.method public startDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 143
    return-void
.end method

.method public stopDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 153
    return-void
.end method

.method public subscribeForCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioResponse;->responsePublishAndSubscribe(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V

    .line 575
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 102
    return-void
.end method

.method public triggerFullNetworkRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 602
    return-void
.end method

.method public triggerSipDelegateDeregistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 597
    return-void
.end method

.method public updateCLIPResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 334
    return-void
.end method

.method public updateSipDelegateRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 592
    return-void
.end method

.method public videoPhoneDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 232
    return-void
.end method

.method public volteCallFallBackToVoiceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceResponse;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsRadioResponse;->responseVoid(ILcom/spreadtrum/ims/ImsRadioInterface;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V

    .line 249
    return-void
.end method
