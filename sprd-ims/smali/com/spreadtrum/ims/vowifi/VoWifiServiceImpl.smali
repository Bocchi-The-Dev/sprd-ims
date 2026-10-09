.class public Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySOSListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;
    }
.end annotation


# static fields
.field protected static final CMD_STATE_FINISHED:I = 0x2

.field protected static final CMD_STATE_INVALID:I = 0x0

.field protected static final CMD_STATE_PROGRESS:I = 0x1

.field protected static final ECBM_TIMEOUT:I = 0x3a98

.field protected static final HANDLE_RETRY_AFTER_SECONDS:I = 0x3c

.field protected static final MSG_ATTACH:I = 0x3

.field protected static final MSG_ATTACH_FAILED:I = 0x64

.field protected static final MSG_DEATTACH:I = 0x4

.field protected static final MSG_DEREGISTER:I = 0x7

.field protected static final MSG_ECBM:I = 0xc

.field protected static final MSG_ECBM_TIMEOUT:I = 0xd

.field protected static final MSG_ENTER_ECBM:I = 0xf

.field protected static final MSG_EXIT_ECBM:I = 0x10

.field protected static final MSG_REGISTER:I = 0x6

.field protected static final MSG_REGISTER_FAILED:I = 0x65

.field protected static final MSG_REREGISTER:I = 0x8

.field protected static final MSG_RESET:I = 0x1

.field protected static final MSG_RESET_FINISHED:I = 0x66

.field protected static final MSG_RESET_FORCE:I = 0x2

.field protected static final MSG_RETRY:I = 0x32

.field protected static final MSG_RETRY_REG_KEEP_SELECT:I = 0x35

.field protected static final MSG_RETRY_REG_RE_SELECT:I = 0x34

.field protected static final MSG_RETRY_TIMEOUT:I = 0x33

.field protected static final MSG_SRVCC_SUCCESS:I = 0xe

.field protected static final MSG_START_MOBIKE:I = 0x5

.field protected static final MSG_TERMINATE_CALLS:I = 0xb

.field protected static final MSG_UPDATE_DATA_ROUTER_STATE:I = 0xa

.field protected static final MSG_UPDATE_RAT_STATE:I = 0x9

.field protected static final RESET_STEP_DEATTACH:I = 0x2

.field protected static final RESET_STEP_DEREGISTER:I = 0x1

.field protected static final RESET_STEP_FORCE_RESET:I = 0x3

.field protected static final RESET_STEP_INVALID:I = 0x0

.field protected static final RESET_TIMEOUT:I = 0x1388

.field protected static final RETRY_STEP_ATTACH:I = 0x2

.field protected static final RETRY_STEP_DEATTACH:I = 0x1

.field protected static final RETRY_STEP_INVALID:I = 0x0

.field protected static final RETRY_STEP_REGISTER:I = 0x3

.field protected static final RETRY_TIMEOUT:I = 0x3a98

.field private static sDozeMgrStarted:Z


# instance fields
.field protected mCallListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;

.field protected mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

.field protected mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

.field protected mCmdAttachState:I

.field protected mCmdRegisterState:I

.field protected mContext:Landroid/content/Context;

.field protected mCurCallType:I

.field protected mCurRatType:I

.field protected mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

.field protected mEcbmStep:I

.field protected mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

.field protected mImsEcbm:Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

.field protected mIsSRVCCSupport:Z

.field protected mNeedLogoutAfterCall:Z

.field protected mPhoneId:I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

.field protected mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

.field private mRegisterReceiver:Z

.field protected mResetStep:I

.field protected mRetryStep:I

.field protected mSOSMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

.field protected mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

.field protected mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

.field protected mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

.field protected mSubId:I

.field protected mTag:Ljava/lang/String;

.field protected mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

.field protected mUsedLocalAddr:Ljava/lang/String;

.field protected mUtSyncMgr:Lcom/spreadtrum/ims/vowifi/UtSyncManager;


