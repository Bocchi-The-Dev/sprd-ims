.class public Lcom/spreadtrum/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"

# interfaces
.implements Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;,
        Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = false

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x1

.field private static final EVENT_GET_CURRENT_CALLS:I = 0x2

.field private static final EVENT_GET_CURRENT_CALLS_DELAY:I = 0x8

.field private static final EVENT_IMS_CALL_STATE_CHANGED:I = 0x5

.field private static final EVENT_IMS_CSFB_VENDOR_CAUSE:I = 0xa

.field private static final EVENT_OPERATION_COMPLETE:I = 0x3

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x4

.field private static final EVENT_POLL_CURRENT_CALLS:I = 0x6

.field private static final EVENT_POLL_CURRENT_CALLS_RESULT:I = 0x7

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x9

.field private static final POLL_DELAY_MSEC:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mCurRatType:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

.field private mHasSendTone:Z

.field private mImsCsfbVendorCause:Ljava/lang/String;

.field private mImsDcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mIncomingCallIntent:Landroid/app/PendingIntent;

.field protected mLastRelevantPoll:Landroid/os/Message;

.field private mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field protected mNeedsPoll:Z

.field protected mPendingOperations:I

.field private mPendingSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mServiceId:I

.field private mSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateLock:Ljava/lang/Object;

