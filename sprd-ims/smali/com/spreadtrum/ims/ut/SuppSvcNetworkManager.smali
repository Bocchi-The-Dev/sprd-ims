.class public Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;
.super Ljava/lang/Object;
.source "SuppSvcNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;,
        Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;,
        Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_PHONE_SWITCH_DONE:I = 0x2

.field private static final EVENT_DELAY_RELEASE_SS:I = 0x1

.field private static final EVENT_SEND_SS_REQUST:I = 0x4

.field private static final EVENT_SS_RESPONSE:I = 0x5

.field private static final EVENT_SWITCH_DATA_TIMEOUT:I = 0x3

.field private static final RELEASE_SS_DELAY_MILLIS:I = 0xbb8

.field private static final SWITCH_DATA_TIMEOUT_MILLIS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "SuppSvcNetworkManager"

.field private static pausedSync:Ljava/lang/Object;


# instance fields
.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSSWork:Ljava/lang/Object;

.field private mSubIdForSS:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private requestBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMessages(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mPendingMessages:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSWork(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubIdForSS(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestBuffer(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->requestBuffer:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearPendingMessages(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->clearPendingMessages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReleaseNetworkRequest(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->onReleaseNetworkRequest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRequestSwitchDataSimDone(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->onRequestSwitchDataSimDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSwitchDataTimeout(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->onSwitchDataTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetpausedSync()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->pausedSync:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->pausedSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mPendingMessages:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mLock:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->requestBuffer:Ljava/util/Vector;

    .line 56
    new-instance v1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;

    invoke-direct {v1, p0, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;-><init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback-IA;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    .line 329
    new-instance v0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;-><init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 65
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 68
    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 71
    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(Landroid/content/Context;I)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDefaultDataSubIdChanged subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppSvcNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 265
    return-void
.end method

.method private clearPendingMessages()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 346
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 348
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->sendRequestNetworkResult(Landroid/os/Message;)V

    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 350
    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method private onReleaseNetworkRequest()V
    .locals 1

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    .line 280
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->resumeDataSim()V

    .line 281
    return-void
.end method

.method private onRequestSwitchDataSimDone()V
    .locals 2

    .line 300
    const-string v0, "SuppSvcNetworkManager"

    const-string v1, "onRequestSwitchDataSimDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->clearPendingMessages()V

    .line 305
    return-void
.end method

.method private onSwitchDataTimeout()V
    .locals 2

    .line 316
    const-string v0, "SuppSvcNetworkManager"

    const-string v1, "onSwitchDataTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->clearPendingMessages()V

    .line 318
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->onReleaseNetworkRequest()V

    .line 319
    return-void
.end method

.method private resumeDataSim()V
    .locals 4

    .line 284
    const-string v0, "persist.radio.data.subid"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDataSim mSubIdForSS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuppSvcNetworkManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    if-eq v0, v2, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->updateSettingAndBroadcast(I)V

    .line 295
    :cond_0
    iput v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    .line 297
    :cond_1
    return-void
.end method

.method private sendRequestNetworkResult(Landroid/os/Message;)V
    .locals 0

    .line 308
    if-nez p1, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 312
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method

.method private shouldSwitchData(I)Z
    .locals 8

    .line 191
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const-string v1, "SuppSvcNetworkManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 192
    const-string p1, "the current subId is inValid"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v2

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 197
    :goto_0
    if-eqz v0, :cond_2

    .line 198
    const-string p1, "airplane mode is on"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v2

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 207
    if-nez v0, :cond_3

    .line 208
    const-string p1, "ServiceState is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v2

    .line 212
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 213
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 214
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 216
    return v2

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 221
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 222
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 223
    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_6

    .line 224
    if-eq v6, v4, :cond_5

    iget-object v7, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 225
    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    const-string p1, "other phone in calling!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v2

    .line 223
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldSwitchData  activeSimCount : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-gt v0, v3, :cond_7

    .line 235
    return v2

    .line 239
    :cond_7
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->getDefaultDataSubId()I

    move-result v0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " defaultDataSubId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " subId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eq v0, v5, :cond_a

    if-eq v0, p1, :cond_a

    .line 243
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 244
    iget v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    if-ne v0, p1, :cond_8

    .line 245
    const-string p1, "the mSubIdForSS is same as subId"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v2

    .line 248
    :cond_8
    const-string p1, "need reset the current DDS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->onReleaseNetworkRequest()V

    .line 251
    :cond_9
    const-string p1, "the mSubIdForSS is not the subId"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v3

    .line 254
    :cond_a
    return v2
.end method

.method private updateSettingAndBroadcast(I)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingAndBroadcast, subid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppSvcNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->broadcastDefaultDataSubIdChanged(Landroid/content/Context;I)V

    .line 326
    return-void
.end method


# virtual methods
.method public addSuppServiceRequest(ILandroid/os/Message;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;-><init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;ILandroid/os/Message;)V

    .line 356
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 359
    :cond_0
    return-void
.end method

.method public getDefaultDataSubId()I
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultDataSubId] subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuppSvcNetworkManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0
.end method

.method public releaseNetworkRequest(I)V
    .locals 3

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "releaseNetworkRequest mSSWork: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuppSvcNetworkManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    :cond_1
    return-void
.end method

.method public removeSuppServiceRequest(I)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 363
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 366
    :cond_0
    return-void
.end method

.method public requestNetwork(ILandroid/os/Message;)V
    .locals 3

    .line 167
    const-string v0, "SuppSvcNetworkManager"

    const-string v1, "requestNetwork "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->shouldSwitchData(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string p1, "SuppSvcNetworkManager"

    const-string v0, "requestNetwork : should not switch data"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->sendRequestNetworkResult(Landroid/os/Message;)V

    .line 174
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    .line 181
    const-string v0, "SuppSvcNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork, create mSSWork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSSWork:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mSubIdForSS:I

    .line 183
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->updateSettingAndBroadcast(I)V

    .line 184
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    :cond_2
    monitor-exit p2

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final startRegisterTelephonyCallback()V
    .locals 3

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SuppSvcNetworkManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;

    invoke-direct {v1, p0, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$DcHandler;-><init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 82
    :cond_0
    return-void
.end method
