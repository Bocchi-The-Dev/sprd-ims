.class public Lcom/spreadtrum/ims/ImsRadioServiceProxy;
.super Ljava/lang/Object;
.source "ImsRadioServiceProxy.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImsRadioServiceProxy"


# instance fields
.field private volatile mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

.field mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field mIsAidl:Z

.field volatile mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 35
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    return-void
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1293
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1298
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 1299
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    return-object v0
.end method


# virtual methods
.method public ImsAddGroupCall(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsAddGroupCall(ILjava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsAddGroupCall(ILjava/lang/String;)V

    .line 538
    :goto_0
    return-void
.end method

.method public ImsEnableLocalConference(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsEnableLocalConference(IZ)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsEnableLocalConference(IZ)V

    .line 749
    :goto_0
    return-void
.end method

.method public ImsHandover(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsHandover(II)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsHandover(II)V

    .line 676
    :goto_0
    return-void
.end method

.method public ImsHoldSingleCall(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsHoldSingleCall(IIZ)V

    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsHoldSingleCall(IIZ)V

    .line 722
    :goto_0
    return-void
.end method

.method public ImsInitialGroupCall(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsInitialGroupCall(ILjava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsInitialGroupCall(ILjava/lang/String;)V

    .line 529
    :goto_0
    return-void
.end method

.method public ImsMuteSingleCall(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsMuteSingleCall(IIZ)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsMuteSingleCall(IIZ)V

    .line 731
    :goto_0
    return-void
.end method

.method public ImsSilenceSingleCall(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->ImsSilenceSingleCall(IIZ)V

    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->ImsSilenceSingleCall(IIZ)V

    .line 740
    :goto_0
    return-void
.end method

.method public acceptCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->acceptCall(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->acceptCall(I)V

    .line 270
    :goto_0
    return-void
.end method

.method public bootstrapAuthentication(IIILjava/lang/String;[BZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    move-object v0, p0

    move-object/from16 v5, p5

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    iget-object v0, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->bootstrapAuthentication(IIILjava/lang/String;[BZ)V

    goto :goto_1

    .line 1096
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    const/4 v1, 0x0

    :goto_0
    array-length v2, v5

    if-ge v1, v2, :cond_2

    .line 1098
    aget-byte v2, v5, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v0, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-object v5, v0

    check-cast v5, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1102
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->bootstrapAuthentication(IIILjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 1105
    :goto_1
    return-void
.end method

.method public callMediaChangeRequestTimeOut(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->callMediaChangeRequestTimeOut(II)V

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->callMediaChangeRequestTimeOut(II)V

    .line 848
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 89
    sget-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 91
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    goto :goto_0

    .line 94
    :cond_0
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 96
    :goto_0
    return-void
.end method

.method public closeDialog(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->closeDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1278
    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->closeDialog(ILjava/lang/String;)V

    .line 1280
    :goto_0
    return-void
.end method

.method public conference(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->conference(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->conference(I)V

    .line 261
    :goto_0
    return-void
.end method

.method public dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/Dial;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/Dial;-><init>()V

    .line 143
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->address:Ljava/lang/String;

    .line 144
    iput p3, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->clir:I

    .line 145
    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 146
    new-instance p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;

    invoke-direct {p3}, Lvendor/unisoc/hardware/radio/ims/UusInfo;-><init>()V

    .line 147
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v1

    iput v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusType:I

    .line 148
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v1

    iput v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusDcs:I

    .line 149
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusData:Ljava/lang/String;

    .line 150
    const/4 p4, 0x1

    new-array p4, p4, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    aput-object p3, p4, p2

    iput-object p4, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    new-array p2, p2, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 154
    :goto_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->dial(ILvendor/unisoc/hardware/radio/ims/Dial;)V

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 157
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->address:Ljava/lang/String;

    .line 158
    iput p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->clir:I

    .line 159
    if-eqz p4, :cond_3

    .line 160
    new-instance p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    .line 162
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p3

    iput p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusType:I

    .line 163
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p3

    iput p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusDcs:I

    .line 164
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 165
    iget-object p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->dial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 169
    :goto_1
    return-void
.end method

.method public dialRTT(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/Dial;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/Dial;-><init>()V

    .line 954
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->address:Ljava/lang/String;

    .line 955
    iput p3, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->clir:I

    .line 956
    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 957
    new-instance p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;

    invoke-direct {p3}, Lvendor/unisoc/hardware/radio/ims/UusInfo;-><init>()V

    .line 959
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v1

    iput v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusType:I

    .line 960
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v1

    iput v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusDcs:I

    .line 961
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusData:Ljava/lang/String;

    .line 962
    const/4 p4, 0x1

    new-array p4, p4, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    aput-object p3, p4, p2

    iput-object p4, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 963
    goto :goto_0

    .line 964
    :cond_1
    new-array p2, p2, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 967
    :goto_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->dialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;)V

    .line 968
    goto :goto_1

    .line 969
    :cond_2
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 971
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->address:Ljava/lang/String;

    .line 972
    iput p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->clir:I

    .line 973
    if-eqz p4, :cond_3

    .line 974
    new-instance p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    .line 976
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p3

    iput p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusType:I

    .line 977
    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p3

    iput p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusDcs:I

    .line 978
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 979
    iget-object p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_3
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->dialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 984
    :goto_1
    return-void
.end method

.method public emergencyDial(ILjava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZI",
            "Lcom/android/internal/telephony/UUSInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p8

    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    new-instance v7, Lvendor/unisoc/hardware/radio/ims/Dial;

    invoke-direct {v7}, Lvendor/unisoc/hardware/radio/ims/Dial;-><init>()V

    .line 178
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->address:Ljava/lang/String;

    .line 179
    iput v3, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->clir:I

    .line 180
    const/4 v1, 0x0

    if-eqz p9, :cond_1

    .line 181
    new-instance v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;

    invoke-direct {v3}, Lvendor/unisoc/hardware/radio/ims/UusInfo;-><init>()V

    .line 182
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusType:I

    .line 183
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusDcs:I

    .line 184
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusData:Ljava/lang/String;

    .line 185
    const/4 v4, 0x1

    new-array v4, v4, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    aput-object v3, v4, v1

    iput-object v4, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 186
    goto :goto_0

    .line 187
    :cond_1
    new-array v3, v1, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    iput-object v3, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 190
    :goto_0
    nop

    .line 191
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 192
    move v4, v1

    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 193
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    :cond_2
    iget-object v5, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    if-eqz v2, :cond_3

    move-object v9, v3

    goto :goto_2

    :cond_3
    new-array v0, v1, [Ljava/lang/String;

    move-object v9, v0

    :goto_2
    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->emergencyDial(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V

    .line 198
    goto :goto_4

    .line 199
    :cond_4
    new-instance v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v12}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 200
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->address:Ljava/lang/String;

    .line 201
    iput v3, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->clir:I

    .line 202
    if-eqz p9, :cond_5

    .line 203
    new-instance v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    .line 204
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v3

    iput v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusType:I

    .line 205
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v3

    iput v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusDcs:I

    .line 206
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 207
    iget-object v3, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5
    iget-object v10, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object v14, v0

    .line 209
    move/from16 v11, p1

    move/from16 v13, p3

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-interface/range {v10 .. v17}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->emergencyDial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 216
    :goto_4
    return-void
.end method

.method public emergencyDialRTT(ILjava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZI",
            "Lcom/android/internal/telephony/UUSInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p8

    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 991
    new-instance v7, Lvendor/unisoc/hardware/radio/ims/Dial;

    invoke-direct {v7}, Lvendor/unisoc/hardware/radio/ims/Dial;-><init>()V

    .line 992
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->address:Ljava/lang/String;

    .line 993
    iput v3, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->clir:I

    .line 994
    const/4 v1, 0x0

    if-eqz p9, :cond_1

    .line 995
    new-instance v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;

    invoke-direct {v3}, Lvendor/unisoc/hardware/radio/ims/UusInfo;-><init>()V

    .line 997
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusType:I

    .line 998
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusDcs:I

    .line 999
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusData:Ljava/lang/String;

    .line 1000
    const/4 v4, 0x1

    new-array v4, v4, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    aput-object v3, v4, v1

    iput-object v4, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 1001
    goto :goto_0

    .line 1002
    :cond_1
    new-array v3, v1, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    iput-object v3, v7, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 1005
    :goto_0
    nop

    .line 1006
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1007
    move v4, v1

    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1008
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1007
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1011
    :cond_2
    iget-object v5, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    if-eqz v2, :cond_3

    move-object v9, v3

    goto :goto_2

    :cond_3
    new-array v0, v1, [Ljava/lang/String;

    move-object v9, v0

    :goto_2
    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->emergencyDialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V

    .line 1013
    goto :goto_4

    .line 1014
    :cond_4
    new-instance v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v12}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 1015
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->address:Ljava/lang/String;

    .line 1016
    iput v3, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->clir:I

    .line 1017
    if-eqz p9, :cond_5

    .line 1018
    new-instance v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    .line 1020
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v3

    iput v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusType:I

    .line 1021
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v3

    iput v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusDcs:I

    .line 1022
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 1023
    iget-object v3, v12, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_5
    iget-object v10, v0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object v14, v0

    .line 1026
    move/from16 v11, p1

    move/from16 v13, p3

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-interface/range {v10 .. v17}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->emergencyDialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 1033
    :goto_4
    return-void
.end method

.method public enableIms(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->enableIms(IZ)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->enableIms(IZ)V

    .line 631
    :goto_0
    return-void
.end method

.method public enableLocalHold(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->enableLocalHold(IZ)V

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->enableLocalHold(IZ)V

    .line 830
    :goto_0
    return-void
.end method

.method public enableWiFiParamReport(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 833
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->enableWiFiParamReport(IZ)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->enableWiFiParamReport(IZ)V

    .line 839
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->explicitCallTransfer(I)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->explicitCallTransfer(I)V

    .line 288
    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/ims/IImsRadio;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    return-object v0
.end method

.method public getCallForwardStatusUri(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 586
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;-><init>()V

    .line 588
    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->reason:I

    .line 590
    if-eqz p4, :cond_1

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 591
    iput v1, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->numberType:I

    goto :goto_0

    .line 593
    :cond_1
    iput v3, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->numberType:I

    .line 595
    :goto_0
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ton:I

    .line 596
    iput p3, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->serviceClass:I

    .line 597
    invoke-direct {p0, p4}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 598
    invoke-direct {p0, p5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 599
    iput v3, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->status:I

    .line 600
    iput v2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->timeSeconds:I

    .line 602
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getCallForwardStatusUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V

    .line 603
    goto :goto_2

    .line 604
    :cond_2
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 606
    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    .line 608
    if-eqz p4, :cond_3

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 609
    iput v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    goto :goto_1

    .line 611
    :cond_3
    iput v3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    .line 613
    :goto_1
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    .line 614
    iput p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    .line 615
    invoke-direct {p0, p4}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 616
    invoke-direct {p0, p5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 617
    iput v3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    .line 618
    iput v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    .line 620
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getCallForwardStatusUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 622
    :goto_2
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getCallWaiting(II)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getCallWaiting(II)V

    .line 360
    :goto_0
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getClip(I)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getClip(I)V

    .line 378
    :goto_0
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getClir(I)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getClir(I)V

    .line 342
    :goto_0
    return-void
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    :goto_0
    return-void
.end method

.method public getHidl()Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    return-object v0
.end method

.method public getImsBearerState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsBearerState(I)V

    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsBearerState(I)V

    .line 640
    :goto_0
    return-void
.end method

.method public getImsCurrentCalls(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsCurrentCalls(I)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsCurrentCalls(I)V

    .line 456
    :goto_0
    return-void
.end method

.method public getImsPaniInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsPaniInfo(I)V

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsPaniInfo(I)V

    .line 875
    :goto_0
    return-void
.end method

.method public getImsPcscfAddress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsPcscfAddress(I)V

    goto :goto_0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsPcscfAddress(I)V

    .line 785
    :goto_0
    return-void
.end method

.method public getImsRegAddress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsRegAddress(I)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsRegAddress(I)V

    .line 803
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsRegistrationState(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsRegistrationState(I)V

    .line 126
    :goto_0
    return-void
.end method

.method public getImsStackVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsStackVersion(I)V

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsStackVersion(I)V

    .line 1069
    :goto_0
    return-void
.end method

.method public getImsUserAgent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsUserAgent(I)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsUserAgent(I)V

    .line 1078
    :goto_0
    return-void
.end method

.method public getImsVoiceCallAvailability(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getImsVoiceCallAvailability(I)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getImsVoiceCallAvailability(I)V

    .line 474
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getLastCallFailCause(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getLastCallFailCause(I)V

    .line 297
    :goto_0
    return-void
.end method

.method public getPAU(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getPAU(I)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getPAU(I)V

    .line 794
    :goto_0
    return-void
.end method

.method public getRTTAllowedPLMN(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getRTTAllowedPLMN(I)V

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getRTTAllowedPLMN(I)V

    .line 947
    :goto_0
    return-void
.end method

.method public getSmsBearer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 888
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getSmsBearer(I)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getSmsBearer(I)V

    .line 893
    :goto_0
    return-void
.end method

.method public getSpecialRatcap(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getSpecialRatcap(II)V

    goto :goto_0

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getSpecialRatcap(II)V

    .line 866
    :goto_0
    return-void
.end method

.method public getSrvccCapbility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getSrvccCapbility(I)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getSrvccCapbility(I)V

    .line 776
    :goto_0
    return-void
.end method

.method public getVideoResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getVideoResolution(I)V

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getVideoResolution(I)V

    .line 857
    :goto_0
    return-void
.end method

.method public getVoLTEAllowedPLMN(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 906
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->getVoLTEAllowedPLMN(I)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getVoLTEAllowedPLMN(I)V

    .line 911
    :goto_0
    return-void
.end method

.method public hangup(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->hangup(II)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->hangup(II)V

    .line 243
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->hangupForegroundResumeBackground(I)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->hangupForegroundResumeBackground(I)V

    .line 234
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->hangupWaitingOrBackground(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->hangupWaitingOrBackground(I)V

    .line 225
    :goto_0
    return-void
.end method

.method public holdActiveCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->holdActiveCall(I)V

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->holdActiveCall(I)V

    .line 920
    :goto_0
    return-void
.end method

.method public initISIM(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->initISIM(I)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->initISIM(I)V

    .line 483
    :goto_0
    return-void
.end method

.method public isAidl()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mIsAidl:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataRouterUpdate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyDataRouterUpdate(I)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyDataRouterUpdate(I)V

    .line 667
    :goto_0
    return-void
.end method

.method public notifyHandoverCallInfo(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyHandoverCallInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyHandoverCallInfo(ILjava/lang/String;)V

    .line 758
    :goto_0
    return-void
.end method

.method public notifyImsCallEnd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyImsCallEnd(II)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyImsCallEnd(II)V

    .line 713
    :goto_0
    return-void
.end method

.method public notifyImsHandoverStatusUpdate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyImsHandoverStatusUpdate(II)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyImsHandoverStatusUpdate(II)V

    .line 685
    :goto_0
    return-void
.end method

.method public notifyImsNetworkInfoChanged(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;-><init>()V

    .line 692
    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->info:Ljava/lang/String;

    .line 693
    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->type:I

    .line 695
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyImsNetworkInfoChanged(ILvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V

    .line 696
    goto :goto_0

    .line 697
    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 699
    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->info:Ljava/lang/String;

    .line 700
    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->type:I

    .line 702
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 704
    :goto_0
    return-void
.end method

.method public notifyVoWifiCallStateChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyVoWifiCallStateChanged(IZ)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyVoWifiCallStateChanged(IZ)V

    .line 658
    :goto_0
    return-void
.end method

.method public notifyVoWifiEnable(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyVoWifiEnable(IZ)V

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyVoWifiEnable(IZ)V

    .line 649
    :goto_0
    return-void
.end method

.method public notifyVoWifiWhiteList(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->notifyVoWifiWhiteList(II)V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->notifyVoWifiWhiteList(II)V

    .line 1060
    :goto_0
    return-void
.end method

.method public publishCapabilities(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->publishCapabilities(ILjava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1148
    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->publishCapabilities(ILjava/lang/String;)V

    .line 1150
    :goto_0
    return-void
.end method

.method public queryColp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->queryColp(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->queryColp(I)V

    .line 387
    :goto_0
    return-void
.end method

.method public queryColr(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->queryColr(I)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->queryColr(I)V

    .line 396
    :goto_0
    return-void
.end method

.method public rejectCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->rejectCall(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->rejectCall(I)V

    .line 279
    :goto_0
    return-void
.end method

.method public requestVolteCallMediaChange(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->requestVolteCallMediaChange(III)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->requestVolteCallMediaChange(III)V

    .line 492
    :goto_0
    return-void
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->responseAcknowledgement()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->responseAcknowledgement()V

    .line 117
    :goto_0
    return-void
.end method

.method public responseVolteCallMediaChange(IIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->responseVolteCallMediaChange(IIZI)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->responseVolteCallMediaChange(IIZI)V

    .line 502
    :goto_0
    return-void
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->sendDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->sendDtmf(ILjava/lang/String;)V

    .line 315
    :goto_0
    return-void
.end method

.method public sendOptionsCapabilityRequest(ILjava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 1185
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1189
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    .line 1190
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p3, v1

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->sendOptionsCapabilityRequest(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1195
    goto :goto_3

    .line 1196
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 1198
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1199
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1202
    :cond_4
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast p3, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1203
    invoke-interface {p3, p1, p2, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->sendOptionsCapabilityRequest(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 1205
    :goto_3
    return-void
.end method

.method public sendRTTMessage(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->sendRTTMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->sendRTTMessage(ILjava/lang/String;)V

    .line 1051
    :goto_0
    return-void
.end method

.method public sendSipMessage(IILandroid/telephony/ims/SipMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;-><init>()V

    .line 1212
    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->delegateid:I

    .line 1213
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 1214
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 1216
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 1217
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->callId:Ljava/lang/String;

    .line 1219
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->sendSipMessage(ILvendor/unisoc/hardware/radio/ims/RcsSipMessage;)V

    .line 1220
    goto :goto_0

    .line 1221
    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;-><init>()V

    .line 1223
    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    .line 1224
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 1225
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 1226
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getContent()[B

    move-result-object p2

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    .line 1227
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 1228
    invoke-virtual {p3}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    .line 1230
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast p2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1231
    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->sendSipMessage(ILvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)V

    .line 1233
    :goto_0
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->sendUssd(ILjava/lang/String;)V

    .line 425
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/ims/IImsRadio;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 72
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    .line 73
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mIsAidl:Z

    .line 74
    const-string p1, "ImsRadioServiceProxy"

    const-string p2, "AIDL initialized"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void
.end method

.method public setCallForwardUri(IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 544
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;-><init>()V

    .line 546
    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->status:I

    .line 547
    iput p3, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->reason:I

    .line 549
    if-eqz p5, :cond_1

    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 550
    iput v1, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->numberType:I

    goto :goto_0

    .line 552
    :cond_1
    iput v2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->numberType:I

    .line 554
    :goto_0
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ton:I

    .line 555
    iput p4, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->serviceClass:I

    .line 556
    invoke-direct {p0, p5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 557
    iput p6, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->timeSeconds:I

    .line 558
    invoke-direct {p0, p7}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 560
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setCallForwardUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V

    .line 561
    goto :goto_2

    .line 562
    :cond_2
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 564
    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    .line 565
    iput p3, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    .line 567
    if-eqz p5, :cond_3

    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 568
    iput v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    goto :goto_1

    .line 570
    :cond_3
    iput v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    .line 572
    :goto_1
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    .line 573
    iput p4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    .line 574
    invoke-direct {p0, p5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    .line 575
    iput p6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    .line 576
    invoke-direct {p0, p7}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    .line 578
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setCallForwardUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 580
    :goto_2
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setCallWaiting(IZI)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setCallWaiting(IZI)V

    .line 369
    :goto_0
    return-void
.end method

.method public setCarrierImsUserAgent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setCarrierImsUserAgent(ILjava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->setCarrierImsUserAgent(ILjava/lang/String;)V

    .line 1087
    :goto_0
    return-void
.end method

.method public setClir(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setClir(II)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setClir(II)V

    .line 351
    :goto_0
    return-void
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 416
    :goto_0
    return-void
.end method

.method public setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 52
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 53
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mIsAidl:Z

    .line 54
    const-string p1, "ImsRadioServiceProxy"

    const-string p2, "HIDL initialized"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public setImsPcscfAddress(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setImsPcscfAddress(ILjava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsPcscfAddress(ILjava/lang/String;)V

    .line 767
    :goto_0
    return-void
.end method

.method public setImsRegAddress(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setImsRegAddress(IILjava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsRegAddress(IILjava/lang/String;)V

    .line 884
    :goto_0
    return-void
.end method

.method public setImsSmscAddress(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setImsSmscAddress(ILjava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsSmscAddress(ILjava/lang/String;)V

    .line 511
    :goto_0
    return-void
.end method

.method public setImsVoiceCallAvailability(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setImsVoiceCallAvailability(II)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsVoiceCallAvailability(II)V

    .line 465
    :goto_0
    return-void
.end method

.method public setLocalTone(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setLocalTone(II)V

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1288
    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->setLocalTone(II)V

    .line 1290
    :goto_0
    return-void
.end method

.method public setMute(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setMute(IZ)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setMute(IZ)V

    .line 306
    :goto_0
    return-void
.end method

.method public setPAU(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setPAU(ILjava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setPAU(ILjava/lang/String;)V

    .line 929
    :goto_0
    return-void
.end method

.method public setRTTChannelEnable(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setRTTChannelEnable(II)V

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setRTTChannelEnable(II)V

    .line 1042
    :goto_0
    return-void
.end method

.method public setRTTEnable(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setRTTEnable(II)V

    goto :goto_0

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setRTTEnable(II)V

    .line 938
    :goto_0
    return-void
.end method

.method public setSmsBearer(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setSmsBearer(II)V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setSmsBearer(II)V

    .line 902
    :goto_0
    return-void
.end method

.method public setUceCapabilities(ILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1113
    new-instance v2, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;

    invoke-direct {v2}, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;-><init>()V

    .line 1115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;->radioTech:I

    .line 1116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->getMask()I

    move-result v1

    iput v1, v2, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;->capabilities:I

    .line 1117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    goto :goto_0

    .line 1120
    :cond_1
    nop

    .line 1121
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;

    .line 1122
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;

    aput-object v2, p2, v1

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setUceCapabilities(I[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;)V

    .line 1127
    goto :goto_3

    .line 1128
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1130
    new-instance v2, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesInfo;

    invoke-direct {v2}, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesInfo;-><init>()V

    .line 1132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesInfo;->radioTech:I

    .line 1133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->getMask()I

    move-result v1

    iput v1, v2, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesInfo;->capabilities:I

    .line 1134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    goto :goto_2

    .line 1137
    :cond_4
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast p2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1138
    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->setUceCapabilities(ILjava/util/ArrayList;)V

    .line 1140
    :goto_3
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setVideoResolution(II)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setVideoResolution(II)V

    .line 821
    :goto_0
    return-void
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->startDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->startDtmf(ILjava/lang/String;)V

    .line 324
    :goto_0
    return-void
.end method

.method public stopDtmf(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->stopDtmf(I)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->stopDtmf(I)V

    .line 333
    :goto_0
    return-void
.end method

.method public subscribeForCapabilities(ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1157
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1162
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    .line 1162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->subscribeForCapabilities(I[Ljava/lang/String;)V

    .line 1167
    goto :goto_3

    .line 1168
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1170
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1171
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1174
    :cond_4
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast p2, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1175
    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->subscribeForCapabilities(ILjava/util/ArrayList;)V

    .line 1177
    :goto_3
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->switchWaitingOrHoldingAndActive(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->switchWaitingOrHoldingAndActive(I)V

    .line 252
    :goto_0
    return-void
.end method

.method public triggerFullNetworkRegistration(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1264
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->triggerFullNetworkRegistration(IILjava/lang/String;)V

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1268
    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->triggerFullNetworkRegistration(IILjava/lang/String;)V

    .line 1270
    :goto_0
    return-void
.end method

.method public triggerSipDelegateDeregistration(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->triggerSipDelegateDeregistration(I)V

    goto :goto_0

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1257
    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->triggerSipDelegateDeregistration(I)V

    .line 1259
    :goto_0
    return-void
.end method

.method public updateCLIP(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->updateCLIP(II)V

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->updateCLIP(II)V

    .line 812
    :goto_0
    return-void
.end method

.method public updateSipDelegateRegistration(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1240
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1241
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->updateSipDelegateRegistration(I[Ljava/lang/String;)V

    .line 1245
    goto :goto_1

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    .line 1247
    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->updateSipDelegateRegistration(ILjava/util/ArrayList;)V

    .line 1249
    :goto_1
    return-void
.end method

.method public videoPhoneDial(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;-><init>()V

    .line 433
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;->address:Ljava/lang/String;

    .line 434
    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;->subAddress:Ljava/lang/String;

    .line 435
    iput p4, v0, Lvendor/unisoc/hardware/radio/ims/VideoPhoneDial;->clir:I

    .line 437
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->videoPhoneDial(ILvendor/unisoc/hardware/radio/ims/VideoPhoneDial;)V

    .line 438
    goto :goto_0

    .line 439
    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;-><init>()V

    .line 441
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;->address:Ljava/lang/String;

    .line 442
    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;->subAddress:Ljava/lang/String;

    .line 443
    iput p4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;->clir:I

    .line 445
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p2, p1, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->videoPhoneDial(ILvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;)V

    .line 447
    :goto_0
    return-void
.end method

.method public volteCallFallBackToVoice(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mAidlProxy:Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->volteCallFallBackToVoice(II)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->volteCallFallBackToVoice(II)V

    .line 520
    :goto_0
    return-void
.end method
