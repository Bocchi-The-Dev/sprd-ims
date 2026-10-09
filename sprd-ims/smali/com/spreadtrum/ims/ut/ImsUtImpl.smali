.class public Lcom/spreadtrum/ims/ut/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;,
        Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_CB_PW:I = 0x13

.field private static final ACTION_GET_CLIR_STATUS:I = 0x14

.field private static final ACTION_GET_CW_STATUS_FOR_VOWIFI:I = 0x15

.field private static final ACTION_QUERY_CB:I = 0x1

.field private static final ACTION_QUERY_CF:I = 0x2

.field private static final ACTION_QUERY_CF_EX:I = 0x11

.field private static final ACTION_QUERY_CLIP:I = 0x5

.field private static final ACTION_QUERY_CLIR:I = 0x4

.field private static final ACTION_QUERY_COLP:I = 0x7

.field private static final ACTION_QUERY_COLR:I = 0x6

.field private static final ACTION_QUERY_CW:I = 0x3

.field private static final ACTION_TRANSACT:I = 0x8

.field private static final ACTION_UPDATE_CB:I = 0x9

.field private static final ACTION_UPDATE_CF:I = 0xa

.field private static final ACTION_UPDATE_CF_EX:I = 0x12

.field private static final ACTION_UPDATE_CLIP:I = 0xd

.field private static final ACTION_UPDATE_CLIR:I = 0xc

.field private static final ACTION_UPDATE_CLOR:I = 0xe

.field private static final ACTION_UPDATE_COLP:I = 0xf

.field private static final ACTION_UPDATE_COLR:I = 0x10

.field private static final ACTION_UPDATE_CW:I = 0xb

.field private static final CB_PASSWORD_DEFAULT_VALUTE:Ljava/lang/String; = "0000"

.field private static final EVENT_REQUEST_SWITCH_DATASIM_DONE:I = 0x64

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_CFACTION:Ljava/lang/String; = "CFAction"

.field private static final EXTRA_CFREASON:Ljava/lang/String; = "CFReason"

.field private static final EXTRA_CLIR_MODE:Ljava/lang/String; = "clirMode"

.field private static final EXTRA_DIALING_NUM:Ljava/lang/String; = "dialingNumber"

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_FACILITY:Ljava/lang/String; = "facility"

.field private static final EXTRA_ID:Ljava/lang/String; = "id"

.field private static final EXTRA_LOCK_STATE:Ljava/lang/String; = "lockState"

.field private static final EXTRA_OLD_PASSWORD:Ljava/lang/String; = "oldPassword"

.field private static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final EXTRA_RULE_SET:Ljava/lang/String; = "ruleSet"

.field private static final EXTRA_SERVICE_CLASS:Ljava/lang/String; = "serviceClass"

.field private static final EXTRA_TIMER_SECONDS:Ljava/lang/String; = "timerSeconds"

.field private static final EXTRA_UT_ENABLE:Ljava/lang/String; = "utEnable"

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "gsm.ss.sc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

.field private mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

.field private mLock:Ljava/lang/Object;

.field private mRequestId:I

.field private mRequestedNetwork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:I

.field private final mSuppSvcNetworkManager:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;