# direct methods
.method static bridge synthetic -$$Nest$mattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->attachInternal(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeattachInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deattachInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mderegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deregisterInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitECBM(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->exitECBM()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitRetry(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->exitRetry()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getLastVoltePcscfAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getVoltePcscfAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleRetryAfter(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->handleRetryAfter(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->init()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNativeReset(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onNativeReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreRegisterInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->reRegisterInternal(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterFailed(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerForceStop()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterLogin(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerLogin(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerLogout(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerPrepare()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterPrepare(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerPrepare(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerSuccess(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetFinished(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msecurityForceStop(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->securityForceStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMobikeInternal(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->startMobikeInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVoltePcscfAddr(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateVoltePcscfAddr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sDozeMgrStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 441
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 442
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPhoneId:I

    .line 77
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 80
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    .line 81
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    .line 82
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 83
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 85
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    .line 86
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mIsSRVCCSupport:Z

    .line 89
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mNeedLogoutAfterCall:Z

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUsedLocalAddr:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 95
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    .line 96
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 108
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    .line 109
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;

    invoke-direct {v3, p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener-IA;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;

    .line 110
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-direct {v3, p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener-IA;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    .line 111
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    invoke-direct {v3, p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener-IA;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    .line 429
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterReceiver:Z

    .line 430
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 445
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 446
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    .line 448
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 450
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 451
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    .line 454
    sget-boolean p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sDozeMgrStarted:Z

    if-nez p1, :cond_0

    .line 455
    sput-boolean v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->sDozeMgrStarted:Z

    .line 456
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 466
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->init()V

    .line 467
    :cond_1
    return-void
.end method

.method private attachInternal(ZLjava/lang/String;)V
    .locals 7

    .line 637
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attach on the version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities$Version;->getVersionInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPhoneId:I

    .line 642
    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getSubId(I)I

    move-result v3

    iput v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    .line 643
    if-gez v3, :cond_1

    .line 644
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Can not get the sub id."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAttachFinished(ZI)V

    .line 646
    :cond_0
    return-void

    .line 649
    :cond_1
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    move v4, v0

    .line 650
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget-object v6, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attach(ZIILjava/lang/String;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 651
    return-void
.end method

.method private deattachInternal(Z)V
    .locals 4

    .line 663
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 664
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(IIZLcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 665
    return-void
.end method

.method private deregisterInternal()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->deregister(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V

    .line 755
    return-void
.end method

.method private exitECBM()V
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    .line 1239
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V

    .line 1242
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->updateEcbm(ZLcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    if-eqz v0, :cond_2

    .line 1248
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->isNotifiedSOSAttach()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onSOSAttachStopped(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1250
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v3, "Exit ECBM, notify as sos attach stopped."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1254
    iput v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    .line 1255
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 1256
    return-void
.end method

.method private exitRetry()V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1287
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 1288
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1290
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerLogout(I)V

    goto :goto_0

    .line 1293
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerFailed()V

    .line 1295
    :goto_0
    return-void
.end method

.method private getLastVoltePcscfAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1110
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Failed ot get the valid pcscf addr as imsi is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-object v1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "-volte-pcscf"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVoltePcscfAddr()Ljava/lang/String;
    .locals 4

    .line 1085
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1087
    invoke-interface {v0}, Lcom/android/ims/internal/IImsServiceEx;->getImsPcscfAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1092
    :cond_0
    goto :goto_0

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the volte register ip as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1091
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private handleRetryAfter(II)Z
    .locals 5

    .line 1259
    if-lez p2, :cond_4

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 1266
    :cond_0
    const v0, 0xe114

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1267
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0x32

    const/4 v2, -0x1

    .line 1268
    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    .line 1267
    invoke-virtual {p1, v0, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1270
    :cond_1
    const v0, 0xe115

    if-ne p1, v0, :cond_2

    .line 1271
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0x34

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1272
    :cond_2
    const/high16 v0, -0x80000000

    const/16 v2, 0x35

    if-ne p1, v0, :cond_3

    .line 1273
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    invoke-virtual {p1, v2, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1276
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle retry after as keep select after "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    invoke-virtual {p1, v2, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1280
    :goto_0
    return v1

    .line 1262
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 4

    .line 984
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 986
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "New instances of preference, ut, call, sms, sos manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 994
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 995
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUtSyncMgr:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    .line 996
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 997
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    .line 998
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    .line 999
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSOSMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSOSManager;

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    .line 1003
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init the vowifi service as WFC enabled["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-eqz v0, :cond_2

    .line 1008
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    .line 1009
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    .line 1010
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->updateSecurityManager(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;)V

    .line 1012
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->bindService()V

    .line 1013
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->bindService()V

    .line 1014
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->bindService()V

    .line 1015
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->bindService()V

    .line 1016
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->bindService()V

    .line 1017
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->registerListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;)V

    .line 1020
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterReceiver:Z

    if-eqz v0, :cond_3

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterReceiver:Z

    .line 1022
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1024
    :cond_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterReceiver:Z

    if-nez v0, :cond_3

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterReceiver:Z

    .line 1027
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1029
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Register carrier config changed receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_3
    :goto_0
    return-void
.end method

.method private onNativeReset()V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->onNativeReset()V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->onNativeReset()V

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_2

    .line 1071
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->onNativeReset()V

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-eqz v0, :cond_3

    .line 1075
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->onNativeReset()V

    .line 1078
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    if-eqz v0, :cond_4

    .line 1079
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->onNativeReset()V

    .line 1081
    :cond_4
    return-void
.end method

.method private reRegisterInternal(ILjava/lang/String;)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->reRegister(ILjava/lang/String;)V

    .line 773
    return-void
.end method

.method private registerFailed()V
    .locals 2

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 1196
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 1198
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSOSError(I)V

    goto :goto_0

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v1, :cond_1

    .line 1202
    invoke-interface {v1, v0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onRegisterStateChanged(II)V

    .line 1205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->forceStop(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)Z

    .line 1209
    :cond_2
    return-void
.end method

.method private registerForceStop()Z
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->forceStop(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)Z

    move-result v0

    return v0
.end method

.method private registerLogin(Z)V
    .locals 9

    .line 1133
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start the register login process, re-login: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v1, 0x4

    const/4 v7, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v7

    .line 1138
    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    invoke-virtual {v2, v3, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->getConfig(II)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v2

    .line 1139
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v3

    .line 1140
    if-eqz v3, :cond_8

    if-nez v2, :cond_1

    goto :goto_5

    .line 1147
    :cond_1
    nop

    .line 1148
    iget-boolean v4, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_prefIPv4:Z

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getValidIPVersion(Z)I

    move-result v4

    .line 1149
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    .line 1150
    iget v5, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v8, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    .line 1151
    invoke-virtual {v5, v8, v0, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->setIPVersion(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1152
    :cond_2
    nop

    .line 1153
    iput v4, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 1154
    if-nez v4, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v6

    .line 1155
    :goto_1
    invoke-virtual {v3, v2}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getLocalIP(Z)Ljava/lang/String;

    move-result-object v4

    .line 1156
    invoke-virtual {v3, v2}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getPcscfIP(Z)Ljava/lang/String;

    move-result-object v5

    .line 1157
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    if-ne v0, v1, :cond_4

    move v1, v7

    goto :goto_2

    :cond_4
    move v1, v6

    .line 1158
    :goto_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    const-string v6, ""

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->login(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1162
    :cond_5
    move v7, v6

    :goto_3
    if-nez v7, :cond_7

    .line 1165
    if-eqz p1, :cond_6

    .line 1168
    const v0, 0xe105

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerLogout(I)V

    goto :goto_4

    .line 1170
    :cond_6
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerFailed()V

    .line 1173
    :cond_7
    :goto_4
    return-void

    .line 1142
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Failed to login as the register IP is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerFailed()V

    .line 1144
    return-void
.end method

.method private registerLogout(I)V
    .locals 2

    .line 1212
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 1213
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRetryStep:I

    .line 1215
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v1, :cond_1

    .line 1216
    invoke-interface {v1, v0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onRegisterStateChanged(II)V

    .line 1217
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    const v1, 0xe105

    if-ne p1, v1, :cond_0

    .line 1218
    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 1217
    :goto_0
    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    .line 1221
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz p1, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->forceStop(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)Z

    .line 1224
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-eqz p1, :cond_3

    .line 1225
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->forceStop(ILcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 1227
    :cond_3
    return-void
.end method

.method private registerPrepare()V
    .locals 1

    .line 710
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerPrepare(Z)V

    .line 711
    return-void
.end method

.method private registerPrepare(Z)V
    .locals 4

    .line 717
    nop

    .line 718
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object p1

    goto :goto_1

    .line 723
    :cond_0
    iget p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 724
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->getConfig(II)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object p1

    .line 725
    if-nez p1, :cond_2

    .line 726
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Before register, need attach success, please check the attach state!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerFailed()V

    .line 728
    return-void

    .line 736
    :cond_2
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    iget-object v1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    iget-object v2, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf4:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf6:Ljava/lang/String;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_voltePcscf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object p1

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mIsSRVCCSupport:Z

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyRegisterListener;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->prepareForLogin(IZLcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V

    .line 741
    return-void
.end method

.method private registerSuccess(I)V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUtSyncMgr:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->sync(I)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->initState(Ljava/lang/Integer;)V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_2

    .line 1183
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getDefaultVideoQuality(Landroid/content/SharedPreferences;)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateVideoQuality(Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;)V

    .line 1184
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->resetCallRatType()V

    .line 1185
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRequiredCNI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateRequiredCNI(Z)V

    .line 1188
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 1189
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v1, :cond_3

    .line 1190
    invoke-interface {v1, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onRegisterStateChanged(II)V

    .line 1192
    :cond_3
    return-void
.end method

.method private resetFinished()V
    .locals 4

    .line 1118
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    .line 1119
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1120
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1122
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mEcbmStep:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v1, :cond_1

    .line 1127
    invoke-interface {v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onResetFinished(II)V

    .line 1129
    :cond_1
    :goto_0
    return-void
.end method

.method private securityForceStop()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MySecurityListener;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->forceStop(ILcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 672
    return-void
.end method

.method private startMobikeInternal()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->startMobike(I)V

    .line 680
    return-void
.end method

.method private uninit()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unbindService()V

    .line 1037
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unregisterListener()V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->unbindService()V

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->unbindService()V

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_3

    .line 1049
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->unbindService()V

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-eqz v0, :cond_4

    .line 1053
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->unbindService()V

    .line 1056
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 1057
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1059
    :cond_5
    return-void
.end method

.method private updateVoltePcscfAddr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update vaild pcscf for the imsi["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-volte-pcscf"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1106
    return-void

    .line 1101
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Failed to update the valid pcscf addr as imsi or addr is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->attach(Z)V

    .line 622
    return-void
.end method

.method public attach(Z)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    .line 628
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Failed to start attach process as do not init now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->init()V

    .line 632
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 634
    :goto_0
    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->createMOCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public deattach()V
    .locals 1

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deattach(Z)V

    .line 655
    return-void
.end method

.method public deattach(Z)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method public deregister()V
    .locals 2

    .line 745
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 747
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 748
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->uninit()V

    .line 473
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    if-eqz v0, :cond_0

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 481
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 482
    return-void
.end method

.method public getAliveCallJitter()I
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getJitter()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAliveCallLose()I
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getPacketLose()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAliveCallRtt()I
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getRtt()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAliveCallType()I
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Get alive call type."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 861
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 862
    if-nez v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v2, "There isn\'t any call in alive state, return unknown."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return v1

    .line 867
    :cond_1
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v0

    .line 868
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getCallCount()I
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurLocalAddress()Ljava/lang/String;
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getCurUsedLocalIP()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 800
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurPAssociatedUri()Ljava/lang/String;
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getPAssociatedUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 791
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurPcscfAddress()Ljava/lang/String;
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getCurUsedPcscfIP()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 809
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurrentImsVideoState()I
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Get alive call type."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCurrentCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 842
    if-nez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v2, "There isn\'t any call, return unknown."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return v1

    .line 847
    :cond_1
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 848
    if-nez v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v2, "There isn\'t video provider, return unknown."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v1

    .line 853
    :cond_2
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->getVideoState()I

    move-result v0

    return v0
.end method

.method public getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mImsEcbm:Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mImsEcbm:Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mImsEcbm:Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    return-object v0
.end method

.method public getPendingCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->getCurRegisterConfig()Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSecurityConfig()Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSubId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->getConfig(II)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSmsImplementation(ILcom/spreadtrum/ims/ImsRadioInterface;)Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    if-nez v0, :cond_0

    new-instance p1, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->getSmsImplementation(ILcom/spreadtrum/ims/ImsRadioInterface;)Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object p1

    .line 550
    :goto_0
    return-object p1
.end method

.method public getUtInterface()Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getUtInterface(I)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUtInterface(I)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUTMgr:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    if-nez v0, :cond_0

    .line 535
    const/4 p1, 0x0

    return-object p1

    .line 538
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->getUtImpl(Ljava/lang/Integer;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move-result-object p1

    return-object p1
.end method

.method public isSupportMobike()Z
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getSecurityConfig()Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v0

    .line 684
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_isSupportMobike:Z

    :goto_0
    return v0
.end method

.method public notifyImsCNIInfo(ILjava/lang/String;I)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->updateCellularNetInfo(ILjava/lang/String;I)V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateCellularNetInfo(ILjava/lang/String;I)V

    .line 981
    :cond_1
    return-void
.end method

.method protected onSOSCallTerminated()V
    .locals 0

    .line 495
    return-void
.end method

.method protected onSOSError(I)V
    .locals 0

    .line 509
    return-void
.end method

.method protected onSOSMsgTimeout()V
    .locals 0

    .line 505
    return-void
.end method

.method protected onSOSProcessFinished()Z
    .locals 1

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public onSRVCCStateChanged(I)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->onSRVCCStateChanged(I)V

    .line 972
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 487
    const-string p1, "vt_resolution"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz p1, :cond_0

    .line 489
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities;->getDefaultVideoQuality(Landroid/content/SharedPreferences;)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateVideoQuality(Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;)V

    .line 491
    :cond_0
    return-void
.end method

.method public onVoLTEPDNActivated()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoLTE PDN activated, will redefine the reset process. Current reset step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mResetStep:I

    if-ge v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 562
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 564
    const v1, 0x7fffffff

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 565
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    :cond_0
    return-void
.end method

.method public reRegister()V
    .locals 2

    .line 761
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->reRegister(ILjava/lang/String;)V

    .line 762
    return-void
.end method

.method public reRegister(ILjava/lang/String;)V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method public register()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    if-eqz v0, :cond_0

    .line 698
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdRegisterState:I

    .line 699
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Failed to start register process as do not init now. Shouldn\'t be here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 704
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register the vowifi service callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-nez p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Can not register the callback as it is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 518
    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    .line 519
    return-void
.end method

.method public resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V
    .locals 1

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;I)V

    .line 571
    return-void
.end method

.method public resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;I)V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset the security and sip stack with wifi state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "connect"

    goto :goto_0

    :cond_0
    const-string v2, "disconnect"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay millis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eqz p1, :cond_4

    .line 590
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    if-nez v0, :cond_1

    goto :goto_2

    .line 597
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateRegisterState(I)V

    .line 598
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mSmsMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->updateRegisterState(I)V

    .line 601
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 604
    nop

    .line 605
    iget p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCmdAttachState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 610
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 611
    const v0, 0x7fffffff

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 612
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "As there isn\'t attach, force reset."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 615
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 617
    :goto_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 618
    return-void

    .line 591
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string p2, "Do not init now, handle as reset finished."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 593
    return-void

    .line 587
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The wifi state couldn\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendECBMTimeoutMsg(I)V
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->removeMessages(I)V

    .line 1232
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1233
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1234
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1235
    return-void
.end method

.method public setSRVCCSupport(Z)V
    .locals 0

    .line 967
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mIsSRVCCSupport:Z

    .line 968
    return-void
.end method

.method public setUsedLocalAddr(Ljava/lang/String;)V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the used local addr to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mUsedLocalAddr:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public startMobike()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 676
    return-void
.end method

.method public terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V
    .locals 2

    .line 825
    if-eqz p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 830
    return-void

    .line 826
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The wifi state couldn\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterCallback()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister the vowifi service callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    .line 524
    return-void
.end method

.method public updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 4

    .line 924
    if-eqz p1, :cond_1

    .line 928
    nop

    .line 929
    nop

    .line 930
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$2;->$SwitchMap$com$spreadtrum$ims$vowifi$VoWifiServiceImpl$CallRatState:[I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 944
    :pswitch_0
    nop

    .line 947
    const/16 v2, 0x3e8

    .line 950
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    .line 951
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    goto :goto_1

    .line 936
    :pswitch_1
    iget p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 937
    move v1, v0

    goto :goto_0

    .line 939
    :cond_0
    const/4 p1, 0x3

    move v1, p1

    .line 941
    :goto_0
    const/16 p1, 0x12

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    .line 942
    goto :goto_1

    .line 932
    :pswitch_2
    nop

    .line 933
    const/16 p1, 0xe

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    .line 934
    move v1, v2

    .line 955
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 956
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 959
    return-void

    .line 925
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The call rat type couldn\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCurCallSlot(I)Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateCurCallSlot(I)Z

    move-result p1

    return p1

    .line 899
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateCurCallType(I)V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the current call type from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and current rat type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    if-eq v0, p1, :cond_1

    .line 907
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurCallType:I

    .line 909
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCurRatType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 911
    nop

    .line 912
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 913
    const/4 p1, 0x1

    goto :goto_0

    .line 915
    :cond_0
    const/4 p1, 0x3

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 921
    :cond_1
    return-void
.end method

.method public updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V
    .locals 1

    .line 884
    if-eqz p1, :cond_1

    .line 888
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V

    .line 889
    :cond_0
    return-void

    .line 885
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The incoming call action couldn\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
