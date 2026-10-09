.class public Lcom/spreadtrum/ims/ImsServiceImpl;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;,
        Lcom/spreadtrum/ims/ImsServiceImpl$Listener;,
        Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;,
        Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;,
        Lcom/spreadtrum/ims/ImsServiceImpl$VoLTECallAvailSyncStatus;,
        Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandoverStatus;,
        Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandoverType;,
        Lcom/spreadtrum/ims/ImsServiceImpl$VoWifiAttachStatus;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DO_NOT_SUPPORT_IMS_DESCRIPTION:Ljava/lang/String; = "HTTP/1.1 403"

.field protected static final EVENT_AIRPLANE_MODE_EXIT_REQ:I = 0x83

.field protected static final EVENT_C2K_AUTO_SWITCH:I = 0x88

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x65

.field protected static final EVENT_GET_IMS_USER_AGENT:I = 0x80

.field protected static final EVENT_GET_RAT_CAP_NV_CONFIG:I = 0x79

.field protected static final EVENT_GET_RAT_CAP_RESULT:I = 0x7c

.field protected static final EVENT_GET_SMS_OVER_IP:I = 0x7e

.field protected static final EVENT_GET_VIDEO_RESOLUTION:I = 0x78

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x68

.field protected static final EVENT_IMS_ERROR_CAUSE_INFO:I = 0x7b

.field protected static final EVENT_IMS_GET_IMS_CNI_INFO:I = 0x7a

.field protected static final EVENT_IMS_GET_IMS_REG_ADDRESS:I = 0x75

.field protected static final EVENT_IMS_GET_IMS_STACK_VERSION:I = 0x84

.field protected static final EVENT_IMS_GET_PAU:I = 0x7f

.field protected static final EVENT_IMS_GET_PCSCF_ADDRESS:I = 0x74

.field protected static final EVENT_IMS_GET_SRVCC_CAPBILITY:I = 0x73

.field protected static final EVENT_IMS_HANDOVER_ACTION_COMPLETE:I = 0x6f

.field protected static final EVENT_IMS_HANDOVER_STATE_CHANGED:I = 0x6e

.field protected static final EVENT_IMS_HANDOVER_STATUS_CHANGED:I = 0x82

.field protected static final EVENT_IMS_NETWORK_INFO_UPDATE:I = 0x71

.field protected static final EVENT_IMS_PND_STATE_CHANGED:I = 0x70

.field protected static final EVENT_IMS_REGISTER_ADDRESS_CHANGED:I = 0x6d

.field protected static final EVENT_IMS_SET_IMS_REG_ADDRESS:I = 0x7d

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x66

.field protected static final EVENT_IMS_STATE_DONE:I = 0x67

.field protected static final EVENT_IMS_WIFI_PARAM:I = 0x72

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x76

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x6b

.field protected static final EVENT_RADIO_ON:I = 0x77

.field public static final EVENT_RECORDS_LOADED:I = 0xb

.field protected static final EVENT_SET_VOICE_CALL_AVAILABILITY_DONE:I = 0x6c

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x69

.field protected static final EVENT_SUBSCRIBER_ASSOCIATED_URI_CHANGED:I = 0x85

.field protected static final EVENT_VOWIFI_ATTACH_STATE_CHANGED:I = 0x81

.field private static final IMS_CALLING_RTP_TIME_OUT:I = 0x1

.field public static final IMS_ERROR_CAUSE_ERRCODE_REG_FORBIDDED:I = 0x193

.field public static final IMS_ERROR_CAUSE_TYPE_CALL_FAILED:I = 0x0

.field public static final IMS_ERROR_CAUSE_TYPE_IMSREG_FAILED:I = 0x2

.field public static final IMS_ERROR_CAUSE_TYPE_SMS_FAILED:I = 0x1

.field public static final IMS_ERROR_CAUSE_TYPE_SS_FAILED:I = 0x4

.field public static final IMS_ERROR_CAUSE_TYPE_USSD_FAILED:I = 0x5

.field private static final IMS_INVALID_VOLTE_SETTING:I = -0x1

.field public static final IMS_REG_STATE_DEREGISTERING:I = 0x6

.field public static final IMS_REG_STATE_INACTIVE:I = 0x0

.field public static final IMS_REG_STATE_REGISTERED:I = 0x1

.field public static final IMS_REG_STATE_REGISTERING:I = 0x2

.field public static final IMS_REG_STATE_REG_FAIL:I = 0x3

.field public static final IMS_REG_STATE_ROAMING:I = 0x5

.field public static final IMS_REG_STATE_UNKNOWN:I = 0x4

.field public static final NETWORK_RAT_CS_ONLY:I = 0x2

.field public static final NETWORK_RAT_PS_BY_IMS_STATUS:I = 0x3

.field public static final NETWORK_RAT_PS_ONLY:I = 0x1

.field public static final NETWORK_RAT_PS_PREFER:I = 0x0

.field private static final PROP_OEM_C2K_AUTO_SWITCH_ENABLED:Ljava/lang/String; = "persist.sys.c2k.autoswitch_enabled"

.field private static final PROP_RADIO_IMSUA_SETTING:Ljava/lang/String; = "persist.vendor.radio.imsua.setting"

.field private static final TAG:Ljava/lang/String;

.field private static final VOLTE_REGISTED_BROADCAST:Ljava/lang/String; = "com.spreadtrum.ims.VOLTE_REGISTED"

.field private static final VOLTE_REGISTED_CLASSNAME:Ljava/lang/String; = "com.sprd.dm.mbselfreg.DmReceiver"

.field private static final VOLTE_REGISTED_PAC_NAME:Ljava/lang/String; = "com.sprd.dm.mbselfreg"


# instance fields
.field private VoLTECallAvailSync:I

.field private currentVoLTESetting:I

.field private mAliveCallJitter:I

.field private mAliveCallLose:I

.field private mAliveCallRtt:I

.field private mContext:Landroid/content/Context;

.field private mCurrentImsFeature:I

.field private mDeviceCapabilitiesFirstChange:Z