# direct methods
.method static bridge synthetic -$$Nest$mgetCwStatusForVowifi(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCwStatusForVowifi(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSsRequest(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->onSsRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessChangeCbPw(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processChangeCbPw(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryCb(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryCb(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryCf(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryCf(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryCfExt(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryCfExt(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryClir(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryClir(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryCw(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryCw(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessQueryResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processQueryResult(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUpdataCfExt(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processUpdataCfExt(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUpdateColrAndColp(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processUpdateColrAndColp(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUpdateResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->processUpdateResult(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->releaseNetwork(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCLIRStatus(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIRStatus(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestId:I

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestedNetwork:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 113
    iput-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 115
    iget p1, p3, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iput p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    .line 116
    iput-object p4, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mSuppSvcNetworkManager:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    .line 117
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UT for phoneId :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 119
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;-><init>(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 121
    return-void
.end method

.method private changeBarringPassword(Landroid/os/Bundle;)V
    .locals 7

    .line 1175
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue changeBarringPassword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1177
    const-string v1, "facility"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    const-string v3, "oldPassword"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1179
    const-string v4, "password"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1180
    const-string v4, "utEnable"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1181
    iget-object v4, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v5, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1182
    const/16 v6, 0x13

    invoke-virtual {v5, v6, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1181
    invoke-virtual {v4, v1, v3, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1183
    return-void
.end method

.method private static getCFServiceClass()I
    .locals 2

    .line 1503
    const-string v0, "gsm.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCLIRStatus(Landroid/os/Bundle;)V
    .locals 4

    .line 1186
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue getCLIRStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1188
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1189
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getCLIR(Landroid/os/Message;)V

    .line 1190
    return-void
.end method

.method private getCallForwardingOption(Landroid/os/Bundle;)V
    .locals 9

    .line 1161
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue getCallForwardingOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1163
    const-string v2, "CFReason"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1164
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1166
    const-string v1, "ruleSet"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1167
    const-string v1, "dialingNumber"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1168
    const-string v1, "utEnable"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1169
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1171
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1169
    invoke-virtual/range {v3 .. v8}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCallForwardStatus(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1172
    return-void
.end method

.method private getCwStatusForVowifi(Landroid/os/Message;)V
    .locals 4

    .line 1471
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1472
    if-eqz p1, :cond_4

    .line 1473
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 1474
    nop

    .line 1475
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 1476
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    .line 1478
    :cond_0
    goto :goto_1

    .line 1479
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1480
    array-length v1, v0

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of p1, p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1483
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->onCallWaitingStatusUpdateForVoWifi(I)V

    .line 1484
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_UPDATE_CW_STATUS_FOR_WIFI->mStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1481
    :cond_3
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "ACTION_UPDATE_CW_STATUS_FOR_WIFI exception"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_4
    :goto_1
    return-void
.end method

.method private getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I
    .locals 1

    .line 899
    nop

    .line 900
    if-eqz p1, :cond_0

    .line 901
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 909
    :pswitch_0
    const/16 p1, 0x338

    goto :goto_1

    .line 906
    :pswitch_1
    const/16 p1, 0x322

    .line 907
    goto :goto_1

    .line 903
    :pswitch_2
    const/16 p1, 0xf1

    .line 904
    goto :goto_1

    .line 913
    :cond_0
    :goto_0
    const/16 p1, 0x324

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReuestId()I
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestId:I

    .line 711
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 712
    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestId:I

    .line 714
    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestId:I

    monitor-exit v0

    return v1

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSubId(I)I
    .locals 1

    .line 500
    nop

    .line 501
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    .line 502
    if-eqz p1, :cond_0

    .line 503
    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_0

    .line 502
    :cond_0
    const/4 p1, -0x1

    .line 505
    :goto_0
    return p1
.end method

.method private onSsRequest(Landroid/os/Bundle;)V
    .locals 4

    .line 947
    nop

    .line 948
    if-eqz p1, :cond_0

    .line 949
    const/4 v0, -0x1

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 950
    sget-object v1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestNetworkDone action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1011
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaitingForVoWifi(Landroid/os/Bundle;)V

    .line 1012
    goto :goto_0

    .line 1008
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCLIRStatus(Landroid/os/Bundle;)V

    .line 1009
    goto :goto_0

    .line 1005
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Landroid/os/Bundle;)V

    .line 1006
    goto :goto_0

    .line 1002
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(Landroid/os/Bundle;)V

    .line 1003
    goto :goto_0

    .line 999
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(Landroid/os/Bundle;)V

    .line 1000
    goto :goto_0

    .line 996
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLR(Landroid/os/Bundle;)V

    .line 997
    goto :goto_0

    .line 993
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLP(Landroid/os/Bundle;)V

    .line 994
    goto :goto_0

    .line 991
    :pswitch_7
    goto :goto_0

    .line 988
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIP(Landroid/os/Bundle;)V

    .line 989
    goto :goto_0

    .line 985
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(Landroid/os/Bundle;)V

    .line 986
    goto :goto_0

    .line 982
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(Landroid/os/Bundle;)V

    .line 983
    goto :goto_0

    .line 979
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(Landroid/os/Bundle;)V

    .line 980
    goto :goto_0

    .line 976
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(Landroid/os/Bundle;)V

    .line 977
    goto :goto_0

    .line 974
    :pswitch_d
    goto :goto_0

    .line 971
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP(Landroid/os/Bundle;)V

    .line 972
    goto :goto_0

    .line 968
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR(Landroid/os/Bundle;)V

    .line 969
    goto :goto_0

    .line 965
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP(Landroid/os/Bundle;)V

    .line 966
    goto :goto_0

    .line 962
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR(Landroid/os/Bundle;)V

    .line 963
    goto :goto_0

    .line 959
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting(Landroid/os/Bundle;)V

    .line 960
    goto :goto_0

    .line 956
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(Landroid/os/Bundle;)V

    .line 957
    goto :goto_0

    .line 953
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(Landroid/os/Bundle;)V

    .line 1017
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private processChangeCbPw(Landroid/os/Message;)V
    .locals 5

    .line 1442
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1444
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1445
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1446
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1447
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1448
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1450
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error.ordinal() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1452
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v2

    .line 1451
    invoke-interface {v0, p1, v1, v2}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringFailed(I[II)V

    .line 1453
    goto :goto_0

    .line 1454
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1455
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-interface {v1, p1, v0}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringResult(I[I)V

    goto :goto_0

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringResult(I[I)V

    goto :goto_0

    .line 1462
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1463
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v2

    .line 1462
    invoke-interface {v0, p1, v1, v2}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringFailed(I[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_0
    goto :goto_1

    .line 1465
    :catch_0
    move-exception p1

    .line 1466
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1468
    :goto_1
    return-void
.end method

.method private processQueryCb(Landroid/os/Message;)V
    .locals 5

    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 213
    const/16 v1, 0x324

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 214
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 215
    nop

    .line 216
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 217
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v1

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 222
    goto :goto_2

    .line 223
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 224
    array-length v3, v1

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 228
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 229
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 230
    aget v1, v1, v2

    iput v1, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 231
    aput-object v4, v3, v2

    .line 232
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 234
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_QUERY_CB->ssInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x323

    invoke-direct {v3, v4, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 236
    :goto_1
    goto :goto_2

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_2
    goto :goto_3

    .line 241
    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    :goto_3
    return-void
.end method

.method private processQueryCf(Landroid/os/Message;)V
    .locals 8

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 249
    const/16 v1, 0x324

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 250
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 251
    nop

    .line 252
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 253
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v1

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 258
    goto/16 :goto_4

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ACTION_QUERY_CF->callForwardInfo:"

    const/16 v4, 0x323

    if-eqz v1, :cond_4

    .line 260
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 261
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 262
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v4, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 267
    :cond_2
    nop

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 269
    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 270
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    .line 271
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 272
    iget v7, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->status:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 273
    iget v7, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->reason:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 274
    iget v7, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ton:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 275
    iget-object v7, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->number:Ljava/lang/String;

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 276
    iget v7, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->timeSeconds:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 277
    iget v5, v5, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->serviceClass:I

    iput v5, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 278
    aput-object v6, v4, v2

    .line 279
    sget-object v5, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 280
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 285
    :goto_1
    goto/16 :goto_4

    .line 286
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 288
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 289
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v4, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 294
    :cond_5
    nop

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 296
    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 297
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    .line 298
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 299
    iget v7, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 300
    iget v7, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 301
    iget v7, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 302
    iget-object v7, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 303
    iget v7, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    iput v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 304
    iget v5, v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    iput v5, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 305
    aput-object v6, v4, v2

    .line 306
    sget-object v5, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 307
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 309
    :cond_6
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 312
    :goto_3
    goto :goto_4

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :goto_4
    goto :goto_5

    .line 318
    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 321
    :goto_5
    return-void
.end method

.method private processQueryCfExt(Landroid/os/Message;)V
    .locals 9

    .line 1363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1365
    const/16 v1, 0x324

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1366
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1367
    nop

    .line 1369
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1370
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v1

    .line 1373
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1375
    goto/16 :goto_3

    .line 1376
    :cond_1
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->responseCallForwardInfo(Landroid/os/AsyncResult;)[Lcom/android/ims/internal/ImsCallForwardInfoEx;

    move-result-object v1

    .line 1377
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1378
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x323

    invoke-direct {v5, v6, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, v4, v5}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 1381
    :cond_2
    if-eqz v1, :cond_5

    .line 1382
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    .line 1383
    aget-object v5, v1, v4

    iget v5, v5, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mCondition:I

    if-nez v5, :cond_4

    aget-object v5, v1, v4

    iget v5, v5, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mServiceClass:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 1386
    sget-object v5, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_QUERY_CF_EX->setVoiceCallForwardingFlag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v4

    iget v8, v8, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mStatus:I

    if-ne v8, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1391
    :cond_5
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3, v1}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/internal/ImsCallForwardInfoEx;)V

    .line 1394
    :goto_2
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_QUERY_CF_EX->infos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    goto :goto_3

    .line 1398
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_3
    goto :goto_4

    .line 1401
    :catch_0
    move-exception p1

    .line 1402
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1404
    :goto_4
    return-void
.end method

.method private processQueryClir(Landroid/os/Message;)V
    .locals 6

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 362
    const/4 v1, 0x0

    const/16 v2, 0x324

    if-eqz v0, :cond_2

    .line 363
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 364
    nop

    .line 365
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 366
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v4, p1, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 371
    goto :goto_0

    .line 372
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 373
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 374
    const-string v3, "queryClir"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 375
    sget-object v1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v3, "Calling success callback for Query CLIR."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4, p1, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_QUERY_CLIR->clirInfo:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_0

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, p0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 383
    :goto_0
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIRStatus(Landroid/os/AsyncResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_1

    .line 384
    :catch_0
    move-exception p1

    .line 385
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    :goto_1
    return-void
.end method

.method private processQueryCw(Landroid/os/Message;)V
    .locals 5

    .line 324
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 326
    const/16 v1, 0x324

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 327
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 328
    nop

    .line 329
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 330
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v1

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 335
    goto :goto_2

    .line 336
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 337
    array-length v3, v1

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 342
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 343
    aget v1, v1, v2

    iput v1, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 344
    aput-object v4, v3, v2

    .line 345
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 347
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_QUERY_CW->ssInfos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x323

    invoke-direct {v3, v4, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 349
    :goto_1
    goto :goto_2

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_2
    goto :goto_3

    .line 354
    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 357
    :goto_3
    return-void
.end method

.method private processQueryResult(Landroid/os/Message;)V
    .locals 5

    .line 1244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1246
    const/16 v1, 0x324

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1247
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1257
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1258
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1259
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1260
    aget v1, v1, v2

    iput v1, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1261
    const-string v1, "imsSsInfo"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1262
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 1264
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_QUERY bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    goto :goto_1

    .line 1248
    :cond_1
    :goto_0
    nop

    .line 1249
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 1250
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v1

    .line 1253
    :cond_2
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1256
    goto :goto_1

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_1
    goto :goto_2

    .line 1271
    :catch_0
    move-exception p1

    .line 1272
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1274
    :goto_2
    return-void
.end method

.method private processUpdataCfExt(Landroid/os/Message;)V
    .locals 5

    .line 1407
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1409
    const/4 v1, 0x0

    const/16 v2, 0x324

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 1410
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;

    .line 1411
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 1412
    nop

    .line 1413
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1414
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1419
    goto :goto_0

    .line 1420
    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v0, v3, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfu:Z

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mServiceClass:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1422
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UPDATE_CF_EX->setVoiceCallForwardingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v3, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0, v1}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1426
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UPDATE_CF_EX->success,id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :goto_0
    goto :goto_1

    .line 1429
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1435
    :catch_0
    move-exception p1

    .line 1436
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1437
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nullpointerException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1432
    :catch_1
    move-exception p1

    .line 1433
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1438
    :goto_1
    nop

    .line 1439
    :goto_2
    return-void
.end method

.method private processUpdateClip(Landroid/os/Message;)V
    .locals 5

    .line 1327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1329
    const/4 v1, 0x0

    const/16 v2, 0x324

    if-eqz v0, :cond_2

    .line 1330
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1331
    nop

    .line 1332
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1333
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 1336
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1338
    goto :goto_0

    .line 1339
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1340
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "ACTION_UPDATE->success!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    goto :goto_1

    .line 1346
    :catch_0
    move-exception p1

    .line 1347
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1349
    :goto_1
    return-void
.end method

.method private processUpdateClir(Landroid/os/Message;)V
    .locals 5

    .line 1302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1304
    const/4 v1, 0x0

    const/16 v2, 0x324

    if-eqz v0, :cond_2

    .line 1305
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1306
    nop

    .line 1307
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1308
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 1311
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1313
    goto :goto_0

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1315
    sget-object p1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "ACTION_UPDATE->success!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :goto_0
    goto :goto_1

    .line 1321
    :catch_0
    move-exception p1

    .line 1322
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1324
    :goto_1
    return-void
.end method

.method private processUpdateColrAndColp(Landroid/os/Message;)V
    .locals 5

    .line 1352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    .line 1354
    const/16 v1, 0x324

    .line 1355
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    goto :goto_0

    .line 1357
    :catch_0
    move-exception p1

    .line 1358
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1360
    :goto_0
    return-void
.end method

.method private processUpdateResult(Landroid/os/Message;)V
    .locals 5

    .line 1277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1279
    const/4 v1, 0x0

    const/16 v2, 0x324

    if-eqz v0, :cond_2

    .line 1280
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1281
    nop

    .line 1282
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1283
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getImsReasonInfoFromCommandException(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 1286
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v0, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1288
    goto :goto_0

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1290
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "->success!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1293
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, p0, p1, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    goto :goto_1

    .line 1296
    :catch_0
    move-exception p1

    .line 1297
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1299
    :goto_1
    return-void
.end method

.method private queryCLIP(Landroid/os/Bundle;)V
    .locals 4

    .line 1061
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCLIP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1063
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1064
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1065
    return-void
.end method

.method private queryCLIR(Landroid/os/Bundle;)V
    .locals 4

    .line 1054
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCLIR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1056
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1057
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getCLIR(Landroid/os/Message;)V

    .line 1058
    return-void
.end method

.method private queryCOLP(Landroid/os/Bundle;)V
    .locals 4

    .line 1068
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCOLP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1070
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1071
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCOLP(Landroid/os/Message;)V

    .line 1072
    return-void
.end method

.method private queryCOLR(Landroid/os/Bundle;)V
    .locals 4

    .line 1075
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCOLR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1077
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1078
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCOLR(Landroid/os/Message;)V

    .line 1079
    return-void
.end method

.method private queryCallBarring(Landroid/os/Bundle;)V
    .locals 7

    .line 1020
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCallBarring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1022
    const-string v1, "facility"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    const-string v3, "password"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    const-string v3, "serviceClass"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1026
    const-string v5, "utEnable"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1027
    iget-object v5, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v6, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1028
    invoke-virtual {v6, v4, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1027
    invoke-virtual {v5, v1, v2, v3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1029
    return-void
.end method

.method private queryCallForward(Landroid/os/Bundle;)V
    .locals 7

    .line 1032
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCallForward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1034
    const-string v2, "CFReason"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1035
    const-string v2, "dialingNumber"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    const-string v3, "serviceClass"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1038
    const-string v5, "utEnable"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1039
    iget-object v4, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v5, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1040
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1039
    invoke-virtual {v4, v1, v3, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1041
    return-void
.end method

.method private queryCallWaiting(Landroid/os/Bundle;)V
    .locals 5

    .line 1044
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCallWaiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1046
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1048
    const-string v3, "utEnable"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1049
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1050
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1049
    invoke-virtual {v2, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1051
    return-void
.end method

.method private queryCallWaitingForVoWifi(Landroid/os/Bundle;)V
    .locals 5

    .line 1491
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue queryCallWaiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1493
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1495
    const-string v3, "utEnable"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1496
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1497
    const/16 v4, 0x15

    invoke-virtual {v3, v4, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1496
    invoke-virtual {v2, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1499
    return-void
.end method

.method private releaseNetwork(I)V
    .locals 1

    .line 469
    if-nez p1, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mSuppSvcNetworkManager:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->removeSuppServiceRequest(I)V

    .line 473
    return-void
.end method

.method private requestNetwork(Landroid/os/Bundle;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->isUtEnabled()Z

    move-result v1

    .line 441
    const-string v2, "utEnable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 445
    if-nez v1, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->onSsRequest(Landroid/os/Bundle;)V

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSubId()I

    move-result p1

    .line 450
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mSuppSvcNetworkManager:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-virtual {v1, p1, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->addSuppServiceRequest(ILandroid/os/Message;)V

    .line 451
    return-void
.end method

.method private static resetCFServiceClass()V
    .locals 2

    .line 1508
    const-string v0, "gsm.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method private responseCallForwardInfo(Landroid/os/AsyncResult;)[Lcom/android/ims/internal/ImsCallForwardInfoEx;
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 825
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 827
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ims/internal/ImsCallForwardInfoEx;

    .line 828
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 829
    new-instance v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;

    invoke-direct {v2}, Lcom/android/ims/internal/ImsCallForwardInfoEx;-><init>()V

    aput-object v2, v0, v1

    .line 830
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->status:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mStatus:I

    .line 831
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->reason:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mCondition:I

    .line 832
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->numberType:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mNumberType:I

    .line 833
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ton:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mToA:I

    .line 834
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget-object v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 835
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->serviceClass:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mServiceClass:I

    .line 836
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget-object v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mRuleset:Ljava/lang/String;

    .line 837
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;

    iget v3, v3, Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;->timeSeconds:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mTimeSeconds:I

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 839
    :cond_0
    return-object v0

    .line 841
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 843
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ims/internal/ImsCallForwardInfoEx;

    .line 844
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 845
    new-instance v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;

    invoke-direct {v2}, Lcom/android/ims/internal/ImsCallForwardInfoEx;-><init>()V

    aput-object v2, v0, v1

    .line 846
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->status:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mStatus:I

    .line 847
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->reason:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mCondition:I

    .line 848
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->numberType:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mNumberType:I

    .line 849
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ton:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mToA:I

    .line 850
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget-object v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 851
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->serviceClass:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mServiceClass:I

    .line 852
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget-object v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->ruleset:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mRuleset:Ljava/lang/String;

    .line 853
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    iget v3, v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->timeSeconds:I

    iput v3, v2, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mTimeSeconds:I

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 855
    :cond_2
    return-object v0
.end method

.method private setCallForwardingOption(Landroid/os/Bundle;)V
    .locals 12

    .line 1132
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue setCallForwardingOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;

    invoke-direct {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;-><init>()V

    .line 1134
    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1135
    const-string v3, "CFReason"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1136
    const-string v3, "CFAction"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1137
    const-string v3, "serviceClass"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1138
    const-string v3, "timerSeconds"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1139
    const-string v2, "dialingNumber"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1140
    const-string v2, "ruleSet"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1141
    const-string v2, "utEnable"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1142
    if-nez v6, :cond_2

    .line 1143
    if-eq v5, v3, :cond_1

    const/4 v2, 0x3

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 1147
    :cond_0
    iput-boolean v4, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfEnable:Z

    goto :goto_1

    .line 1145
    :cond_1
    :goto_0
    iput-boolean v3, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfEnable:Z

    .line 1149
    :goto_1
    iput-boolean v3, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfu:Z

    goto :goto_2

    .line 1151
    :cond_2
    iput-boolean v4, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mIsCfu:Z

    .line 1153
    :goto_2
    iput-object v8, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 1154
    iput v7, v0, Lcom/spreadtrum/ims/ut/ImsUtImpl$Cf;->mServiceClass:I

    .line 1155
    iget-object v4, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v3, 0x12

    .line 1157
    invoke-virtual {v2, v3, v1, p1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1155
    invoke-virtual/range {v4 .. v11}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1158
    return-void
.end method

.method private typeToString(I)Ljava/lang/String;
    .locals 1

    .line 719
    const-string v0, "AO"

    packed-switch p1, :pswitch_data_0

    .line 737
    :pswitch_0
    return-object v0

    .line 735
    :pswitch_1
    const-string p1, "AC"

    return-object p1

    .line 733
    :pswitch_2
    const-string p1, "AG"

    return-object p1

    .line 731
    :pswitch_3
    const-string p1, "AB"

    return-object p1

    .line 729
    :pswitch_4
    const-string p1, "IR"

    return-object p1

    .line 725
    :pswitch_5
    const-string p1, "OX"

    return-object p1

    .line 723
    :pswitch_6
    const-string p1, "OI"

    return-object p1

    .line 721
    :pswitch_7
    return-object v0

    .line 727
    :pswitch_8
    const-string p1, "AI"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateCLIP(Landroid/os/Bundle;)V
    .locals 5

    .line 1219
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCLIP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1221
    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1222
    const-string v2, "utEnable"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1223
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->updateCLIP(ILandroid/os/Message;)V

    .line 1224
    return-void
.end method

.method private updateCLIR(Landroid/os/Bundle;)V
    .locals 5

    .line 1123
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCLIR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1125
    const-string v2, "clirMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1126
    const-string v2, "utEnable"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1127
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1128
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1127
    invoke-virtual {v2, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1129
    return-void
.end method

.method private updateCLIRStatus(Landroid/os/AsyncResult;)V
    .locals 7

    .line 1193
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    .line 1194
    nop

    .line 1195
    sget-object v1, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateCLIRStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 1198
    :try_start_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1199
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_QUERY_CLIR->clirResp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    array-length v4, p1

    if-lt v4, v2, :cond_0

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_QUERY_CLIR->clirResp[0]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v6, p1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", clirResp[1]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, p1, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    aget v1, p1, v5

    if-ne v1, v3, :cond_0

    aget p1, p1, v3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1205
    move v2, v3

    goto :goto_0

    .line 1213
    :catch_0
    move-exception p1

    goto :goto_1

    .line 1210
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1211
    invoke-interface {v0, v2}, Lcom/android/ims/internal/IImsServiceEx;->updateCLIRStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1214
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1215
    :cond_1
    :goto_2
    nop

    .line 1216
    :goto_3
    return-void
.end method

.method private updateCOLP(Landroid/os/Bundle;)V
    .locals 3

    .line 1235
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCOLP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1237
    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1238
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1239
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1240
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1241
    return-void
.end method

.method private updateCOLR(Landroid/os/Bundle;)V
    .locals 3

    .line 1227
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCOLR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1229
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1230
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1231
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1232
    return-void
.end method

.method private updateCallBarring(Landroid/os/Bundle;)V
    .locals 9

    .line 1082
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCallBarring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1084
    const-string v1, "facility"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    const-string v1, "lockState"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1086
    const-string v1, "password"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1087
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1089
    const-string v1, "utEnable"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1090
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1091
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1090
    invoke-virtual/range {v3 .. v8}, Lcom/spreadtrum/ims/ImsRadioInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1092
    return-void
.end method

.method private updateCallForward(Landroid/os/Bundle;)V
    .locals 10

    .line 1095
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCallForward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1097
    const-string v2, "CFAction"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1098
    const-string v2, "CFReason"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1099
    const-string v2, "serviceClass"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1100
    const-string v2, "dialingNumber"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1101
    const-string v2, "timerSeconds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1102
    const-string v1, "utEnable"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1103
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1108
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1103
    invoke-virtual/range {v3 .. v9}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1109
    return-void
.end method

.method private updateCallWaiting(Landroid/os/Bundle;)V
    .locals 6

    .line 1112
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onexcue updateCallWaiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1114
    const-string v1, "lockState"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1115
    const-string v2, "serviceClass"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1117
    const-string v4, "utEnable"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1118
    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v4, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;

    .line 1119
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v0, p1, p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1118
    invoke-virtual {v3, v1, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1120
    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 917
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 918
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 919
    const-string v2, "action"

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 920
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string p1, "oldPassword"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string p1, "password"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 925
    return v0
.end method

.method public close()V
    .locals 2

    .line 393
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method public getCLIRStatus()I
    .locals 4

    .line 929
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 930
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 931
    const-string v2, "action"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 934
    return v0
.end method

.method public getCallForwardingOption(IILjava/lang/String;)I
    .locals 4

    .line 771
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 772
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 773
    const-string v2, "action"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 775
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    const-string p1, "ruleSet"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string p1, "dialingNumber"

    const-string p2, ""

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    iget-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 780
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestedNetwork:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    goto :goto_0

    .line 783
    :cond_0
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(Landroid/os/Bundle;)V

    .line 785
    :goto_0
    return v0
.end method

.method public getCallWaitingStatusForVoWifi()I
    .locals 4

    .line 938
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 939
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 940
    const-string v2, "action"

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 943
    return v0
.end method

.method public isUtEnabled()Z
    .locals 4

    .line 454
    nop

    .line 455
    iget v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 457
    :goto_0
    if-nez v0, :cond_1

    .line 458
    return v1

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteUtEnable()Z

    move-result v2

    .line 464
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtEnable isUtEnable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v2
.end method

.method public queryCLIP()I
    .locals 4

    .line 526
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 527
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 528
    const-string v2, "action"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 531
    return v0
.end method

.method public queryCLIR()I
    .locals 4

    .line 513
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 514
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 515
    const-string v2, "action"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 518
    return v0
.end method

.method public queryCOLP()I
    .locals 4

    .line 552
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 553
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 554
    const-string v2, "action"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 557
    return v0
.end method

.method public queryCOLR()I
    .locals 4

    .line 539
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 540
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 541
    const-string v2, "action"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 544
    return v0
.end method

.method public queryCallBarring(I)I
    .locals 4

    .line 408
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 409
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string p1, "password"

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 416
    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 4

    .line 812
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 813
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 814
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string p1, "password"

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 820
    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 5

    .line 424
    invoke-static {}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCFServiceClass()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    invoke-static {}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCFServiceClass()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 426
    :goto_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v1

    .line 427
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 428
    const/4 v3, 0x2

    const-string v4, "action"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v3, "CFReason"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string p1, "dialingNumber"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string p1, "serviceClass"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    invoke-static {}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->resetCFServiceClass()V

    .line 434
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 435
    return v1
.end method

.method public queryCallWaiting()I
    .locals 6

    .line 480
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 482
    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    nop

    .line 486
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 487
    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 488
    iget v3, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getSubId(I)I

    move-result v3

    .line 489
    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 491
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "call_waiting_service_class_int"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 494
    :cond_0
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 496
    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I
    .locals 4

    .line 747
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 748
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 749
    const-string v2, "action"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string p2, "CFAction"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    const-string p1, "dialingNumber"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string p1, "timerSeconds"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 756
    const-string p1, "ruleSet"

    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mServiceId:I

    iget-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 758
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mRequestedNetwork:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    goto :goto_0

    .line 761
    :cond_0
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(Landroid/os/Bundle;)V

    .line 763
    :goto_0
    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 3

    .line 696
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener->listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener;

    .line 698
    return-void
.end method

.method public setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 3

    .line 704
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListenerEx->listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl;->mImsUtListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    .line 706
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 0

    .line 566
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result p1

    .line 567
    return p1
.end method

.method public updateCLIP(Z)I
    .locals 4

    .line 647
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 648
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 649
    const-string v2, "action"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 651
    const-string v2, "enable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 653
    return v0
.end method

.method public updateCLIR(I)I
    .locals 4

    .line 632
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 633
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 634
    const-string v2, "action"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v2, "clirMode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 638
    return v0
.end method

.method public updateCOLP(Z)I
    .locals 4

    .line 682
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 683
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 684
    const-string v2, "action"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    const-string v2, "enable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 688
    return v0
.end method

.method public updateCOLR(I)I
    .locals 4

    .line 664
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 665
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 666
    const-string v2, "action"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string v2, "enable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 670
    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 4

    .line 576
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result p3

    .line 577
    nop

    .line 578
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 579
    move p2, v0

    goto :goto_0

    .line 578
    :cond_0
    const/4 p2, 0x0

    .line 581
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 582
    const/16 v2, 0x9

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string p1, "lockState"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    const-string p1, "password"

    const-string p2, "0000"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 589
    return p3
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result p3

    .line 795
    nop

    .line 796
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 797
    goto :goto_0

    .line 796
    :cond_0
    const/4 v0, 0x0

    .line 799
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 800
    const/16 v1, 0x9

    const-string v2, "action"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    const-string v1, "id"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 802
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "facility"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string p1, "lockState"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    const-string p1, "password"

    const-string v0, "0000"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string p1, "serviceClass"

    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 807
    return p3
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    .line 867
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result p3

    .line 868
    nop

    .line 869
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 870
    goto :goto_0

    .line 869
    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 873
    const/16 v1, 0x9

    const-string v2, "action"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 874
    const-string v1, "id"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "facility"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string p1, "lockState"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    const-string p1, "password"

    invoke-virtual {p2, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string p1, "serviceClass"

    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 880
    return p3
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 4

    .line 598
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 599
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 600
    const-string v2, "action"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    const-string v2, "CFAction"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    const-string p1, "CFReason"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const-string p1, "dialingNumber"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string p1, "timerSeconds"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 608
    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 4

    .line 616
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getReuestId()I

    move-result v0

    .line 617
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 618
    const-string v2, "action"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    const-string v2, "lockState"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    const-string p1, "serviceClass"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->requestNetwork(Landroid/os/Bundle;)V

    .line 624
    return v0
.end method