.field private mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePollCalls(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCsfbRedialVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCsfbRedialVendorCause(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmessageToString(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/app/PendingIntent;ILcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 98
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    .line 102
    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    .line 103
    new-instance v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;-><init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 122
    iput-object p4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 123
    iput p5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    .line 124
    iput-object p6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 125
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 126
    iput-object p7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 127
    new-instance p1, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    .line 128
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 p3, 0x5

    invoke-virtual {p2, p1, p3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/16 p3, 0x9

    invoke-virtual {p1, p2, p3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 3

    .line 300
    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNoOperationsPending: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;"
        }
    .end annotation

    .line 369
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v1

    const-string v2, "InCall VoicePrivacy is enabled"

    const-string v3, "InCall VoicePrivacy is disabled"

    const-string v4, "responseCallListEx: dc="

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_f

    .line 370
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    .line 371
    array-length v1, v0

    .line 372
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 376
    move v13, v9

    :goto_0
    array-length v14, v0

    if-ge v13, v14, :cond_0

    .line 377
    aget-object v14, v0, v13

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 380
    :cond_0
    move v0, v9

    :goto_1
    if-ge v0, v1, :cond_e

    .line 381
    new-instance v13, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v13}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>()V

    .line 387
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->index:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 388
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-byte v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->isMT:B

    if-eqz v14, :cond_1

    move v14, v10

    goto :goto_2

    :cond_1
    move v14, v9

    :goto_2
    iput-boolean v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    .line 389
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->negStatusPresent:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    .line 390
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->negStatus:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    .line 391
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iput-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 392
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->csMode:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    .line 393
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->state:I

    invoke-static {v14}, Lcom/spreadtrum/ims/ImsDriverCall;->stateFromCLCCS(I)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v14

    iput-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 394
    nop

    .line 395
    iget-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v14, :cond_2

    iget-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v15, "m=video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 396
    move v14, v10

    goto :goto_3

    .line 398
    :cond_2
    move v14, v9

    :goto_3
    if-eqz v14, :cond_8

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v14, v10, :cond_3

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v14, v10, :cond_7

    :cond_3
    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v14, v10, :cond_4

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-ne v14, v8, :cond_4

    iget-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v14, v15, :cond_7

    :cond_4
    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v14, v10, :cond_5

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v14, v6, :cond_7

    :cond_5
    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v14, v10, :cond_6

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v14, v5, :cond_7

    :cond_6
    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-nez v14, :cond_8

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-nez v14, :cond_8

    :cond_7
    move v14, v10

    goto :goto_4

    :cond_8
    move v14, v9

    .line 404
    :goto_4
    if-nez v14, :cond_a

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-eq v14, v8, :cond_a

    iget v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-lt v14, v7, :cond_9

    goto :goto_5

    .line 407
    :cond_9
    iput-boolean v10, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    goto :goto_6

    .line 405
    :cond_a
    :goto_5
    iput-boolean v9, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    .line 409
    :goto_6
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->mpty:I

    .line 410
    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    .line 411
    if-eqz v14, :cond_b

    move v14, v10

    goto :goto_7

    :cond_b
    move v14, v9

    :goto_7
    iput-boolean v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    .line 412
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->numberType:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    .line 413
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->toa:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    .line 414
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->number:Ljava/lang/String;

    iput-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    .line 415
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->prioritypresent:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    .line 416
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->priority:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    .line 417
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->cliValidityPresent:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    .line 418
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->numberPresentation:I

    invoke-static {v14}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v14

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    .line 420
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->als:I

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    .line 421
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-byte v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->isVoicePrivacy:B

    if-ne v14, v10, :cond_c

    move v14, v10

    goto :goto_8

    :cond_c
    move v14, v9

    :goto_8
    iput-boolean v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    .line 422
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->name:Ljava/lang/String;

    iput-object v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    .line 423
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v14, v14, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->namePresentation:I

    invoke-static {v14}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v14

    iput v14, v13, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    .line 427
    sget-object v14, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/spreadtrum/ims/ImsDriverCall;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-boolean v9, v13, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eqz v9, :cond_d

    .line 431
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 433
    :cond_d
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_9
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 436
    :cond_e
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 437
    return-object v11

    .line 439
    :cond_f
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 442
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v1, :cond_1d

    .line 446
    new-instance v12, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v12}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>()V

    .line 452
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    iput v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 453
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-byte v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    if-eqz v13, :cond_10

    move v13, v10

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    :goto_b
    iput-boolean v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    .line 454
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    iput v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    .line 455
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    iput v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    .line 456
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iput-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    iput v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    .line 458
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-static {v13}, Lcom/spreadtrum/ims/ImsDriverCall;->stateFromCLCCS(I)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v13

    iput-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 459
    nop

    .line 460
    iget-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v13, :cond_11

    iget-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v14, "video"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v14, "cap:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 461
    move v13, v10

    goto :goto_c

    .line 463
    :cond_11
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_17

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v13, v10, :cond_12

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v13, v10, :cond_16

    :cond_12
    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v13, v10, :cond_13

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-ne v13, v8, :cond_13

    iget-object v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v14, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v13, v14, :cond_16

    :cond_13
    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v13, v10, :cond_14

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v13, v6, :cond_16

    :cond_14
    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v13, v10, :cond_15

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v13, v5, :cond_16

    :cond_15
    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-nez v13, :cond_17

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-nez v13, :cond_17

    :cond_16
    move v13, v10

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    .line 469
    :goto_d
    if-nez v13, :cond_19

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-eq v13, v8, :cond_19

    iget v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-lt v13, v7, :cond_18

    goto :goto_e

    .line 472
    :cond_18
    iput-boolean v10, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    const/4 v13, 0x0

    goto :goto_f

    .line 470
    :cond_19
    :goto_e
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    .line 474
    :goto_f
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    .line 475
    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    .line 476
    if-eqz v14, :cond_1a

    move v14, v10

    goto :goto_10

    :cond_1a
    move v14, v13

    :goto_10
    iput-boolean v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    .line 477
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    .line 478
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    .line 479
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    iput-object v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    .line 481
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    .line 482
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    .line 483
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-static {v14}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v14

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    .line 485
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    .line 486
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-byte v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    if-ne v14, v10, :cond_1b

    move v14, v10

    goto :goto_11

    :cond_1b
    move v14, v13

    :goto_11
    iput-boolean v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    .line 487
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    .line 488
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v14, v14, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-static {v14}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v14

    iput v14, v12, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    .line 492
    sget-object v14, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lcom/spreadtrum/ims/ImsDriverCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-boolean v5, v12, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_1c

    .line 496
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 498
    :cond_1c
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_12
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x4

    goto/16 :goto_a

    .line 501
    :cond_1d
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 502
    return-object v9
.end method

.method private getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1239
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1242
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 1243
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1244
    monitor-exit v0

    return-object v2

    .line 1246
    :cond_0
    goto :goto_0

    .line 1247
    :cond_1
    monitor-exit v0

    .line 1248
    const/4 v0, 0x0

    return-object v0

    .line 1247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 16

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 509
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 510
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 511
    invoke-direct/range {p0 .. p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 514
    :cond_0
    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v3, "handlePollCalls --- notifyCsCallStateChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    iput-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    move-object v10, v1

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 528
    :goto_0
    nop

    .line 529
    nop

    .line 530
    nop

    .line 532
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_1f

    .line 533
    nop

    .line 534
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 536
    iget v4, v14, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-eqz v4, :cond_7

    .line 537
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v4, "handlePollCalls the ImsDriverCall is cs call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v4, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v4

    .line 540
    const/4 v3, 0x0

    :goto_2
    :try_start_0
    iget-object v5, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 541
    iget-object v5, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v5, v6, :cond_3

    iget-object v5, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v5, v6, :cond_3

    iget-boolean v5, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-nez v5, :cond_4

    iget-object v5, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v5, v6, :cond_4

    .line 543
    :cond_3
    iget-object v5, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 544
    if-eqz v5, :cond_4

    .line 545
    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getIsPendingTerminate()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 546
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollCalls disconnect isPendingTerminate Session, pendingCallSession:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v3, 0x1f5

    iget v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v5, v3, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminatePendingCall(II)V

    .line 548
    goto :goto_3

    .line 540
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 552
    :cond_5
    :goto_3
    iget-boolean v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-eqz v3, :cond_6

    .line 553
    invoke-direct {v0, v13}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    .line 555
    :cond_6
    monitor-exit v4

    .line 558
    move-object/from16 p1, v10

    goto/16 :goto_10

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 562
    :cond_7
    iget-object v4, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v4

    .line 563
    nop

    .line 564
    const/4 v5, 0x0

    :goto_4
    :try_start_1
    iget-object v6, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_f

    .line 565
    iget-object v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v6, v15, :cond_8

    iget-object v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v6, v15, :cond_8

    iget-boolean v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-nez v6, :cond_e

    iget-object v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v6, v15, :cond_e

    .line 568
    invoke-virtual {v0, v14}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isConferenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 569
    :cond_8
    iget-object v6, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 570
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getState()I

    move-result v15

    if-eq v15, v7, :cond_d

    .line 571
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v15

    iget-boolean v3, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eq v15, v3, :cond_9

    goto/16 :goto_6

    .line 576
    :cond_9
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 577
    :try_start_2
    iget-object v15, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v11, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 578
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 579
    sget-object v15, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PendingSession found, index:"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " session:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " removeSession:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v11, :cond_b

    .line 582
    invoke-virtual {v11}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceHost()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 586
    nop

    .line 587
    const-string v2, "removeSession is conference member,not disconnect callsession"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_5

    .line 589
    :cond_a
    invoke-virtual {v11}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    .line 590
    invoke-virtual {v0, v11}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 592
    :goto_5
    iget-object v7, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v11, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_b
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 595
    :try_start_3
    iget v3, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 596
    nop

    .line 597
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceHost()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 598
    const-string v1, "mConferenceSession found"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput-object v6, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 600
    invoke-virtual {v6, v14}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->initConferenceDc(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 601
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v1, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 602
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 603
    invoke-virtual {v1, v14}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsConfrenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 605
    :cond_c
    nop

    .line 606
    move v11, v1

    move v13, v2

    move-object v3, v6

    goto :goto_7

    .line 594
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 573
    :cond_d
    :goto_6
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v6, "PendingSession found session is INVALID remove"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    nop

    .line 564
    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_f
    move v11, v1

    move v13, v2

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 609
    :goto_7
    const/4 v1, -0x1

    if-eq v5, v1, :cond_10

    .line 610
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PendingSession remove, index:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 613
    :cond_10
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 616
    if-nez v3, :cond_12

    .line 617
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 618
    :try_start_6
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v3, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 619
    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find existing Session, index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callSession is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v1

    goto :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 623
    :cond_12
    :goto_9
    if-eqz v3, :cond_16

    .line 625
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_13

    .line 626
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v10

    goto/16 :goto_e

    .line 629
    :cond_13
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_UNKNOWN:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v1, v2, :cond_15

    .line 630
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v1, v2, :cond_14

    goto :goto_a

    :cond_14
    move-object/from16 p1, v10

    goto/16 :goto_e

    .line 631
    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 632
    :try_start_7
    invoke-virtual {v3, v14}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    .line 633
    monitor-exit v1

    move-object/from16 p1, v10

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 637
    :cond_16
    sget-object v15, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePollCalls unknown session->imsDc.isMpty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConferenceSession is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_18

    .line 640
    invoke-virtual {v1, v14}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 641
    const-string v1, "mConferenceSession member found"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v10

    goto/16 :goto_e

    .line 644
    :cond_18
    nop

    .line 645
    iget-object v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v1, v2, :cond_19

    .line 647
    move-object/from16 p1, v10

    goto/16 :goto_f

    .line 649
    :cond_19
    nop

    .line 650
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 651
    const-string v1, "CallRadioTech"

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v1, v7

    move-object v2, v14

    move-object/from16 p1, v10

    move-object v10, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 654
    invoke-virtual {v10, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    .line 655
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 656
    iget-boolean v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-eqz v1, :cond_1a

    .line 657
    const-string v1, "This is a MT Call."

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iget v2, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v10, v2, v3, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V

    goto :goto_c

    .line 659
    :cond_1a
    iget-boolean v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v1, :cond_1b

    .line 660
    const-string v1, "This is a invalid conference session!"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    goto :goto_d

    .line 662
    :cond_1b
    iget-object v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v2, :cond_1c

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ims session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v1, 0x1

    goto :goto_d

    .line 666
    :cond_1c
    :goto_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_1d

    .line 667
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iget v2, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v10, v2, v3, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V

    .line 672
    :cond_1d
    :goto_e
    iget-object v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v2, :cond_1e

    .line 673
    iget v1, v14, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_1e
    :goto_f
    move v1, v11

    move v2, v13

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, p1

    goto/16 :goto_1

    .line 613
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 676
    :cond_1f
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v3, :cond_26

    .line 677
    invoke-virtual {v0, v9}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateImsConferenceMember(Ljava/util/Map;)Z

    move-result v1

    .line 678
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v3, v4, :cond_20

    .line 679
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->onCallMergeComplete(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 681
    :cond_20
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v3, :cond_25

    .line 682
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePollCalls->conferenceDc:  mConferenceSession.mImsDriverCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 685
    iget-object v4, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4

    .line 686
    if-nez v3, :cond_22

    :try_start_9
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_22

    .line 690
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-boolean v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v3, :cond_21

    if-nez v2, :cond_21

    .line 691
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 692
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 691
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_21
    invoke-virtual {v0, v9}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getOneValidConfMember(Ljava/util/Map;)Lcom/spreadtrum/ims/ImsDriverCall;

    move-result-object v3

    .line 696
    :cond_22
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 697
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v1, :cond_23

    goto :goto_11

    :cond_23
    const/4 v2, 0x0

    goto :goto_12

    :cond_24
    :goto_11
    const/4 v2, 0x1

    :goto_12
    move v1, v2

    goto :goto_13

    .line 696
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 700
    :cond_25
    :goto_13
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v9}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->removeInvalidSessionFromConference(Ljava/util/Map;)V

    .line 702
    :cond_26
    invoke-virtual {v0, v8, v9}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V

    .line 703
    if-eqz v1, :cond_27

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_27

    .line 704
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyConferenceStateChange()V

    .line 705
    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollCalls->isConferenceStateChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_27
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 708
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->onImsCallEnd()V

    .line 709
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-eqz v1, :cond_29

    .line 710
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    goto :goto_14

    .line 712
    :cond_28
    const/4 v1, 0x1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v1, :cond_29

    .line 713
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    .line 715
    :cond_29
    :goto_14
    return-void

    .line 524
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsAfterDelay()V

    .line 525
    return-void
.end method

.method private isCsfbRedialVendorCause(Ljava/lang/String;)Z
    .locals 1

    .line 1407
    if-eqz p1, :cond_1

    const-string v0, "380"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    const-string v0, "381"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1409
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1411
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 2

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unkwon message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_0
    const-string p1, "EVENT_IMS_CSFB_VENDOR_CAUSE"

    return-object p1

    .line 159
    :pswitch_1
    const-string p1, "EVENT_RADIO_NOT_AVAILABLE"

    return-object p1

    .line 157
    :pswitch_2
    const-string p1, "EVENT_GET_CURRENT_CALLS_DELAY"

    return-object p1

    .line 155
    :pswitch_3
    const-string p1, "EVENT_POLL_CURRENT_CALLS_RESULT"

    return-object p1

    .line 153
    :pswitch_4
    const-string p1, "EVENT_POLL_CURRENT_CALLS"

    return-object p1

    .line 151
    :pswitch_5
    const-string p1, "EVENT_IMS_CALL_STATE_CHANGED"

    return-object p1

    .line 149
    :pswitch_6
    const-string p1, "EVENT_POLL_CALLS_RESULT"

    return-object p1

    .line 147
    :pswitch_7
    const-string p1, "EVENT_OPERATION_COMPLETE"

    return-object p1

    .line 145
    :pswitch_8
    const-string p1, "EVENT_GET_CURRENT_CALLS"

    return-object p1

    .line 143
    :pswitch_9
    const-string p1, "EVENT_CALL_STATE_CHANGE"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCsCallStateChange()V
    .locals 4

    .line 1415
    nop

    .line 1417
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCsCallStateChange : exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 1422
    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 1423
    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsmCdmaPhone.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v1, 0x2

    .line 1425
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 1426
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->sendEmptyMessage(I)Z

    .line 1428
    :cond_1
    return-void
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->countPendingOperations()V

    .line 308
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private setLocalTone(I)V
    .locals 2

    .line 1441
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1442
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    goto :goto_0

    .line 1443
    :cond_0
    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    .line 1448
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setLocalTone(ILandroid/os/Message;)V

    .line 1449
    return-void

    .line 1446
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V
    .locals 1

    .line 946
    if-nez p1, :cond_0

    .line 947
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v0, "addListener-> listener is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 953
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v0, "addListener-> listener already add!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :goto_0
    return-void
.end method

.method public addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 795
    return-void

    .line 793
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public countPendingOperations()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 319
    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countPendingOperations: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needsPoll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    return-void

    .line 316
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 1

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 240
    const-string v0, "CallRadioTech"

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 242
    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    .line 243
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result p2

    if-nez p2, :cond_1

    .line 244
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter p2

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 248
    :try_start_1
    const-string p2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 252
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 246
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 254
    :cond_1
    :goto_0
    return-object v0
.end method

.method public createConSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 11

    .line 1320
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1321
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 1322
    :goto_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1323
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    goto :goto_2

    .line 1324
    :cond_2
    move v3, v2

    .line 1325
    :goto_2
    new-instance v6, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v6, v3, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 1326
    const-string v0, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v6, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1327
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CallRadioTech"

    invoke-virtual {v6, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v4, v0

    move-object v10, p0

    invoke-direct/range {v4 .. v10}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 1331
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->createConferenceState()V

    .line 1332
    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateState(I)V

    .line 1334
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v4, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v4, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1336
    iget-object v3, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v3, :cond_5

    .line 1337
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1338
    iget-object v4, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsDriverCall;

    iget v5, v5, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    if-ne v4, v5, :cond_4

    .line 1339
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_4

    :cond_3
    move v4, v1

    :goto_4
    invoke-virtual {v0, v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateConfHeldState(Z)V

    .line 1337
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1343
    :cond_5
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createConSession: newConfSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1093
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1094
    return-void
.end method

.method public getAliveVideoCallSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 9

    .line 1253
    nop

    .line 1254
    nop

    .line 1255
    nop

    .line 1256
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v0

    .line 1257
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1258
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1259
    if-eq p1, v4, :cond_0

    .line 1260
    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1261
    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1262
    move-object v3, v4

    .line 1257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1266
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 1267
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v2

    move-object v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1269
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1270
    if-eq p1, v6, :cond_6

    .line 1271
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1272
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1273
    iget-object v7, v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v7, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 1274
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_2

    .line 1275
    move-object v4, v6

    goto :goto_4

    .line 1276
    :cond_2
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_3

    .line 1277
    move-object v5, v6

    goto :goto_4

    .line 1278
    :cond_3
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v7, v8, :cond_5

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 1281
    :cond_4
    if-nez v3, :cond_6

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_6

    .line 1283
    goto :goto_3

    .line 1280
    :cond_5
    :goto_2
    nop

    .line 1286
    :goto_3
    move-object v3, v6

    :cond_6
    :goto_4
    goto :goto_1

    .line 1287
    :cond_7
    monitor-exit v1

    .line 1288
    if-eqz v4, :cond_8

    .line 1289
    return-object v4

    .line 1290
    :cond_8
    if-eqz v3, :cond_9

    .line 1291
    return-object v3

    .line 1292
    :cond_9
    if-eqz v5, :cond_a

    .line 1293
    return-object v5

    .line 1295
    :cond_a
    return-object v2

    .line 1287
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1265
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 2

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 265
    monitor-exit v0

    .line 266
    return-object p1

    .line 265
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 1096
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return v0
.end method

.method public getCurrentVideoState()I
    .locals 2

    .line 1300
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 1301
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1302
    return v1

    .line 1304
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1305
    if-nez v0, :cond_1

    .line 1306
    return v1

    .line 1308
    :cond_1
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v0

    return v0
.end method

.method public getOneValidConfMember(Ljava/util/Map;)Lcom/spreadtrum/ims/ImsDriverCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)",
            "Lcom/spreadtrum/ims/ImsDriverCall;"
        }
    .end annotation

    .line 1396
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1398
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 1399
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneValidConfMember-> imsDc.index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-object p1

    .line 1402
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getService()Lcom/spreadtrum/ims/ImsService;
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 1063
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    return v0
.end method

.method public getVideoCapabilityEnabled()Z
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->hasVolteVideoCapabilities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1433
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->hasVowifiVideoCapabilities()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1432
    :goto_1
    return v0
.end method

.method public hangupAllMultipartyCall(Z)V
    .locals 4

    .line 984
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupAllMultipartyCall->isForeground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 987
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 988
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 989
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 990
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isForegroundCall()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 991
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isBackgroundCall()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 992
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->hangup()V

    .line 994
    :cond_2
    goto :goto_0

    .line 995
    :cond_3
    monitor-exit v0

    .line 996
    return-void

    .line 995
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasConferenceSession()Z
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRingingCall()Z
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1079
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1080
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1081
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1082
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isRingingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1085
    :cond_0
    goto :goto_0

    .line 1086
    :cond_1
    monitor-exit v0

    .line 1087
    const/4 v0, 0x0

    return v0

    .line 1086
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAllCallsActive()Z
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1206
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isActiveCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1207
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1209
    :cond_0
    goto :goto_0

    .line 1210
    :cond_1
    monitor-exit v0

    .line 1211
    const/4 v0, 0x1

    return v0

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAllCallsHolding()Z
    .locals 3

    .line 1216
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1217
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1219
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isBackgroundCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1220
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1222
    :cond_0
    goto :goto_0

    .line 1223
    :cond_1
    monitor-exit v0

    .line 1224
    const/4 v0, 0x1

    return v0

    .line 1223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 1

    .line 363
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 363
    :goto_0
    return p1
.end method

.method public isConferenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 3

    .line 1228
    nop

    .line 1229
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result p1

    .line 1231
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConferenceMember->isSame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConferenceSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Z
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDualCallActive()Z
    .locals 6

    .line 1167
    nop

    .line 1168
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1170
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1172
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isActiveCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1173
    add-int/lit8 v3, v3, 0x1

    .line 1175
    :cond_0
    goto :goto_0

    .line 1176
    :cond_1
    monitor-exit v0

    .line 1177
    const/4 v0, 0x1

    if-le v3, v0, :cond_2

    move v2, v0

    :cond_2
    return v2

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHasBackgroundCallAndActiveCall()Z
    .locals 7

    .line 1068
    nop

    .line 1069
    nop

    .line 1070
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1071
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    or-int/2addr v2, v4

    .line 1072
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    or-int/2addr v3, v6

    .line 1070
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    :cond_2
    and-int v0, v2, v3

    return v0
.end method

.method public isHasInLocalConferenceSession()Z
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1190
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isInLocalConference()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isActiveCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1193
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1195
    :cond_0
    goto :goto_0

    .line 1196
    :cond_1
    monitor-exit v0

    .line 1197
    const/4 v0, 0x0

    return v0

    .line 1196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSessionListEmpty()Z
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 1103
    monitor-exit v0

    .line 1104
    return v1

    .line 1103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;

    .line 972
    invoke-interface {v1, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;->onSessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 973
    goto :goto_0

    .line 974
    :cond_0
    return-void
.end method

.method public notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 5

    .line 977
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;

    .line 978
    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySessionDisonnected -> listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-interface {v1, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;->onSessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 980
    goto :goto_0

    .line 981
    :cond_0
    return-void
.end method

.method public onCallMergeComplete(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 1013
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallMergeComplete mMergeHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyMergeComplete()V

    .line 1016
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1017
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1018
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1019
    return-void
.end method

.method public onCallMergeFailed(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 1022
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1024
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1027
    :cond_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1028
    return-void
.end method

.method public onCallMergeStart(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    .line 1002
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeStart mMergeHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1004
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 1006
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->createConSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1007
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1009
    :cond_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1010
    return-void
.end method

.method public onDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 273
    return-void
.end method

.method public onUpdate(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 278
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->onVideoStateChanged(I)V

    .line 1184
    :cond_0
    return-void
.end method

.method public operationComplete()V
    .locals 3

    .line 337
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    .line 339
    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operationComplete: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needsPoll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    if-eqz v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 344
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 345
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 346
    :cond_1
    if-gez v0, :cond_2

    .line 348
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    .line 351
    :cond_2
    :goto_0
    return-void
.end method

.method protected pollCallsAfterDelay()V
    .locals 4

    .line 354
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "pollCallsAfterDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 357
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 358
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    return-void
.end method

.method public pollCallsAfterOperationComplete()V
    .locals 2

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 331
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    .line 332
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->operationComplete()V

    .line 333
    return-void
.end method

.method public pollCallsWhenSafe()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 284
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->checkNoOperationsPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollCallsWhenSafe: mLastRelevantPoll "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsAfterDelay()V

    .line 290
    monitor-exit v0

    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 294
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    .line 296
    :cond_1
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected pollCurrentCallsWhenSafe()V
    .locals 2

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 720
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 722
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    .line 724
    :cond_0
    return-void
.end method

.method public removeConferenceMemberSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    .line 1049
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeConferenceMemberSession -> conferenceMember="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 1051
    return-void
.end method

.method public removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 6

    .line 903
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 905
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 907
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 908
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconncetedSession:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 910
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne v4, p1, :cond_0

    .line 911
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 912
    const-string v4, "removeDisconncetedSessionFromList->clear conference call."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 916
    :cond_1
    goto :goto_0

    .line 917
    :cond_2
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)V"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 801
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 802
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 803
    sget-object v4, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove Invalid Pending Session, index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCsfbRedialVendorCause(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 806
    const-string v3, "removeInvalidSessionFromList: skip notifySessionDisconnected when csfb has PendingSessionList."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    goto :goto_1

    .line 809
    :cond_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 810
    :try_start_1
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    .line 811
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 801
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCsfbRedialVendorCause(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    goto :goto_2

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 820
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 822
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 823
    if-eqz p2, :cond_7

    .line 824
    nop

    .line 825
    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 828
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 829
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq v3, v4, :cond_4

    .line 830
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->disconnectForConferenceMember()V

    .line 832
    :cond_4
    goto :goto_3

    .line 833
    :cond_5
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 834
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 835
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 836
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v0, v3, :cond_7

    .line 837
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, v0, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 838
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInvalidSessionFromList: mConferenceSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_7
    nop

    .line 843
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 844
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, -0x1

    move v4, v3

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 845
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 846
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    .line 848
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCsfbRedialVendorCause(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 849
    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v6, "removeInvalidSessionFromList: skip notifySessionDisconnected when csfb redial."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    goto :goto_4

    .line 852
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 853
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v6, :cond_a

    if-ne v6, v5, :cond_a

    .line 855
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceAlive()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 856
    sget-object v4, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeInvalidSessionFromList->conference call does not disconnected.host is disconnected id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 858
    goto :goto_4

    .line 861
    :cond_9
    sget-object v6, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeInvalidSessionFromList->clear conference call."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 864
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 865
    sget-object v6, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeInvalidSessionFromList: session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    .line 867
    invoke-virtual {p0, v5}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 869
    :cond_b
    goto/16 :goto_4

    .line 876
    :cond_c
    if-ne v4, v3, :cond_d

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 879
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 881
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 882
    :cond_d
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getOneConferenceMember()I

    move-result p2

    .line 884
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInvalidSessionFromList->change mConferenceSession linked to new DriverCall. id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", old one is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 887
    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eq p2, v3, :cond_e

    .line 889
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 891
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsDriverCall;

    iput-object p1, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 893
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateConferenceDriverCallChange(Z)V

    .line 894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "removeInvalidSessionFromList->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_e
    monitor-exit v1

    .line 899
    return-void

    .line 898
    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 820
    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public removeListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V
    .locals 1

    .line 959
    if-nez p1, :cond_0

    .line 960
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v0, "removeListener-> listener is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v0, "addListener-> listener already remove!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void
.end method

.method public removeMessageAfterDial()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 326
    return-void
.end method

.method public removeSrvccSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 5

    .line 922
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 924
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 926
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 927
    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove srvcc session:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 929
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne v3, p1, :cond_0

    .line 930
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 931
    const-string v3, "removeSrvccSessionFromList->clear conference call."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    goto :goto_0

    .line 935
    :cond_1
    monitor-exit v0

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 6

    .line 1109
    nop

    .line 1110
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker$2;->$SwitchMap$com$spreadtrum$ims$vowifi$VoWifiServiceImpl$CallRatState:[I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1121
    const-string v0, ""

    goto :goto_0

    .line 1118
    :pswitch_0
    const-string v0, ""

    .line 1119
    goto :goto_0

    .line 1115
    :pswitch_1
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1116
    goto :goto_0

    .line 1112
    :pswitch_2
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    nop

    .line 1123
    :goto_0
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallRatType->ratType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    return-void

    .line 1127
    :cond_0
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1129
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1130
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1133
    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1134
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsCallProfile->session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    goto :goto_1

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1137
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1138
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1140
    :cond_2
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public terminateVolteCall(I)V
    .locals 6

    .line 1145
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v0

    .line 1146
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1148
    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminate(I)V

    .line 1149
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "terminateVolteCall mPendingSessionList -> reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1154
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    .line 1155
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    .line 1156
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1159
    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminate(I)V

    .line 1160
    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "terminateVolteCall mSessionList -> reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    goto :goto_1

    .line 1163
    :cond_1
    monitor-exit v1

    .line 1164
    return-void

    .line 1163
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1152
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public updateCurrentCalls(Landroid/os/AsyncResult;)V
    .locals 11

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 730
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 731
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 734
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 742
    nop

    .line 743
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 745
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4

    .line 746
    :try_start_0
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v6, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 747
    if-eqz v5, :cond_1

    .line 748
    sget-object v6, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find existing Session, index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 751
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v6

    .line 752
    if-nez v5, :cond_5

    .line 753
    nop

    .line 754
    move v4, v1

    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    if-ge v4, v7, :cond_4

    .line 755
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 757
    iget-object v9, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v10, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v9, v10, :cond_3

    iget-object v9, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v10, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v9, v10, :cond_2

    goto :goto_3

    .line 754
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 759
    :cond_3
    :goto_3
    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PendingSession found, index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " session:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v5, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 762
    nop

    .line 763
    nop

    .line 764
    move-object v5, v7

    goto :goto_4

    .line 754
    :cond_4
    move v4, v8

    .line 767
    :goto_4
    if-eq v4, v8, :cond_5

    .line 768
    sget-object v7, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PendingSession remove, index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 772
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 773
    if-eqz v5, :cond_6

    .line 775
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4

    .line 776
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    .line 777
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 780
    :cond_6
    :goto_5
    iget-object v4, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v4, v5, :cond_7

    .line 781
    iget v4, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 772
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 750
    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 784
    :cond_8
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V

    .line 788
    return-void

    .line 738
    :cond_9
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentCalls error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public updateImsConferenceMember(Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)Z"
        }
    .end annotation

    .line 1354
    nop

    .line 1355
    nop

    .line 1357
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getParticipantsSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    .line 1359
    move v1, v4

    goto :goto_0

    .line 1358
    :cond_0
    move v1, v3

    .line 1361
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1362
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1363
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsDriverCall;

    .line 1364
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsConfrenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v1, v4

    .line 1365
    :goto_3
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v8, v6, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 1366
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq v7, v8, :cond_3

    .line 1367
    sget-object v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImsConfrenceMember disconnected session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateState(I)V

    .line 1371
    :cond_3
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1372
    move v5, v4

    .line 1374
    :cond_4
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v7, v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v7, :cond_5

    .line 1375
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iput-object v6, v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 1376
    sget-object v7, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateImsConfrenceMember->imsDc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mConferenceSession.mImsDriverCall: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v8, v8, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_5
    goto/16 :goto_1

    .line 1379
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1382
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1383
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v5, :cond_7

    .line 1385
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iput v4, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_4

    .line 1386
    :cond_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v5, :cond_8

    .line 1388
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const/4 v0, 0x4

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1392
    :cond_8
    :goto_4
    return v1

    .line 1379
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1037
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1040
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1041
    goto :goto_0

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_1

    .line 1043
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1045
    :cond_1
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