.field private mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mDisabledFeatures:[I

.field private mEnabledFeatures:[I

.field private mImsEcbmImpl:Lcom/spreadtrum/ims/ImsEcbmImpl;

.field private mImsFeatureStatusCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

.field private mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

.field private mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IImsPdnStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsPscfAddress:Ljava/lang/String;

.field private mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mImsRegAddress:Ljava/lang/String;

.field private mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

.field private mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsRegisterRat:I

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

.field private mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

.field private mImsUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

.field private mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

.field private mIncomingCallIntent:Landroid/app/PendingIntent;

.field mIsC2kMode:Z

.field private mIsSingleImsStack:Z

.field private mIsUtDisableByNetWork:Z

.field private mIsVoWifiAttached:Z

.field private mIsVoltePdnActive:Z

.field private mLatestTransport:I

.field private mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/ImsServiceImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNWNumeric:Ljava/lang/String;

.field private mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

.field private mNetworkRATPrefer:I

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mPAU:Ljava/lang/String;

.field private mPhoneId:I

.field private mServiceClass:I

.field public mServiceId:I

.field private mServiceState:I

.field private mSrvccCapbility:I

.field private mSubId:I

.field private mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mVolteRegisterStateOld:Z

.field private mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

.field private pendingVoLTESetting:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsHandler(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsRegister(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsRegister;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceCallTracker(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceCallTracker;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceState(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceState;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsServiceImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsServiceImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmImsRegisterRat(Lcom/spreadtrum/ims/ImsServiceImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVoWifiAttached(Lcom/spreadtrum/ims/ImsServiceImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVoltePdnActive(Lcom/spreadtrum/ims/ImsServiceImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestTransport(Lcom/spreadtrum/ims/ImsServiceImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPAU(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPAU:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleC2kAutoSwitch(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleC2kAutoSwitch(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallAbilitySyncFail(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleCallAbilitySyncFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetImsCniInfo(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetImsCniInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetImsSrvccCap(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetImsSrvccCap(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetImsUserAgent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetImsUserAgent(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetPAU(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetPAU(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetRatCapNvConfig(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetRatCapNvConfig(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetRatCapResault(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetRatCapResault(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsErrorCauseInfo(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsErrorCauseInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsIccEvent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsIccEvent(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsRegEvent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsRegEvent(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioOffOrNotAvailable(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleRadioOffOrNotAvailable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceStateChange(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleServiceStateChange(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCallAbilityDone(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleSetCallAbilityDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSrvccStateChange(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleSrvccStateChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImsRegisterState(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsRegisterState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 103
    const-class v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsServiceImpl;->TAG:Ljava/lang/String;

    .line 104
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/spreadtrum/ims/ImsServiceImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 13

    .line 443
    move-object v8, p0

    move v9, p1

    move-object v1, p2

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 211
    const/4 v0, 0x1

    iput v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceClass:I

    .line 216
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    .line 227
    const-string v2, ""

    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mNWNumeric:Ljava/lang/String;

    .line 229
    iput-object v10, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 230
    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegAddress:Ljava/lang/String;

    .line 231
    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    .line 232
    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mPAU:Ljava/lang/String;

    .line 233
    const/4 v2, -0x1

    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    .line 234
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    .line 235
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    .line 236
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mSrvccCapbility:I

    .line 238
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    .line 239
    iput v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRATPrefer:I

    .line 240
    const/4 v3, 0x3

    iput v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceState:I

    .line 241
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    .line 245
    new-instance v3, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 246
    new-instance v3, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 248
    new-instance v3, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 249
    new-instance v3, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 250
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    .line 252
    iput v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    .line 253
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 254
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 257
    iput-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceCapabilitiesFirstChange:Z

    .line 261
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mSubId:I

    .line 264
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    .line 265
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    .line 266
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    .line 267
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    .line 268
    iput v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    .line 270
    iput-object v10, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    .line 271
    iput-object v10, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 277
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 412
    const/16 v0, 0x8

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    iput-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    .line 422
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    .line 444
    iput v9, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    .line 445
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 446
    iput-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 447
    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 448
    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 449
    add-int/lit8 v0, v9, 0x1

    iput v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    .line 450
    new-instance v0, Lcom/spreadtrum/ims/ImsRegister;

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-object v4, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget v5, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/spreadtrum/ims/ImsRegister;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;I)V

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    .line 451
    new-instance v0, Lcom/spreadtrum/ims/ImsServiceState;

    invoke-direct {v0, v11, v11}, Lcom/spreadtrum/ims/ImsServiceState;-><init>(ZI)V

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    .line 452
    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object/from16 v3, p6

    invoke-direct {v0, v2, p2, p0, v3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    .line 454
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result v0

    iput-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    .line 455
    nop

    .line 456
    if-nez v0, :cond_0

    .line 457
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getUtInterface(I)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 456
    :cond_0
    move-object v4, v10

    .line 462
    :goto_0
    new-instance v6, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget v5, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/ut/ImsUtProxy;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ut/ImsUtImpl;Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V

    iput-object v6, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 463
    new-instance v0, Lcom/spreadtrum/ims/ImsEcbmImpl;

    invoke-direct {v0}, Lcom/spreadtrum/ims/ImsEcbmImpl;-><init>()V

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsEcbmImpl:Lcom/spreadtrum/ims/ImsEcbmImpl;

    .line 464
    new-instance v0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    .line 465
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-nez v0, :cond_1

    .line 466
    new-instance v12, Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-object v3, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v4, 0x0

    iget v5, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v7, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-object v0, v12

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/spreadtrum/ims/ImsServiceCallTracker;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/app/PendingIntent;ILcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    iput-object v12, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 467
    new-instance v0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 468
    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V

    .line 472
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    iget v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    const-string v2, "android:phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    const-string v0, "persist.sys.c2k.autoswitch_enabled"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x88

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForCtccAutoSwitchChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    :cond_2
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v1

    iput v1, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    .line 485
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsBearerStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 486
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v3, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 487
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x69

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 488
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x6e

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerImsHandoverStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 489
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x71

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerImsNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 490
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x6d

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerImsRegAddress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x72

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerImsWiFiParam(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x76

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 493
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v4, 0x77

    invoke-virtual {v0, v1, v4, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    invoke-virtual {v1, v3}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 496
    iget-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsBearerState(Landroid/os/Message;)V

    .line 499
    :cond_3
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x85

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForSubscriberAssociatedUriChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 503
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 504
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/spreadtrum/ims/ImsServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/spreadtrum/ims/ImsServiceImpl$1;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceImpl onCreate->phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 554
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 557
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsRegAddress(Landroid/os/Message;)V

    .line 558
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsErrorCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    iget-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForVoWifiAttachStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 563
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x83

    invoke-virtual {v0, v1, v2, v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForAirPlaneModeExitRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 569
    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/ImsRegister;Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 5

    .line 434
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceClass:I

    .line 216
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    .line 227
    const-string v2, ""

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNWNumeric:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 230
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegAddress:Ljava/lang/String;

    .line 231
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPAU:Ljava/lang/String;

    .line 233
    const/4 v2, -0x1

    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    .line 234
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    .line 235
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    .line 236
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mSrvccCapbility:I

    .line 238
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    .line 239
    iput v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRATPrefer:I

    .line 240
    const/4 v4, 0x3

    iput v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceState:I

    .line 241
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    .line 245
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 246
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 248
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 249
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 250
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    .line 252
    iput v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    .line 253
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 254
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 257
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceCapabilitiesFirstChange:Z

    .line 261
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mSubId:I

    .line 264
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    .line 265
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    .line 266
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    .line 267
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    .line 268
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    .line 270
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    .line 271
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 277
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 412
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    .line 422
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    .line 435
    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    .line 436
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 437
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 438
    iput-object p5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 439
    iput-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    .line 440
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private VoLTEPdnStatusChange(I)V
    .locals 2

    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoLTEPdnStatusChange --> state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2442
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2443
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    .line 2444
    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    goto :goto_0

    .line 2446
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    .line 2447
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    if-ne p1, v0, :cond_2

    .line 2448
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    if-eqz p1, :cond_1

    .line 2449
    const/4 p1, 0x2

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    goto :goto_0

    .line 2451
    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    .line 2455
    :cond_2
    :goto_0
    return-void
.end method

.method private VoWifiAttachStateChange(I)V
    .locals 3

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoWifiAttachStateChange --> state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2459
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2460
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    .line 2461
    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    goto :goto_2

    .line 2463
    :cond_0
    if-ne p1, v0, :cond_1

    .line 2464
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->requestNetwork()V

    goto :goto_0

    .line 2465
    :cond_1
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 2466
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->releaseNetwork()V

    .line 2468
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    .line 2469
    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    if-ne v2, v0, :cond_4

    .line 2470
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    if-eqz v0, :cond_3

    .line 2471
    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    goto :goto_1

    .line 2473
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    .line 2476
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->releaseNetwork()V

    .line 2479
    :goto_2
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyVoWifiAttachStateChange(I)V

    .line 2480
    return-void
.end method

.method private getCarrierBooleanByKey(Ljava/lang/String;Z)Z
    .locals 3

    .line 2665
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v0

    .line 2666
    new-instance v1, Landroid/telephony/UniCarrierConfigManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 2668
    invoke-virtual {v1, v0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2669
    nop

    .line 2671
    if-eqz v0, :cond_0

    .line 2672
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarrierBooleanByKey, key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", keyValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2675
    :cond_0
    return p2
.end method

.method private getImsUAFromCC(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2430
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p1

    .line 2431
    new-instance v0, Landroid/telephony/UniCarrierConfigManager;

    invoke-direct {v0, p3}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 2432
    invoke-virtual {v0, p1}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2433
    invoke-virtual {v0, p1}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2435
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 2

    .line 1575
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1576
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1577
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private handleAirplaneModeExitRequest(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1173
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 1174
    const-string p1, "EVENT_AIRPLANE_MODE_EXIT_REQ"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 1176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1175
    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1178
    :goto_0
    if-eqz p1, :cond_4

    .line 1179
    const-string p1, "show_alternative_service_error_dialog"

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCarrierBooleanByKey(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1181
    const/16 p1, 0x6f

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->terminateVolteCall(I)V

    .line 1182
    return-void

    .line 1184
    :cond_1
    const-string p1, "EVENT_AIRPLANE_MODE_EXIT_REQ-> turn off APM"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 1186
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1187
    if-nez p1, :cond_2

    .line 1188
    const-string p1, "EVENT_AIRPLANE_MODE_EXIT_REQ ConnectivityManager is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1189
    return-void

    .line 1191
    :cond_2
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_1

    .line 1193
    :cond_3
    if-eqz p1, :cond_4

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_AIRPLANE_MODE_EXIT_REQ ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 1193
    :cond_4
    :goto_1
    nop

    .line 1196
    :goto_2
    return-void
.end method

.method private handleC2kAutoSwitch(Landroid/os/AsyncResult;)V
    .locals 4

    .line 1035
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1036
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_C2K_AUTO_SWITCH -> recv state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_C2K_AUTO_SWITCH -> mIsC2kMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    if-nez v0, :cond_2

    .line 1041
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    if-eq v0, v2, :cond_0

    .line 1043
    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 1044
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    goto :goto_0

    .line 1046
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    if-eqz v0, :cond_1

    .line 1047
    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    goto :goto_0

    .line 1049
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 1052
    :goto_0
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 1053
    const-string v0, "EVENT_C2K_AUTO_SWITCH -> turn off volte for c2k mode"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1056
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    if-ne p1, v2, :cond_5

    .line 1057
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_C2K_AUTO_SWITCH -> isEnhanced4gLteModeSettingEnabledByUser()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1059
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1060
    if-eqz p1, :cond_4

    .line 1061
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1062
    const-string p1, "EVENT_C2K_AUTO_SWITCH -> sync user volte switch"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1063
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    if-eq p1, v2, :cond_3

    .line 1065
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 1066
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    goto :goto_1

    .line 1068
    :cond_3
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 1071
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 1073
    :cond_5
    goto :goto_2

    .line 1074
    :cond_6
    if-eqz p1, :cond_7

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_C2K_AUTO_SWITCH: ar.exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 1077
    :cond_7
    const-string p1, "EVENT_C2K_AUTO_SWITCH: ar is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1080
    :goto_2
    return-void
.end method

.method private handleCallAbilitySyncFail()V
    .locals 3

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_ON-> mIsC2kMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 942
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    if-eqz v0, :cond_2

    .line 943
    const-string v0, "EVENT_RADIO_ON -> escape c2k mode for radio on"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    const-string v0, "EVENT_RADIO_ON -> sync user volte switch"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 948
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    if-eq v0, v2, :cond_0

    .line 950
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 951
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    goto :goto_0

    .line 953
    :cond_0
    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 956
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 958
    goto :goto_1

    .line 959
    :cond_2
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 960
    const-string v0, "sync fail-> setVoLTECallAvailablity"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 961
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    .line 964
    :cond_3
    :goto_1
    return-void
.end method

.method private handleGetImsCniInfo(Landroid/os/AsyncResult;)V
    .locals 4

    .line 967
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v0

    const-string v1, " info.age:"

    const-string v2, " info.info:"

    const-string v3, "EVENT_IMS_GET_IMS_CNI_INFO->info.type: "

    if-eqz v0, :cond_0

    .line 969
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->type:I

    iget-object v2, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->info:Ljava/lang/String;

    iget p1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->age:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsService;->onImsCNIInfoChange(ILjava/lang/String;I)V

    .line 973
    goto :goto_0

    .line 974
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->type:I

    iget-object v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->info:Ljava/lang/String;

    iget p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->age:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/ImsService;->onImsCNIInfoChange(ILjava/lang/String;I)V

    .line 981
    :cond_1
    :goto_0
    return-void
.end method

.method private handleGetImsRegAddress(Landroid/os/AsyncResult;)V
    .locals 2

    .line 890
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 891
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 892
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 893
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    .line 895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_IMS_GET_IMS_REG_ADDRESS,mImsPscfAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 898
    :cond_0
    return-void
.end method

.method private handleGetImsSrvccCap(Landroid/os/AsyncResult;)V
    .locals 1

    .line 1108
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1109
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1110
    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mSrvccCapbility:I

    .line 1111
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->notifySrvccCapbility(I)V

    .line 1112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_VOICE_CALL_AVAILABILITY_DONE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mSrvccCapbility:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1114
    :cond_0
    return-void
.end method

.method private handleGetImsStackVersion(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1137
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1138
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get ImsStackVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->onGetCpImsStatckVersion(I)V

    .line 1141
    goto :goto_0

    .line 1142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetImsStackVersion ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1144
    :goto_0
    return-void
.end method

.method private handleGetImsUserAgent(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1124
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1125
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_IMS_USER_AGENT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    :cond_0
    if-eqz p1, :cond_1

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_IMS_USER_AGENT ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 1130
    :cond_1
    :goto_0
    nop

    .line 1133
    :goto_1
    return-void
.end method

.method private handleGetPAU(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1026
    const-string v0, "EVENT_IMS_GET_PAU"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1027
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1028
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPAU:Ljava/lang/String;

    goto :goto_0

    .line 1029
    :cond_0
    if-eqz p1, :cond_1

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_GET_PAU ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1032
    :cond_1
    :goto_0
    return-void
.end method

.method private handleGetPcscfAdrress(Landroid/os/AsyncResult;)V
    .locals 1

    .line 1117
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1118
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    .line 1119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_IMS_GET_PCSCF_ADDRESS,mImsPscfAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1121
    :cond_0
    return-void
.end method

.method private handleGetRatCapNvConfig(Landroid/os/AsyncResult;)V
    .locals 3

    .line 843
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 844
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_RAT_CAP_NV_CONFIG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 846
    aget p1, p1, v1

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRATPrefer:I

    .line 847
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getSpecialRatcap(Landroid/os/Message;I)V

    .line 849
    goto :goto_0

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_RAT_CAP_NV_CONFIG ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 852
    :goto_0
    return-void
.end method

.method private handleGetRatCapResault(Landroid/os/AsyncResult;)V
    .locals 4

    .line 1008
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1009
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_RAT_CAP_RESULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1011
    aget p1, p1, v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 1012
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez p1, :cond_1

    .line 1013
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    goto :goto_2

    .line 1016
    :cond_1
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez p1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 1020
    :goto_2
    goto :goto_3

    .line 1021
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_RAT_CAP_RESULT ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 1023
    :goto_3
    return-void
.end method

.method private handleImsErrorCauseInfo(Landroid/os/AsyncResult;)V
    .locals 4

    .line 984
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v0

    const-string v1, "info.errDescription:"

    const-string v2, "info.errCode:"

    const-string v3, "EVENT_IMS_ERROR_CAUSE_INFO->info.type: "

    if-eqz v0, :cond_0

    .line 986
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->errCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->errDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 989
    iget v0, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->type:I

    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->errCode:I

    iget-object p1, p1, Lvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;->errDescription:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->onImsErrCauseInfoChange(IILjava/lang/String;)V

    .line 990
    goto :goto_0

    .line 991
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->errCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->errDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 995
    iget v0, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->type:I

    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->errCode:I

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->errDescription:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->onImsErrCauseInfoChange(IILjava/lang/String;)V

    .line 996
    goto :goto_0

    .line 998
    :cond_1
    if-eqz p1, :cond_2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_REGISTER_SPIMS_REASON: ar.exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ar.result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_2
    const-string p1, "EVENT_IMS_REGISTER_SPIMS_REASON: ar == null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void
.end method

.method private handleImsHandOverStateChange(Landroid/os/AsyncResult;)V
    .locals 2

    .line 877
    if-eqz p1, :cond_1

    .line 878
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 880
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 881
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsService;->onImsHandoverStateChange(ZI)V

    .line 882
    goto :goto_0

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_HANDOVER_STATE_CHANGED : ar.exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ar.result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 887
    :cond_1
    :goto_0
    return-void
.end method

.method private handleImsHandoverStatusChange(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1161
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_0

    .line 1162
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1163
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 1164
    const/4 v1, 0x1

    aget p1, p1, v1

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_HANDOVER_STATUS_CHANGED->type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->imsHandoverStatusChange(II)V

    goto :goto_0

    .line 1167
    :cond_0
    if-eqz p1, :cond_1

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_HANDOVER_STATUS_CHANGED ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 1167
    :cond_1
    :goto_0
    nop

    .line 1170
    :goto_1
    return-void
.end method

.method private handleImsHanoverComplete(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1083
    const/16 v0, 0x3e7

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->onImsHandoverStateChange(ZI)V

    goto :goto_1

    .line 1084
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->onImsHandoverStateChange(ZI)V

    .line 1088
    :goto_1
    return-void
.end method

.method private handleImsIccEvent(Landroid/os/Message;)V
    .locals 0

    .line 1210
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1212
    :pswitch_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->onRecordsLoaded()V

    .line 1213
    nop

    .line 1217
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private handleImsNetworkInfoUpate(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1091
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v0

    const-string v1, "info.mInfo: "

    const-string v2, "EVENT_IMS_NETWORK_INFO_UPDATE->info.mType: "

    if-eqz v0, :cond_0

    .line 1093
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->type:I

    iget-object p1, p1, Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsService;->onImsNetworkInfoChange(ILjava/lang/String;)V

    .line 1097
    goto :goto_0

    .line 1098
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->type:I

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsService;->onImsNetworkInfoChange(ILjava/lang/String;)V

    .line 1105
    :cond_1
    :goto_0
    return-void
.end method

.method private handleImsPdnStateChange(Landroid/os/AsyncResult;)V
    .locals 4

    .line 901
    if-eqz p1, :cond_7

    .line 902
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 903
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 904
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 905
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 906
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 907
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 908
    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 910
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsPdnStateChange -> ImsPDNStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 912
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz p1, :cond_2

    .line 913
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTEPdnStatusChange(I)V

    goto :goto_1

    .line 916
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/spreadtrum/ims/ImsService;->onImsPdnStatusChange(II)V

    .line 917
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsPdnStateChange(I)V

    .line 918
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 919
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v3, 0x74

    .line 920
    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 919
    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsPcscfAddress(Landroid/os/Message;)V

    .line 923
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 924
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_PND_STATE_CHANGED -> setVoLTECallAvailablity, ImsPDNStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 927
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    .line 932
    :cond_5
    :goto_1
    goto :goto_2

    .line 933
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_PND_STATE_CHANGED : ar.exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ar.result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 937
    :cond_7
    :goto_2
    return-void
.end method

.method private handleImsRegAdressChange(Landroid/os/AsyncResult;)V
    .locals 3

    .line 800
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 801
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 802
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    .line 803
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_REGISTER_ADDRESS_CHANGED psfcsAddr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 805
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    .line 807
    :cond_0
    goto :goto_0

    .line 808
    :cond_1
    const-string p1, "EVENT_IMS_REGISTER_ADDRESS_CHANGED has exception!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void
.end method

.method private handleImsRegEvent(Landroid/os/Message;)V
    .locals 3

    .line 1220
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1221
    iget p1, p1, Landroid/os/Message;->what:I

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1266
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleSubscriberAssociatedUriChanged(Landroid/os/AsyncResult;)V

    .line 1267
    goto :goto_0

    .line 1262
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetImsStackVersion(Landroid/os/AsyncResult;)V

    .line 1263
    goto :goto_0

    .line 1259
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleAirplaneModeExitRequest(Landroid/os/AsyncResult;)V

    .line 1260
    goto :goto_0

    .line 1256
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsHandoverStatusChange(Landroid/os/AsyncResult;)V

    .line 1257
    goto :goto_0

    .line 1253
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleVoWifiAttachStateChange(Landroid/os/AsyncResult;)V

    .line 1254
    goto :goto_0

    .line 1249
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetImsRegAddress(Landroid/os/AsyncResult;)V

    .line 1250
    goto :goto_0

    .line 1246
    :sswitch_6
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleGetPcscfAdrress(Landroid/os/AsyncResult;)V

    .line 1247
    goto :goto_0

    .line 1243
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsNetworkInfoUpate(Landroid/os/AsyncResult;)V

    .line 1244
    goto :goto_0

    .line 1240
    :sswitch_8
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsPdnStateChange(Landroid/os/AsyncResult;)V

    .line 1241
    goto :goto_0

    .line 1237
    :sswitch_9
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsHanoverComplete(Landroid/os/AsyncResult;)V

    .line 1238
    goto :goto_0

    .line 1234
    :sswitch_a
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsHandOverStateChange(Landroid/os/AsyncResult;)V

    .line 1235
    goto :goto_0

    .line 1231
    :sswitch_b
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsRegAdressChange(Landroid/os/AsyncResult;)V

    .line 1232
    goto :goto_0

    .line 1228
    :sswitch_c
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsStateDone(Landroid/os/AsyncResult;)V

    .line 1229
    goto :goto_0

    .line 1223
    :sswitch_d
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x67

    .line 1224
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1223
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1225
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->handleImsStateChange(Landroid/os/AsyncResult;)V

    .line 1226
    nop

    .line 1271
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_d
        0x67 -> :sswitch_c
        0x6d -> :sswitch_b
        0x6e -> :sswitch_a
        0x6f -> :sswitch_9
        0x70 -> :sswitch_8
        0x71 -> :sswitch_7
        0x74 -> :sswitch_6
        0x75 -> :sswitch_5
        0x81 -> :sswitch_4
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleImsStateChange(Landroid/os/AsyncResult;)V
    .locals 5

    .line 573
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 574
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 575
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 576
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 577
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 578
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 579
    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 582
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_STATE_CHANGED-> recv state:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 585
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 586
    const-string p1, "EVENT_IMS_STATE_CHANGED -> not handle IMS_REG_STATE_REGISTERING"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 587
    return-void

    .line 590
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    .line 591
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 592
    move v3, v4

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput-boolean v3, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 594
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz p1, :cond_4

    .line 595
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    .line 599
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iput v0, p1, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_IMS_STATE_CHANGED->mRegState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " | mSrvccState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->reportRegState(I)V

    .line 604
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    if-ne p1, v4, :cond_6

    :cond_5
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    if-ne p1, v2, :cond_6

    .line 607
    const-string p1, "EVENT_IMS_STATE_CHANGED -> setVoLTECallAvailablity"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    .line 611
    :cond_6
    goto :goto_2

    .line 612
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_STATE_CHANGED : ar.exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ar.result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 614
    :goto_2
    return-void
.end method

.method private handleImsStateDone(Landroid/os/AsyncResult;)V
    .locals 7

    .line 741
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_STATE_DONE->ar.exception mServiceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iput-boolean v1, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 746
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 747
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 748
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 749
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 750
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [I

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    if-lez v3, :cond_3

    .line 751
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 752
    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 755
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    .line 756
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, p1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 758
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz p1, :cond_5

    .line 759
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    .line 764
    :cond_5
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    const-string v0, "1"

    const-string v3, "0"

    const/16 v4, 0x7f

    const-string v5, "gsm.sys.volte.state"

    if-eqz p1, :cond_8

    .line 766
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    if-ne p1, v2, :cond_6

    .line 768
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendImsRegistedBroadcast(I)V

    .line 769
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    invoke-virtual {v1, v4}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getPAU(Landroid/os/Message;)V

    .line 771
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v1, v2

    .line 772
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    if-eqz v2, :cond_7

    .line 773
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v3

    .line 771
    :goto_2
    invoke-virtual {p1, v1, v5, v0}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsRegisterState()V

    goto/16 :goto_4

    .line 778
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTelephonyProperty mServiceId:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v6, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "mImsRegistered:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v6, v6, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, ", VoPSRadioAvailable:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 781
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 783
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz p1, :cond_9

    .line 784
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendImsRegistedBroadcast(I)V

    .line 785
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 786
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    invoke-virtual {v1, v4}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getPAU(Landroid/os/Message;)V

    .line 789
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v1, v2

    .line 790
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v4, v4, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v3

    .line 789
    :goto_3
    invoke-virtual {p1, v1, v5, v0}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyRegisterStateChange()V

    .line 792
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    .line 793
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegistration(IZZ)V

    .line 796
    :cond_b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_IMS_STATE_DONE->mServiceState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 4

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE->mImsRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 858
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    const-string v1, "0"

    const-string v2, "gsm.sys.volte.state"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iput-boolean v3, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 863
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsRegisterState()V

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iput-boolean v3, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 870
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyRegisterStateChange()V

    .line 873
    :cond_1
    :goto_0
    return-void
.end method

.method private handleServiceStateChange(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 650
    if-eqz p1, :cond_b

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSSChange -> DataRadioType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DataRegState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSSChange -> mImsRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVoLteEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoLteEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isVoLTERegistered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 656
    invoke-static {v2}, Lcom/android/ims/internal/ImsManagerEx;->isVoLTERegisteredForPhone(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 658
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsService;->isRadioSupportImsService(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    const/16 v2, 0x66

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoLteEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Lcom/android/ims/internal/ImsManagerEx;->isVoLTERegisteredForPhone(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSSChange ->RAT switched to VoPS radioType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 664
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mImsRegistered:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v3, v3, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoLteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    .line 669
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 668
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    if-eqz v0, :cond_3

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    .line 672
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 671
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 675
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRegister;->enableIms()V

    .line 679
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getVideoResolution(Landroid/os/Message;)V

    .line 681
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getSmsBearer(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 683
    :cond_5
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    const-string v1, ", mSrvccState:"

    if-eqz v0, :cond_6

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSSChange -> RAT switched to temp non-VoPS radioType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 688
    :cond_6
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoLteEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Lcom/android/ims/internal/ImsManagerEx;->isVoLTERegisteredForPhone(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-eq v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz v0, :cond_a

    .line 693
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSSChange -> RAT switched to non-VoPS radioType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 694
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService;->isRadioSupportImsService(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 697
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 699
    :cond_8
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez v0, :cond_9

    .line 700
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 702
    :cond_9
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v1, v3

    const-string v2, "gsm.sys.volte.state"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSpecialRatcap(Landroid/telephony/ServiceState;)V

    .line 708
    :cond_b
    return-void
.end method

.method private handleSetCallAbilityDone(Landroid/os/AsyncResult;)V
    .locals 2

    .line 712
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SET_VOICE_CALL_AVAILABILITY_DONE: exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set VoLTE Call Availability failure, currentVoLTESetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 717
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set new VoLTESetting = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 719
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 720
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    .line 721
    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 722
    return-void

    .line 725
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 726
    const/4 p1, 0x2

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    goto :goto_0

    .line 728
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_VOICE_CALL_AVAILABILITY_DONE, currentVoLTESetting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mImsRegister.mSimChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsRegister;->mSimChanged:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 730
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsRegister;->mSimChanged:Z

    if-eqz p1, :cond_3

    .line 732
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->enableIms()V

    .line 734
    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    .line 735
    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 738
    :goto_0
    return-void
.end method

.method private handleSrvccStateChange(Landroid/os/AsyncResult;)V
    .locals 5

    .line 813
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 814
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 815
    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    const/4 v1, 0x0

    aget v2, p1, v1

    iput v2, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 818
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-ne v0, v2, :cond_2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Srvcc HANDOVER_COMPLETED : mServiceId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsRegisterState()V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-ne v0, v2, :cond_1

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Srvcc HANDOVER_COMPLETED : setTelephonyProperty mServiceId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v3, v2

    const-string v2, "gsm.sys.volte.state"

    const-string v4, "0"

    invoke-virtual {v0, v3, v2, v4}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegisterState()V

    .line 831
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v3, v3, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    invoke-virtual {v0, v2, v3}, Lcom/spreadtrum/ims/ImsService;->notifySrvccState(II)V

    .line 833
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Srvcc state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Srvcc error ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 837
    :goto_1
    goto :goto_2

    .line 838
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Srvcc exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 840
    :goto_2
    return-void
.end method

.method private handleSubscriberAssociatedUriChanged(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1200
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1201
    const-string v0, "EVENT_SUBSCRIBER_ASSOCIATED_URI_CHANGED"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1202
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getRegistration(I)Lcom/spreadtrum/ims/ImsRegistrationImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->notifySubscriberAssociatedUriChanged([Ljava/lang/String;)V

    goto :goto_0

    .line 1204
    :cond_0
    if-eqz p1, :cond_1

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SUBSCRIBER_ASSOCIATED_URI_CHANGED ar.exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 1204
    :cond_1
    :goto_0
    nop

    .line 1207
    :goto_1
    return-void
.end method

.method private handleVoWifiAttachStateChange(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1147
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1148
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1149
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->VoWifiAttachStateChange(I)V

    .line 1150
    goto :goto_0

    .line 1151
    :cond_0
    if-eqz p1, :cond_1

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_VOWIFI_ATTACH_STATE_CHANGED: ar.exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ar.result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_1
    const-string p1, "EVENT_VOWIFI_ATTACH_STATE_CHANGED: ar is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void
.end method

.method private imsHandoverStatusChange(II)V
    .locals 3

    .line 2483
    const-string v0, "imsHandoverStatusChange: Invalid handover type:"

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 2519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "imsHandoverStatusChange: Invalid handover status:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2485
    :pswitch_0
    if-ne p1, v2, :cond_0

    .line 2486
    const-string p1, "IMS Handover to VoWifi start"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2487
    :cond_0
    if-ne p1, v1, :cond_1

    .line 2488
    const-string p1, "IMS Handover to VoLTE start"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2490
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2492
    goto/16 :goto_2

    .line 2495
    :pswitch_1
    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 2504
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2506
    goto :goto_2

    .line 2496
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS Handover succeed,type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2497
    iget p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mLatestTransport:I

    iput p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    .line 2498
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsRegisterState()V

    .line 2499
    if-ne p1, v2, :cond_4

    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    :goto_1
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2500
    if-ne p1, v1, :cond_7

    .line 2501
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsService;->showHandoverSuccessToast(I)V

    goto :goto_2

    .line 2509
    :pswitch_2
    if-ne p1, v2, :cond_5

    .line 2510
    const-string p1, "IMS Handover to VoWifi fail"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2511
    :cond_5
    if-ne p1, v1, :cond_6

    .line 2512
    const-string p1, "IMS Handover to VoLTE fail"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2514
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2516
    nop

    .line 2522
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    .line 2646
    sget-boolean v0, Lcom/spreadtrum/ims/ImsServiceImpl;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 2647
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_1
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3

    .line 2642
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3

    .line 2652
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 3

    .line 1554
    const-string v0, "onRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1557
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1558
    const-string v0, "onRecordsLoaded: escape c2k mode for records loaded"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1559
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 1563
    :cond_0
    const-string v0, "persist.vendor.radio.imsua.setting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsUserAgent(Landroid/os/Message;)V

    goto :goto_0

    .line 1566
    :cond_1
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "carrier_ims_user_agent"

    invoke-direct {p0, v0, v2, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsUAFromCC(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useragent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1569
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCarrierImsUserAgent(Ljava/lang/String;Landroid/os/Message;)V

    .line 1572
    :cond_2
    :goto_0
    return-void
.end method

.method private releaseNetwork()V
    .locals 3

    .line 2611
    const-string v0, "releaseNetwork"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2612
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 2613
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2614
    if-nez v0, :cond_0

    .line 2615
    const-string v0, "releaseNetwork ConnectivityManager is null."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2616
    return-void

    .line 2618
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 2619
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    if-eqz v2, :cond_1

    .line 2620
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2621
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    .line 2623
    :cond_1
    return-void
.end method

.method private reportRegState(I)V
    .locals 2

    .line 617
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 630
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez p1, :cond_0

    .line 631
    const-string p1, "reportRegState  mListener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 632
    goto :goto_1

    .line 634
    :cond_0
    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationProgressing()V

    .line 635
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 637
    invoke-interface {v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationProgressing()V

    .line 638
    goto :goto_0

    .line 639
    :cond_1
    monitor-exit p1

    .line 642
    goto :goto_1

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 640
    :catch_0
    move-exception p1

    .line 641
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 643
    goto :goto_1

    .line 627
    :pswitch_2
    goto :goto_1

    .line 625
    :pswitch_3
    goto :goto_1

    .line 623
    :pswitch_4
    goto :goto_1

    .line 621
    :pswitch_5
    goto :goto_1

    .line 619
    :pswitch_6
    nop

    .line 647
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestNetwork()V
    .locals 3

    .line 2590
    const-string v0, "requestNetwork"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 2592
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2593
    if-nez v0, :cond_0

    .line 2594
    const-string v0, "requestNetwork ConnectivityManager is null."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2595
    return-void

    .line 2597
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_1

    .line 2598
    const-string v0, "requestNetwork, there already exists a network request."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2599
    return-void

    .line 2601
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 2602
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 2603
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 2605
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 2606
    new-instance v1, Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkCallback:Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;

    .line 2607
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2608
    return-void
.end method

.method private sendImsRegistedBroadcast(I)V
    .locals 3

    .line 1403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.spreadtrum.ims.VOLTE_REGISTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1405
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1406
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.sprd.dm.mbselfreg"

    const-string v2, "com.sprd.dm.mbselfreg.DmReceiver"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1408
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.spreadtrum.ims.permisson.IMS_COMMON"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method private setVoLTECallAvailablity()V
    .locals 5

    .line 2383
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2384
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoLTECallAvailablity, currentVoLTESetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v3, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setImsVoiceCallAvailability(ILandroid/os/Message;)V

    .line 2389
    :cond_0
    return-void
.end method

.method private terminateVolteCall(I)V
    .locals 2

    .line 2119
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_0

    .line 2120
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->terminateVolteCall(I)V

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminateVolteCall -> reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2123
    :cond_0
    const-string p1, "terminateVolteCall -> mImsServiceCallTracker is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2125
    :goto_0
    return-void
.end method

.method private updateImsRegisterState()V
    .locals 10

    .line 2526
    nop

    .line 2527
    nop

    .line 2528
    nop

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegisterState --> mImsRegisterRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVoltePdnActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVoWifiAttached:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2535
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    .line 2537
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegisterState()Z

    move-result v1

    .line 2538
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 2539
    iget-boolean v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoltePdnActive:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    if-ne v5, v4, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2542
    nop

    .line 2543
    move v5, v3

    move v6, v4

    goto :goto_1

    .line 2545
    :cond_0
    const-string v5, "updateImsRegisterState --> radio not available for IMS service"

    invoke-direct {p0, v5}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2547
    :cond_1
    iget-boolean v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsVoWifiAttached:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterRat:I

    if-ne v5, v2, :cond_2

    .line 2550
    nop

    .line 2551
    move v5, v2

    move v6, v4

    goto :goto_1

    .line 2555
    :cond_2
    :goto_0
    const/4 v5, -0x1

    move v6, v3

    :goto_1
    iput v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    .line 2557
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v8, v4

    .line 2558
    if-nez v5, :cond_3

    const-string v5, "1"

    goto :goto_2

    :cond_3
    const-string v5, "0"

    .line 2557
    :goto_2
    const-string v9, "gsm.sys.volte.state"

    invoke-virtual {v7, v8, v9, v5}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2560
    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez v5, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    if-ne v5, v2, :cond_5

    move v5, v4

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-virtual {p0, v7, v5}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2563
    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez v5, :cond_6

    move v7, v4

    goto :goto_5

    :cond_6
    move v7, v3

    :goto_5
    if-ne v5, v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p0, v6, v7, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsRegister(ZZZ)V

    .line 2567
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegisterState()V

    .line 2569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsRegisterState --> isImsRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isImsServiceAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentImsFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldImsFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2573
    return-void
.end method


# virtual methods
.method public addImsPdnStateListener(Lcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 3

    .line 2161
    if-nez p1, :cond_0

    .line 2162
    const-string p1, "addImsPdnStateListener->Listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2163
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 2164
    return-void

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2167
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsPdnStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2168
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsPdnStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImsPdnStateListener Listener already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2172
    :goto_0
    monitor-exit v0

    .line 2173
    return-void

    .line 2172
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/spreadtrum/ims/ImsServiceImpl$Listener;)V
    .locals 1

    .line 1683
    if-nez p1, :cond_0

    .line 1684
    const-string p1, "addListener-> listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1685
    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1690
    :cond_1
    const-string p1, "addListener-> listener already add!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1692
    :goto_0
    return-void
.end method

.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3

    .line 1418
    if-nez p1, :cond_0

    .line 1419
    const-string p1, "addRegistrationListener->Listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1421
    return-void

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1424
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1425
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1427
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1429
    :goto_0
    monitor-exit v0

    .line 1430
    return-void

    .line 1429
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 6

    .line 315
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object p2

    .line 316
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object p1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeEnabledCapabilities->enableCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/n disableCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 318
    nop

    .line 319
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter v0

    .line 320
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 321
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    if-nez v3, :cond_0

    .line 323
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 327
    :cond_1
    :goto_1
    goto :goto_0

    .line 329
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 330
    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    if-nez v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    goto :goto_3

    .line 333
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 334
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 336
    :cond_4
    :goto_3
    goto :goto_2

    .line 339
    :cond_5
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 340
    const-string p1, "changeEnabledCapabilities: escape c2k mode for volte switch changed"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 341
    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsC2kMode:Z

    .line 348
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 349
    const-string p1, "changeEnabledCapabilities-> setImsVoiceCallAvailability on"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 350
    move p1, v2

    goto :goto_4

    .line 352
    :cond_7
    move p1, p2

    .line 355
    :goto_4
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->VoLTECallAvailSync:I

    if-eq v1, v2, :cond_8

    .line 356
    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    .line 357
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVoLTECallAvailablity()V

    goto :goto_5

    .line 359
    :cond_8
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->currentVoLTESetting:I

    if-eq p1, v1, :cond_9

    .line 360
    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    goto :goto_5

    .line 362
    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->pendingVoLTESetting:I

    .line 368
    :goto_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    .line 370
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    .line 372
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v4

    .line 374
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v5, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    .line 375
    if-ne v4, p1, :cond_b

    if-eq v5, v3, :cond_a

    goto :goto_6

    :cond_a
    move p1, p2

    goto :goto_7

    .line 377
    :cond_b
    :goto_6
    nop

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEnabledCapabilities->newVideoCapabilityEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    move p1, v2

    .line 381
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez v0, :cond_d

    .line 385
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceCapabilitiesFirstChange:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_10

    .line 386
    :cond_c
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 387
    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDeviceCapabilitiesFirstChange:Z

    goto :goto_a

    .line 391
    :cond_d
    if-eqz p1, :cond_10

    .line 392
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez p1, :cond_e

    move v0, v2

    goto :goto_8

    :cond_e
    move v0, p2

    :goto_8
    if-ne p1, v1, :cond_f

    goto :goto_9

    :cond_f
    move v2, p2

    :goto_9
    invoke-virtual {p0, v0, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 396
    :cond_10
    :goto_a
    return-void

    .line 381
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 0

    .line 1538
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1449
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public createCallSessionInterface(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 0

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createCallSessionInterface->profile:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->createCallSessionInternal(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCallSessionInterface->profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsService;->createCallSessionInternal(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createCallSessionInternal(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public disableWiFiParamReport()V
    .locals 3

    .line 2328
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->enableWiFiParamReport(ZLandroid/os/Message;)V

    .line 2329
    return-void
.end method

.method public enableImsWhenPDNReady()V
    .locals 1

    .line 1595
    const-string v0, "enableImsWhenPDNReady."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRegister;->onImsPDNReady()V

    .line 1597
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRegister;->enableIms()V

    .line 1598
    return-void
.end method

.method public enableWiFiParamReport()V
    .locals 3

    .line 2324
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->enableWiFiParamReport(ZLandroid/os/Message;)V

    .line 2325
    return-void
.end method

.method public getAliveCallJitter()I
    .locals 2

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallJitter->mAliveCallJitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1976
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    return v0
.end method

.method public getAliveCallLose()I
    .locals 2

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallLose->mAliveCallLose:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1971
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    return v0
.end method

.method public getAliveCallRtt()I
    .locals 2

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallRtt->mAliveCallRtt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1981
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    return v0
.end method

.method public getCarrierCofValueByKey(ILjava/lang/String;)Z
    .locals 2

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarrierCofValueByKey sudId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2237
    nop

    .line 2238
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2241
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2242
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 2243
    if-eqz p1, :cond_0

    .line 2244
    invoke-virtual {p1, p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2247
    :cond_0
    return v1
.end method

.method public getCurrentImsFeature()I
    .locals 1

    .line 2363
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    return v0
.end method

.method public getCurrentVideoState()I
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCurrentVideoState()I

    move-result v0

    return v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsEcbmImpl:Lcom/spreadtrum/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1

    .line 1414
    const/4 v0, 0x2

    return v0
.end method

.method public getIMSRegAddress()Ljava/lang/String;
    .locals 2

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIMSRegAddress mImsRegAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getImsCNIInfo()V
    .locals 3

    .line 2393
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCNIInfo(Landroid/os/Message;)V

    .line 2394
    return-void
.end method

.method public getImsPcscfAddress()Ljava/lang/String;
    .locals 2

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsPcscfAddress mImsPscfAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPscfAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;
    .locals 1

    .line 2638
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    return-object v0
.end method

.method public getImsRegister()Lcom/spreadtrum/ims/ImsRegister;
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegister:Lcom/spreadtrum/ims/ImsRegister;

    return-object v0
.end method

.method public getImsRegisterState()I
    .locals 3

    .line 1603
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1604
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1605
    return v2

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1611
    :cond_1
    return v2

    .line 1609
    :cond_2
    :goto_0
    return v1

    .line 1614
    :cond_3
    return v1
.end method

.method public getImsStackVersion()V
    .locals 3

    .line 2584
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    if-eqz v0, :cond_0

    .line 2585
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsStackVersion(Landroid/os/Message;)V

    .line 2587
    :cond_0
    return-void
.end method

.method public getNetworkRATPrefer()I
    .locals 1

    .line 2290
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRATPrefer:I

    return v0
.end method

.method public getPAU()Ljava/lang/String;
    .locals 1

    .line 1871
    const-string v0, "getPAU mPAU = "

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1872
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPAU:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 1453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPendingCallSession->callId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mImsServiceCallTracker:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1455
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-eqz p1, :cond_0

    .line 1456
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 1458
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingCallSession->callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsServiceCallTracker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 1590
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServiceId()I
    .locals 1

    .line 1581
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    return v0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_0

    .line 403
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getSmsImplementation(ILcom/spreadtrum/ims/ImsRadioInterface;)Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    const-string v0, "getSmsImplementation mWifiService is null"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 406
    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    return-object v0
.end method

.method public getSpecialRatcap(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 2216
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    if-eqz v0, :cond_1

    .line 2217
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceState:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpecialRatcap: servaiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getSpecialRatcap(Landroid/os/Message;I)V

    .line 2220
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpecialRatcap: mIsUtDisableByNetWork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2225
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceState:I

    .line 2227
    :cond_1
    return-void
.end method

.method public getSrvccCapbility()V
    .locals 3

    .line 2132
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getSrvccCapbility(Landroid/os/Message;)V

    .line 2133
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    return v0
.end method

.method public getSubId()I
    .locals 3

    .line 2346
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2347
    nop

    .line 2348
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2349
    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 2351
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getUTProxy()Lcom/android/ims/internal/IImsUt;
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    return-object v0
.end method

.method public getUtImpl()Lcom/spreadtrum/ims/ut/ImsUtImpl;
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    return-object v0
.end method

.method public getVolteRegisterState()I
    .locals 2

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolteRegisterState->VolteRegisterState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v1, v1, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2111
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    return v0
.end method

.method public getVolteRegisterStateOld()Z
    .locals 1

    .line 2333
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    return v0
.end method

.method public hasVolteVideoCapabilities()Z
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public hasVowifiVideoCapabilities()Z
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isImsEnabled()Z
    .locals 3

    .line 2194
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget v0, v0, v2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isImsRegisterState()Z
    .locals 3

    .line 1619
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1621
    return v2

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    if-ne v0, v2, :cond_1

    .line 1625
    return v1

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 1628
    :cond_2
    return v2

    .line 1633
    :cond_3
    return v1
.end method

.method public isImsRegistered()Z
    .locals 1

    .line 1727
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    return v0
.end method

.method public isRadioAvailableForImsService()Z
    .locals 2

    .line 2411
    nop

    .line 2413
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    .line 2414
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2415
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 2416
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsService;->isRadioSupportImsService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2417
    const/4 v0, 0x1

    goto :goto_0

    .line 2419
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoLteEnabled()Z
    .locals 2

    .line 2201
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVoWifiEnabled()Z
    .locals 2

    .line 2206
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVolteSessionListEmpty()Z
    .locals 3

    .line 1925
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSessionListEmpty: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isSessionListEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hasConferenceSession: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1927
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->hasConferenceSession()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1928
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isSessionListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1929
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->hasConferenceSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1928
    :goto_0
    return v1

    .line 1931
    :cond_1
    return v1
.end method

.method public isVolteUtEnable()Z
    .locals 3

    .line 2294
    nop

    .line 2296
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUtEnable mIsUtDisableByNetWork = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2298
    return v1

    .line 2300
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mNetworkRATPrefer:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2302
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2303
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsEnabled()Z

    move-result v1

    goto :goto_1

    .line 2305
    :cond_2
    goto :goto_1

    .line 2301
    :cond_3
    :goto_0
    move v1, v2

    .line 2307
    :goto_1
    return v1
.end method

.method public isVowifiSessionListEmpty()Z
    .locals 3

    .line 1934
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiService.getCallCount(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCallCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCallCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1938
    :cond_1
    return v1
.end method

.method public notifyDataRouter()V
    .locals 2

    .line 1919
    const-string v0, "notifyDataRouter"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyDataRouter(Landroid/os/Message;)V

    .line 1921
    return-void
.end method

.method public notifyHandoverCallInfo(Ljava/lang/String;)V
    .locals 2

    .line 2128
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyHandoverCallInfo(Ljava/lang/String;Landroid/os/Message;)V

    .line 2129
    return-void
.end method

.method public notifyImsCallEnd(I)V
    .locals 2

    .line 1896
    const-string v0, "notifyImsCallEnd."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyImsCallEnd(ILandroid/os/Message;)V

    .line 1898
    return-void
.end method

.method public notifyImsHandoverStatus(I)V
    .locals 2

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyImsHandoverStatus->status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1892
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyImsHandoverStatus(ILandroid/os/Message;)V

    .line 1893
    return-void
.end method

.method public notifyImsNetworkInfo(ILjava/lang/String;)V
    .locals 2

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyImsNetworkInfo->type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyImsNetworkInfo(ILjava/lang/String;Landroid/os/Message;)V

    .line 1908
    return-void
.end method

.method public notifyImsPdnStateChange(I)V
    .locals 3

    .line 2311
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2312
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsPdnStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    :try_start_1
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsPdnStateListener;->imsPdnStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2318
    nop

    .line 2319
    goto :goto_0

    .line 2315
    :catch_0
    move-exception v2

    .line 2316
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2317
    goto :goto_0

    .line 2320
    :cond_0
    monitor-exit v0

    .line 2321
    return-void

    .line 2320
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyImsRegister(ZZZ)V
    .locals 3

    .line 1736
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1737
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    goto :goto_0

    .line 1739
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    .line 1741
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegistration(IZZ)V

    .line 1743
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyImsRegister->isRegistered:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " isWifiRegistered:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " isImsEnabled():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1745
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsService;->isImsEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " mImsService.isPrimaryCardVoLTEEnabled():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1746
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsService;->isPrimaryCardVoLTEEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " mImsService.isVoWifiEnabled():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1747
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1743
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1750
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v1, v0

    const-string v0, "gsm.sys.vowifi.state"

    .line 1751
    if-eqz p3, :cond_1

    const-string p3, "1"

    goto :goto_1

    :cond_1
    const-string p3, "0"

    .line 1750
    :goto_1
    invoke-virtual {p2, v1, v0, p3}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez p2, :cond_2

    .line 1754
    const-string p1, "notifyImsRegister->mListener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1755
    return-void

    .line 1758
    :cond_2
    if-eqz p1, :cond_3

    .line 1759
    :try_start_0
    invoke-interface {p2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V

    goto :goto_2

    .line 1761
    :cond_3
    new-instance p3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-interface {p2, p3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :goto_2
    goto :goto_3

    .line 1763
    :catch_0
    move-exception p2

    .line 1764
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1767
    :goto_3
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p2

    .line 1768
    :try_start_1
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    if-eqz p1, :cond_4

    .line 1771
    :try_start_2
    invoke-interface {v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V

    goto :goto_5

    .line 1773
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1777
    :goto_5
    goto :goto_6

    .line 1775
    :catch_1
    move-exception v0

    .line 1776
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1778
    :goto_6
    goto :goto_4

    .line 1779
    :cond_5
    monitor-exit p2

    .line 1780
    return-void

    .line 1779
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public notifyRegisterStateChange()V
    .locals 3

    .line 1707
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;

    .line 1708
    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;->onRegisterStateChange(I)V

    .line 1709
    goto :goto_0

    .line 1710
    :cond_0
    return-void
.end method

.method public notifySessionEmpty()V
    .locals 3

    .line 1713
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;

    .line 1714
    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;->onSessionEmpty(I)V

    .line 1715
    goto :goto_0

    .line 1716
    :cond_0
    return-void
.end method

.method public notifyVoWiFiRegAddress(Ljava/lang/String;)V
    .locals 4

    .line 2397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    const-string p1, "notifyVoWiFiRegAddress, address is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2399
    return-void

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v3, 0x7d

    .line 2402
    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2401
    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setImsRegAddress(ILjava/lang/String;Landroid/os/Message;)V

    .line 2403
    return-void
.end method

.method public notifyVoWifiAttachStateChange(I)V
    .locals 3

    .line 1720
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;

    .line 1721
    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-interface {v1, v2, p1}, Lcom/spreadtrum/ims/ImsServiceImpl$Listener;->onVoWifiAttachStateChange(II)V

    .line 1722
    goto :goto_0

    .line 1723
    :cond_0
    return-void
.end method

.method public notifyVoWifiDebugMode(I)V
    .locals 2

    .line 2578
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    if-eqz v0, :cond_0

    .line 2579
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyVoWifiWhiteList(ILandroid/os/Message;)V

    .line 2581
    :cond_0
    return-void
.end method

.method public notifyVoWifiEnable(Z)V
    .locals 2

    .line 1901
    const-string v0, "notifyVoWifiEnable."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyVoWifiEnable(ZLandroid/os/Message;)V

    .line 1903
    return-void
.end method

.method public notifyWifiCalling(Z)V
    .locals 2

    .line 1915
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->notifyVoWifiCallStateChanged(ZLandroid/os/Message;)V

    .line 1916
    return-void
.end method

.method public onCallWaitingStatusUpdateForVoWifi(I)V
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->onCallWaitingStatusUpdateForVoWifi(I)V

    .line 2342
    return-void
.end method

.method public onCreateImsFeature()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    .line 1493
    const-string v0, "onCreateImsFeature."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public onFeatureRemoved()V
    .locals 0

    .line 1490
    return-void
.end method

.method public onImsCallEnd()V
    .locals 2

    .line 1911
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService;->onImsCallEnd(I)V

    .line 1912
    return-void
.end method

.method public onImsErrCauseInfoChange(IILjava/lang/String;)V
    .locals 4

    .line 2253
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v0

    const-string v1, "support_disable_ut_by_network"

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCarrierCofValueByKey(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 2255
    if-ne p1, v1, :cond_3

    const/16 v0, 0x193

    if-ne p2, v0, :cond_3

    .line 2257
    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 2258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onImsCsfbReasonInfoChange = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2259
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez p2, :cond_0

    .line 2260
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    if-eqz p2, :cond_3

    .line 2261
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    goto :goto_2

    .line 2264
    :cond_0
    iget p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez p2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-ne p2, v1, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2271
    :cond_3
    :goto_2
    const-string p2, "HTTP/1.1 403"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2272
    const-string p2, "errDescription is HTTP/1.1 403, setUtDisableByNetWork true."

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 2274
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez p2, :cond_4

    .line 2275
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    if-eqz p2, :cond_7

    .line 2276
    iget p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    goto :goto_5

    .line 2279
    :cond_4
    iget p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-nez p2, :cond_5

    move p3, v3

    goto :goto_3

    :cond_5
    move p3, v2

    :goto_3
    if-ne p2, v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    invoke-virtual {p0, p3, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2284
    :cond_7
    :goto_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_8

    .line 2285
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 p3, 0x7c

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getSpecialRatcap(Landroid/os/Message;I)V

    .line 2287
    :cond_8
    return-void
.end method

.method public onWifiParamEvent(Landroid/os/AsyncResult;)V
    .locals 7

    .line 1943
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1944
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiParamEvent->rtp_time_Out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1946
    const/4 v0, 0x1

    aget v2, p1, v0

    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    .line 1947
    const/4 v2, 0x2

    aget v2, p1, v2

    iput v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    .line 1948
    const/4 v2, 0x0

    aget v3, p1, v2

    iput v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    .line 1949
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsService;->getImsServiceListenerEx()Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v3

    .line 1951
    if-eqz v3, :cond_0

    .line 1952
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWifiParamEvent->onMediaQualityChanged->isvideo:false mAliveCallLose:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAliveCallJitter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAliveCallRtt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1955
    iget v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallLose:I

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallJitter:I

    iget v6, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mAliveCallRtt:I

    invoke-interface {v3, v2, v4, v5, v6}, Lcom/android/ims/internal/IImsServiceListenerEx;->onMediaQualityChanged(ZIII)V

    .line 1956
    aget p1, p1, v1

    if-ne p1, v0, :cond_1

    .line 1957
    const-string p1, "onWifiParamEvent->onRtpReceived->isvideo:false"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1958
    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsServiceListenerEx;->onNoRtpReceived(Z)V

    goto :goto_0

    .line 1961
    :cond_0
    const-string p1, "onWifiParamEvent->imsServiceListenerEx is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :cond_1
    :goto_0
    goto :goto_1

    .line 1963
    :catch_0
    move-exception p1

    .line 1964
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1967
    :cond_2
    :goto_1
    return-void
.end method

.method public open(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8

    .line 1499
    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceClass:I

    .line 1500
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 1501
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1502
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-nez p1, :cond_0

    .line 1503
    new-instance p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/spreadtrum/ims/ImsServiceCallTracker;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/app/PendingIntent;ILcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1504
    new-instance p1, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 1505
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V

    .line 1508
    :cond_0
    const/4 p1, 0x2

    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    const/4 p3, 0x0

    const/4 v0, -0x1

    aput v0, p2, p3

    .line 1510
    const/4 p3, 0x1

    aput v0, p2, p3

    .line 1512
    aput v0, p2, p1

    .line 1514
    const/4 v1, 0x3

    aput v0, p2, v1

    .line 1516
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {v0, p3, p2, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 1518
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1519
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    :try_start_2
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {v1, p3, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1526
    nop

    .line 1527
    goto :goto_0

    .line 1523
    :catch_0
    move-exception v1

    .line 1524
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1525
    goto :goto_0

    .line 1528
    :cond_1
    monitor-exit p2

    .line 1531
    goto :goto_1

    .line 1528
    :catchall_0
    move-exception p3

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1529
    :catch_1
    move-exception p2

    .line 1530
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1532
    :goto_1
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setFeatureState(I)V

    .line 1533
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    return p1
.end method

.method public removeImsPdnStateListener(Lcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 3

    .line 2179
    if-nez p1, :cond_0

    .line 2180
    const-string p1, "removeImsPdnStateListener->Listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2181
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 2182
    return-void

    .line 2184
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2185
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsPdnStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2186
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsPdnStateListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsPdnStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2188
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeImsPdnStateListener Listener already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2190
    :goto_0
    monitor-exit v0

    .line 2191
    return-void

    .line 2190
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/spreadtrum/ims/ImsServiceImpl$Listener;)V
    .locals 1

    .line 1695
    if-nez p1, :cond_0

    .line 1696
    const-string p1, "removeListener-> listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1697
    return-void

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1702
    :cond_1
    const-string p1, "addListener-> listener already remove!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1704
    :goto_0
    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3

    .line 1433
    if-nez p1, :cond_0

    .line 1434
    const-string p1, "removeRegistrationListener->Listener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logw(Ljava/lang/String;)V

    .line 1435
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1436
    return-void

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1439
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1442
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1444
    :goto_0
    monitor-exit v0

    .line 1445
    return-void

    .line 1444
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestImsHandover(I)V
    .locals 3

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestImsHandover->type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsHandler:Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestImsHandover(ILandroid/os/Message;)V

    .line 1888
    return-void
.end method

.method public sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1784
    const-string v1, "android:ussd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1785
    const-string v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1786
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    const/4 v1, 0x2

    const-string v3, "startVolteCall"

    const-string v4, "startVoWifiCall"

    const-string v5, "sendIncomingCallIntent-> "

    if-eqz p2, :cond_3

    .line 1789
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVoLteEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1791
    nop

    .line 1792
    iget p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_1

    .line 1793
    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    .line 1791
    :goto_1
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1795
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :goto_2
    goto :goto_3

    .line 1799
    :catch_0
    move-exception p1

    .line 1800
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->terminateVolteCall()V

    .line 1801
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 1796
    :catch_1
    move-exception p1

    .line 1797
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->terminateVolteCall()V

    .line 1798
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1803
    :goto_3
    return-void

    .line 1807
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p4, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " mIsVowifiCall: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1808
    invoke-virtual {p4}, Lcom/spreadtrum/ims/ImsService;->isVowifiCall()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " mIsVolteCall: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1809
    invoke-virtual {p4}, Lcom/spreadtrum/ims/ImsService;->isVolteCall()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " isVoWifiEnabled(): "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 1810
    invoke-virtual {p4}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " isVoLTEEnabled(): "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    .line 1811
    invoke-virtual {p4, v3}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1807
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1814
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    const/4 v3, 0x1

    sub-int/2addr p4, v3

    invoke-virtual {p2, p4}, Lcom/spreadtrum/ims/ImsService;->setInCallPhoneId(I)V

    .line 1815
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p2, v3}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 1817
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p2

    .line 1818
    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result p2

    iget p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    add-int/lit8 v4, p4, -0x1

    if-ne p2, v4, :cond_5

    move p2, v3

    goto :goto_5

    :cond_5
    move p2, v2

    .line 1822
    :goto_5
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v4, p4}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p4}, Lcom/spreadtrum/ims/ImsService;->isVowifiCall()Z

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p4}, Lcom/spreadtrum/ims/ImsService;->isVolteCall()Z

    move-result p4

    if-nez p4, :cond_6

    .line 1823
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIncomingCallIntent-> set volte call property phoneId:"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v4, v3

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1824
    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p4, v2}, Lcom/spreadtrum/ims/ImsService;->setCallType(I)V

    .line 1825
    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p4, v2}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1826
    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr v2, v3

    invoke-virtual {p4, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCurCallSlot(I)Z

    .line 1827
    iget-object p4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p4, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1830
    :cond_6
    if-eqz p2, :cond_8

    .line 1832
    if-nez p3, :cond_8

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsService;->isVowifiCall()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsService;->isVolteCall()Z

    move-result p2

    if-nez p2, :cond_8

    .line 1833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendIncomingCallIntent-> set vowifi call property phoneId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1834
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/ImsService;->setCallType(I)V

    .line 1837
    if-eqz p1, :cond_7

    :try_start_1
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1838
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    const-string p3, "EXTRA_CALL_SESSION_VOWIFI"

    invoke-virtual {p2, p3, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 1840
    :catch_2
    move-exception p2

    .line 1841
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 1842
    :cond_7
    :goto_6
    nop

    .line 1843
    :goto_7
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget p3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    sub-int/2addr p3, v3

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCurCallSlot(I)Z

    .line 1844
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object p3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 1851
    :cond_8
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1856
    :goto_8
    goto :goto_9

    .line 1854
    :catch_3
    move-exception p1

    .line 1855
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_9

    .line 1852
    :catch_4
    move-exception p1

    .line 1853
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_8

    .line 1858
    :goto_9
    return-void
.end method

.method public setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 2

    .line 2100
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setCallRatType->ok"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2104
    :cond_0
    const-string p1, " setCallRatType->mImsServiceCallTracker is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2106
    :goto_0
    return-void
.end method

.method public setCurrentImsFeature(I)V
    .locals 0

    .line 2373
    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mCurrentImsFeature:I

    .line 2374
    return-void
.end method

.method public setIMSRegAddress(Ljava/lang/String;)V
    .locals 2

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIMSRegAddress addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1877
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegAddress:Ljava/lang/String;

    .line 1878
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1879
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIMSRegAddress update VoWifi addr, phone Id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vowifiServId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->setVoWifiLocalAddr(Ljava/lang/String;)V

    .line 1884
    :cond_0
    return-void
.end method

.method public setImsPcscfAddress(Ljava/lang/String;)V
    .locals 2

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsPcscfAddress addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 2138
    nop

    .line 2139
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2140
    const-string v0, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1,\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2142
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2,\"["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2142
    :cond_1
    const-string p1, ""

    .line 2147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsPcscfAddress pcscfAdd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2149
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setImsPcscfAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2152
    :cond_2
    return-void
.end method

.method public setPAU(Ljava/lang/String;)V
    .locals 2

    .line 2425
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setPAU(Ljava/lang/String;Landroid/os/Message;)V

    .line 2426
    return-void
.end method

.method public setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    .line 1542
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1543
    return-void
.end method

.method public setSmsOverIp(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1651
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1652
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceImpl ==> setSmsOverIp mDefaultSmsOverIp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->configSmsBearer(I)V

    .line 1656
    :cond_0
    return-void
.end method

.method public setSrvccState(I)V
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceState:Lcom/spreadtrum/ims/ImsServiceState;

    iput p1, v0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 2155
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 0

    .line 1485
    return-void
.end method

.method public setUtDisableByNetWork(Z)V
    .locals 0

    .line 2231
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsUtDisableByNetWork:Z

    .line 2232
    return-void
.end method

.method public setVideoResolution(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1641
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1642
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_VIDEO_RESOLUTION from NV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->sendVideoQualitytoIMS(I)V

    .line 1647
    :cond_0
    return-void
.end method

.method public setVolteRegisterStateOld(Z)V
    .locals 0

    .line 2337
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteRegisterStateOld:Z

    .line 2338
    return-void
.end method

.method public shouldProcessCall([Ljava/lang/String;)I
    .locals 0

    .line 308
    const/4 p1, 0x0

    return p1
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8

    .line 1361
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 1362
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1363
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    if-nez p1, :cond_0

    .line 1364
    new-instance p1, Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/spreadtrum/ims/ImsServiceCallTracker;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/app/PendingIntent;ILcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1365
    new-instance p1, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;-><init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 1366
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V

    .line 1369
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    const/4 p2, 0x0

    const/4 v0, -0x1

    aput v0, p1, p2

    .line 1371
    const/4 p2, 0x1

    aput v0, p1, p2

    .line 1373
    const/4 v1, 0x2

    aput v0, p1, v1

    .line 1375
    const/4 v2, 0x3

    aput v0, p1, v2

    .line 1377
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {v0, p2, p1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 1379
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1380
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsRegistrationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    :try_start_2
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {v2, p2, v3, v4}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1387
    nop

    .line 1388
    goto :goto_0

    .line 1384
    :catch_0
    move-exception v2

    .line 1385
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1386
    goto :goto_0

    .line 1389
    :cond_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1390
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setFeatureState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1393
    goto :goto_1

    .line 1389
    :catchall_0
    move-exception p2

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1391
    :catch_1
    move-exception p1

    .line 1392
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1394
    :goto_1
    iget p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    return p1
.end method

.method public terminateVolteCall()V
    .locals 1

    .line 2115
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->terminateVolteCall(I)V

    .line 2116
    return-void
.end method

.method public turnOffIms()V
    .locals 1

    .line 1473
    const-string v0, "turnOffIms."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method public turnOnIms()V
    .locals 1

    .line 1468
    const-string v0, "turnOnIms."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logd(Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method public updateImsFeatureForAllService()V
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeatureForAllService()V

    .line 2212
    return-void
.end method

.method public updateImsFeatures(ZZ)V
    .locals 10

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsFeatures->volteEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wifiEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1987
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter v1

    .line 1989
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    .line 1990
    :try_start_0
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v2, v7, v2

    .line 1992
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1994
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1995
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v6, v2, v6

    .line 1997
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_0

    .line 1999
    :cond_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v5, v2, v6

    .line 2001
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    goto :goto_0

    .line 2004
    :cond_1
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v5, v7, v2

    .line 2006
    aput v5, v7, v6

    .line 2009
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2010
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2011
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2013
    :goto_0
    const/4 v2, 0x5

    const/4 v7, 0x3

    if-eqz p2, :cond_4

    .line 2014
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v4, v8, v4

    .line 2016
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v8, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2017
    iget-boolean v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mContext:Landroid/content/Context;

    .line 2018
    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSupportSMS(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v9, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    .line 2019
    invoke-virtual {v8, v9}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v8

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lcom/spreadtrum/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 2022
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v8, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_1

    .line 2024
    :cond_2
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v8, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2026
    :goto_1
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2027
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v7, v0, v7

    .line 2029
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_2

    .line 2031
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v5, v0, v7

    .line 2033
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2036
    :goto_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mIsSingleImsStack:Z

    if-nez v0, :cond_5

    .line 2037
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getUtInterface(I)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateUtConfig(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    goto :goto_3

    .line 2042
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2043
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2044
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2045
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v5, v0, v4

    .line 2047
    aput v5, v0, v7

    .line 2049
    aput v5, v0, v2

    .line 2053
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteUtEnable()Z

    move-result v0

    const/4 v3, 0x4

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsUtProxy:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 2061
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2062
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2063
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v5, v0, v2

    .line 2065
    aput v5, v0, v3

    goto :goto_5

    .line 2054
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2055
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2056
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    aput v3, v0, v3

    .line 2058
    aput v2, v0, v2

    .line 2069
    :goto_5
    if-eqz p1, :cond_8

    .line 2070
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    goto :goto_6

    .line 2071
    :cond_8
    if-eqz p2, :cond_9

    .line 2072
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVowifiCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2075
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2076
    :try_start_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2077
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {v3, v6, v4, v5}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 2079
    goto :goto_7

    .line 2080
    :cond_a
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2081
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 2082
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mVolteCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2085
    :cond_b
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez p1, :cond_c

    .line 2086
    const-string p1, "updateImsFeatures mListener is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2087
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 2089
    :cond_c
    :try_start_4
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mEnabledFeatures:[I

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl;->mDisabledFeatures:[I

    invoke-interface {p1, v6, p2, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2094
    goto :goto_8

    .line 2080
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2095
    :catchall_1
    move-exception p1

    goto :goto_9

    .line 2092
    :catch_0
    move-exception p1

    .line 2093
    :try_start_7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2095
    :goto_8
    monitor-exit v1

    .line 2096
    return-void

    .line 2095
    :goto_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method
