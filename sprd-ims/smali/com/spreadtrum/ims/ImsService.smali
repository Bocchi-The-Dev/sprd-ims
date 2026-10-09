.class public Lcom/spreadtrum/ims/ImsService;
.super Lcom/spreadtrum/ims/ImsAdapter;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;,
        Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;,
        Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;,
        Lcom/spreadtrum/ims/ImsService$ImsHandler;,
        Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;,
        Lcom/spreadtrum/ims/ImsService$ImsStackVersion;,
        Lcom/spreadtrum/ims/ImsService$VoWifiDbgType;,
        Lcom/spreadtrum/ims/ImsService$ImsStackResetResult;,
        Lcom/spreadtrum/ims/ImsService$S2bEventCode;,
        Lcom/spreadtrum/ims/ImsService$CallType;,
        Lcom/spreadtrum/ims/ImsService$UnsolicitedCode;,
        Lcom/spreadtrum/ims/ImsService$CallEndEvent;,
        Lcom/spreadtrum/ims/ImsService$ImsHandoverResult;,
        Lcom/spreadtrum/ims/ImsService$ImsPDNStatus;,
        Lcom/spreadtrum/ims/ImsService$ImsHandoverType;,
        Lcom/spreadtrum/ims/ImsService$ImsOperationType;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_CURRENT_REQUEST:I = 0x68

.field private static final ACTION_NOTIFY_NETWORK_UNAVAILABLE:I = 0x66

.field private static final ACTION_NOTIFY_VIDEO_CAPABILITY_CHANGE:I = 0x6a

.field private static final ACTION_NOTIFY_VOWIFI_UNAVAILABLE:I = 0x67

.field private static final ACTION_RELEASE_WIFI_RESOURCE:I = 0x69

.field private static final ACTION_START_HANDOVER:I = 0x65

.field private static final ACTION_SWITCH_IMS_FEATURE:I = 0x64

.field private static final DBG:Z

.field private static final EVENT_NOTIFY_CP_VOWIFI_ATTACH_SUCCESSED:I = 0xd6

.field private static final EVENT_UPDATE_DATA_ROUTER_FINISHED:I = 0xd5

.field private static final EVENT_WIFI_ALL_CALLS_END:I = 0xcd

.field private static final EVENT_WIFI_ATTACH_FAILED:I = 0xca

.field private static final EVENT_WIFI_ATTACH_STATE_UPDATE:I = 0xc8

.field private static final EVENT_WIFI_ATTACH_STOPED:I = 0xcb

.field private static final EVENT_WIFI_ATTACH_SUCCESSED:I = 0xc9

.field private static final EVENT_WIFI_DPD_DISCONNECTED:I = 0xd1

.field private static final EVENT_WIFI_INCOMING_CALL:I = 0xcc

.field private static final EVENT_WIFI_NO_RTP:I = 0xd2

.field private static final EVENT_WIFI_REFRESH_RESAULT:I = 0xce

.field private static final EVENT_WIFI_REGISTER_RESAULT:I = 0xcf

.field private static final EVENT_WIFI_RESET_RESAULT:I = 0xd0

.field private static final EVENT_WIFI_RESET_START:I = 0xd7

.field private static final EVENT_WIFI_RTP_RECEIVED:I = 0xd4

.field private static final EVENT_WIFI_UNSOL_UPDATE:I = 0xd3

.field public static final IMS_HANDOVER_ACTION_CONFIRMED:I = 0x3e7

.field public static final IMS_INVALID_SERVICE_ID:I = -0x1

.field public static final IMS_REG_STATE_DEREGISTERING:I = 0x6

.field public static final IMS_REG_STATE_INACTIVE:I = 0x0

.field public static final IMS_REG_STATE_REGISTERED:I = 0x1

.field public static final IMS_REG_STATE_REGISTERING:I = 0x2

.field public static final IMS_REG_STATE_REG_FAIL:I = 0x3

.field public static final IMS_REG_STATE_ROAMING:I = 0x5

.field public static final IMS_REG_STATE_UNKNOWN:I = 0x4

.field private static final PROPERTY_VOWIFI_LAB_SIM_ENABLE:Ljava/lang/String; = "persist.sys.vowifi.lab.sim"

.field private static final PROPERTY_VOWIFI_WHITELIST_ENABLE:Ljava/lang/String; = "persist.sys.vowifi.whitelist"

.field private static final PROP_S2B_ENABLED:Ljava/lang/String; = "persist.sys.s2b.enabled"

.field private static final SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcsControllerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/acs/AcsController;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachVowifiSuccess:Z

.field private mBinder:Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;

.field private mCallEndType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentVideoState:I

.field private mDeregisterVowifi:Z

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

.field private final mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGbaHandler:Lcom/spreadtrum/ims/gba/GbaHandler;

.field private final mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

.field private mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IImsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIImsServiceControllerListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

.field private mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IVoWiFiAttachCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigImplArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsMultiEndpointBinder:Lcom/android/ims/internal/IImsMultiEndpoint$Stub;

.field private mImsRadioInterfaceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/ImsRadioInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mImsRegImplArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/ImsRegistrationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IImsRegisterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceImplArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/ImsServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

.field private mInCallHandoverFeature:I

.field private mInCallPhoneId:I

.field private mIsAPImsPdnActived:Z

.field private mIsCPImsPdnActived:Z

.field public mIsCalling:Z

.field private mIsEmergencyCallonIms:Z

.field private mIsLoggingIn:Z

.field private mIsMonitorLocation:Z

.field private mIsPendingRegisterVolte:Z

.field private mIsPendingRegisterVowifi:Z

.field private mIsS2bStopped:Z

.field private mIsSingleImsStack:Z

.field private mIsVolteCall:Z

.field private mIsVowifiCall:Z

.field private mIsWifiCalling:Z

.field private mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IIwlanAttachActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/ims/internal/IIwlanMmsActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeCallPrimaryCardServiceId:I

.field private mNetworkInfo:Ljava/lang/String;

.field private mNetworkType:I

.field private mPendingActivePdnSuccess:Z

.field private mPendingAttachVowifiSuccess:Z

.field private mPendingCPSelfManagement:Z

.field private mPendingReregister:Z

.field private mPendingVolteHandoverVolteSuccess:Z

.field private mPendingVowifiHandoverVowifiSuccess:Z

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcsFeatureImplArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/RcsFeatureImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

.field private mRequestId:I

.field private mRequestLock:Ljava/lang/Object;

.field private mSipTransportImplArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/sip/SipTransportImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUniCarrierConfigManager:Landroid/telephony/UniCarrierConfigManager;

.field private mVoLTERegisterListener:Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;

.field private mVoWifiCallback:Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;

.field private mVoWifiLocalAddr:Ljava/lang/String;

.field private mVoWifiSOSAttached:Z

.field private mVolteAvailable:Z

.field private mVowifiAttachedServiceId:I

.field private mWifiRegistered:Z

.field private mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

.field private mWifiState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEmergencyCallonIms(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsS2bStopped(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiCalling(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsService;->mMakeCallPrimaryCardServiceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/ImsService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/spreadtrum/ims/ImsService;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiRegistered(Lcom/spreadtrum/ims/ImsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallEndType(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEmergencyCallonIms(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsS2bStopped(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVolteCall(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mMakeCallPrimaryCardServiceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiRegistered(Lcom/spreadtrum/ims/ImsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetImsFeature(Lcom/spreadtrum/ims/ImsService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleCancelCurrentRequest(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleCancelCurrentRequest(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHandover(Lcom/spreadtrum/ims/ImsService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsService;->handleHandover(ZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReleaseWifiResource(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleReleaseWifiResource(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateDataRouterFinished(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->handleUpdateDataRouterFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVowifiUnavailable(Lcom/spreadtrum/ims/ImsService;IILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsService;->handleVowifiUnavailable(IILjava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiAllCallsEnd(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->handleWifiAllCallsEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiAttachFailed(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleWifiAttachFailed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiAttachStoped(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleWifiAttachStoped(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiAttachSuccessed(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->handleWifiAttachSuccessed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiIncomingCall(Lcom/spreadtrum/ims/ImsService;Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleWifiIncomingCall(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiRegisterResult(Lcom/spreadtrum/ims/ImsService;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleWifiRegisterResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiResetResult(Lcom/spreadtrum/ims/ImsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsService;->handleWifiResetResult(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiResetStart(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->handleWifiResetStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiUnsolUpdate(Lcom/spreadtrum/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->handleWifiUnsolUpdate(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misVoLTERegisted(Lcom/spreadtrum/ims/ImsService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogi(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogw(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 116
    const-class v0, Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsService;->TAG:Ljava/lang/String;

    .line 117
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/spreadtrum/ims/ImsService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 529
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsAdapter;-><init>()V

    .line 250
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mRcsFeatureImplArray:Landroid/util/SparseArray;

    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegImplArray:Landroid/util/SparseArray;

    .line 253
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsConfigImplArray:Landroid/util/SparseArray;

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mSipTransportImplArray:Landroid/util/SparseArray;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mAcsControllerArray:Landroid/util/SparseArray;

    .line 265
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 267
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 269
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 271
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mRequestId:I

    .line 275
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mRequestLock:Ljava/lang/Object;

    .line 278
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 282
    const/4 v1, 0x2

    iput v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 287
    new-instance v1, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mVoLTERegisterListener:Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    .line 289
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mVolteAvailable:Z

    .line 290
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    .line 291
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    .line 296
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkType:I

    .line 297
    const-string v2, "Network info is null"

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkInfo:Ljava/lang/String;

    .line 298
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    .line 300
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    .line 302
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    .line 303
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    .line 304
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 305
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    .line 306
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    .line 307
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    .line 308
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    .line 309
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    .line 310
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 311
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    .line 312
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    .line 313
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mMakeCallPrimaryCardServiceId:I

    .line 314
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    .line 315
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    .line 316
    const-string v2, ""

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiLocalAddr:Ljava/lang/String;

    .line 317
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    .line 318
    iput v1, p0, Lcom/spreadtrum/ims/ImsService;->mCurrentVideoState:I

    .line 319
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mDeregisterVowifi:Z

    .line 321
    new-instance v2, Lcom/spreadtrum/ims/ImsService$ImsHandler;

    invoke-direct {v2, p0}, Lcom/spreadtrum/ims/ImsService$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    .line 322
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiState:I

    .line 324
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsMonitorLocation:Z

    .line 326
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mBinder:Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;

    .line 340
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 1917
    new-instance v0, Lcom/spreadtrum/ims/ImsService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsService$2;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsMultiEndpointBinder:Lcom/android/ims/internal/IImsMultiEndpoint$Stub;

    .line 4154
    new-instance v0, Lcom/spreadtrum/ims/ImsService$3;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsService$3;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 530
    const-string v0, "Ims Service onCreate."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 531
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 533
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsSingleImsStack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 535
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    if-nez p1, :cond_0

    .line 536
    new-instance p1, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiCallback:Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;

    .line 537
    new-instance p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 538
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiCallback:Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->registerCallback(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 543
    if-nez p1, :cond_1

    .line 544
    new-instance p1, Lcom/spreadtrum/ims/ImsService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/spreadtrum/ims/ImsService$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 547
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 548
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 550
    new-instance p1, Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mBinder:Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;

    .line 552
    new-instance p1, Lcom/spreadtrum/ims/gba/GbaHandler;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/gba/GbaHandler;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mGbaHandler:Lcom/spreadtrum/ims/gba/GbaHandler;

    .line 554
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->init(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vt/VTManagerProxy;

    .line 556
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    monitor-enter p1

    .line 557
    move v0, v1

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 558
    new-instance v2, Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 559
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 563
    new-instance p1, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;-><init>(Landroid/content/Context;)V

    .line 565
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->startRegisterTelephonyCallback()V

    .line 567
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 568
    move v9, v1

    :goto_1
    :try_start_1
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v9, v2, :cond_4

    .line 569
    new-instance v10, Lcom/spreadtrum/ims/ImsServiceImpl;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    .line 570
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v2, v10

    move v3, v9

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/spreadtrum/ims/ImsServiceImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    .line 571
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v10, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 572
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mVoLTERegisterListener:Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;

    invoke-virtual {v10, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->addListener(Lcom/spreadtrum/ims/ImsServiceImpl$Listener;)V

    .line 573
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v3

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    if-eqz v2, :cond_3

    .line 576
    invoke-virtual {v10}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsStackVersion()V

    .line 577
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiDebugMode()I

    move-result v2

    .line 578
    invoke-virtual {v10, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyVoWifiDebugMode(I)V

    .line 568
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 582
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 584
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mRcsFeatureImplArray:Landroid/util/SparseArray;

    monitor-enter p1

    .line 585
    move v0, v1

    :goto_2
    :try_start_2
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v0, v2, :cond_5

    .line 586
    new-instance v2, Lcom/spreadtrum/ims/RcsFeatureImpl;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsServiceImpl;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    .line 587
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/spreadtrum/ims/RcsFeatureImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/ImsRadioInterface;)V

    .line 588
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0}, Lcom/spreadtrum/ims/RcsFeatureImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 589
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mRcsFeatureImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/RcsFeatureImpl;->getServiceId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 585
    move v0, v5

    goto :goto_2

    .line 591
    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 593
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegImplArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 594
    move p1, v1

    :goto_3
    :try_start_3
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge p1, v2, :cond_6

    .line 595
    new-instance v2, Lcom/spreadtrum/ims/ImsRegistrationImpl;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v5, p1, 0x1

    .line 596
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {v2, p1, v3, p0, v4}, Lcom/spreadtrum/ims/ImsRegistrationImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 597
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 598
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->getServiceId()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    move p1, v5

    goto :goto_3

    .line 600
    :cond_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 602
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsConfigImplArray:Landroid/util/SparseArray;

    monitor-enter p1

    .line 603
    move v0, v1

    :goto_4
    :try_start_4
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v0, v2, :cond_7

    .line 604
    new-instance v2, Lcom/spreadtrum/ims/ImsConfigImpl;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/spreadtrum/ims/ImsServiceImpl;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    .line 605
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v3, v2

    move v6, v9

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/spreadtrum/ims/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;ILcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsService;)V

    .line 606
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 607
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsConfigImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsConfigImpl;->getServiceId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    move v0, v9

    goto :goto_4

    .line 609
    :cond_7
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 611
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mSipTransportImplArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 612
    move p1, v1

    :goto_5
    :try_start_5
    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge p1, v2, :cond_8

    .line 613
    new-instance v2, Lcom/spreadtrum/ims/sip/SipTransportImpl;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {v2, p1, v3, v4}, Lcom/spreadtrum/ims/sip/SipTransportImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 614
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/sip/SipTransportImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 615
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mSipTransportImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/sip/SipTransportImpl;->getServiceId()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    move p1, v5

    goto :goto_5

    .line 617
    :cond_8
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 619
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mAcsControllerArray:Landroid/util/SparseArray;

    monitor-enter p1

    .line 620
    nop

    :goto_6
    :try_start_6
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v1, v0, :cond_9

    .line 621
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsController;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/spreadtrum/ims/acs/AcsController;-><init>(Landroid/content/Context;I)V

    .line 622
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mAcsControllerArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsController;->getServiceId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 624
    :cond_9
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 626
    new-instance p1, Lcom/spreadtrum/ims/ImsService$1;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/ImsService$1;-><init>(Lcom/spreadtrum/ims/ImsService;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 685
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 687
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    if-eqz p1, :cond_a

    .line 688
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 691
    :cond_a
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 692
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 695
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 696
    return-void

    .line 624
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 617
    :catchall_1
    move-exception p1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    .line 609
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 600
    :catchall_3
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p1

    .line 591
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 582
    :catchall_5
    move-exception p1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p1

    .line 561
    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0
.end method

.method private addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V
    .locals 3

    .line 4571
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4573
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4574
    if-nez v1, :cond_0

    .line 4576
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4577
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4579
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4580
    monitor-exit v0

    .line 4581
    return-void

    .line 4580
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeatureInternal-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 870
    if-eqz v1, :cond_0

    .line 871
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 872
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 874
    :cond_0
    const-string p1, "createMmTelFeatureInternal: null feature returned."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 875
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 877
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private deRegisterVowifiWhenCellularPreffered(I)Z
    .locals 2

    .line 4447
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "deregister_vowifi_when_cellular_preffered"

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4450
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getWfcMode(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4447
    :goto_0
    return v1
.end method

.method private dialECallVoWifi(I)Z
    .locals 7

    .line 4339
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 4340
    const-string v1, "support_vowifi_ecall"

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 4342
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4343
    const-string p1, "dialECallVoWifi, ECall on vowifi not supported"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4344
    return v2

    .line 4346
    :cond_0
    const-string v1, "ecall_on_vowifi_first"

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4348
    const-string p1, "dialECallVoWifi, ECall on vowifi first"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4349
    return v3

    .line 4352
    :cond_1
    nop

    .line 4353
    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4354
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 4356
    if-nez v1, :cond_2

    .line 4357
    return v2

    .line 4359
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialECallVoWifi serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4360
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 4363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialECallVoWifi regState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4365
    if-eqz v1, :cond_6

    .line 4366
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4367
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 4368
    const-string v5, "deregister_vowifi_before_ecall"

    invoke-direct {p0, p1, v5, v0}, Lcom/spreadtrum/ims/ImsService;->getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 4370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialECallVoWifi netWorkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shouldDeregisterVowifi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4372
    if-eqz v0, :cond_4

    .line 4373
    if-eq v1, v3, :cond_3

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x7

    if-eq v1, v0, :cond_3

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3

    const/16 v0, 0xf

    if-eq v1, v0, :cond_3

    const/16 v0, 0x11

    if-ne v1, v0, :cond_4

    .line 4390
    :cond_3
    :try_start_0
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mDeregisterVowifi:Z

    .line 4391
    nop

    .line 4392
    const-string v0, "dialECallVoWifi de-register vowifi"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4393
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/ims/internal/IImsServiceEx;->setVowifiRegister(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4396
    goto :goto_0

    .line 4394
    :catch_0
    move-exception v0

    .line 4395
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4399
    :cond_4
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4400
    nop

    .line 4401
    const-string v0, "dialECallVoWifi, ECall on vowifi when out of service"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    .line 4404
    :cond_6
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->deRegisterVowifiWhenCellularPreffered(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4406
    :try_start_1
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Lcom/android/ims/internal/IImsServiceEx;->setVoWifiUnavailable(IZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4409
    goto :goto_2

    .line 4407
    :catch_1
    move-exception p1

    .line 4408
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4411
    :cond_7
    :goto_2
    return v0
.end method

.method public static getBooleanCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 4285
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p0

    .line 4286
    nop

    .line 4287
    const-string v0, "carrier_config"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 4288
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4289
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4291
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 4276
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p0

    .line 4277
    new-instance v0, Landroid/telephony/UniCarrierConfigManager;

    invoke-direct {v0, p2}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 4278
    invoke-virtual {v0, p0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4279
    invoke-virtual {v0, p0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4281
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 4415
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p3

    .line 4416
    nop

    .line 4417
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mUniCarrierConfigManager:Landroid/telephony/UniCarrierConfigManager;

    if-nez v0, :cond_0

    .line 4418
    new-instance v0, Landroid/telephony/UniCarrierConfigManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mUniCarrierConfigManager:Landroid/telephony/UniCarrierConfigManager;

    .line 4421
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mUniCarrierConfigManager:Landroid/telephony/UniCarrierConfigManager;

    invoke-virtual {v0, p3}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4422
    if-eqz v0, :cond_1

    .line 4423
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 4422
    :cond_1
    const/4 v0, 0x0

    .line 4425
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierValueByServiceId serviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " key = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " subId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4429
    return v0
.end method

.method private getDelaySend(Z)I
    .locals 3

    .line 4654
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    .line 4655
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->isRatSupportIms()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 4657
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 4658
    return v0

    .line 4662
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result p1

    .line 4663
    if-ne p1, v0, :cond_3

    .line 4664
    iget p1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 4665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDelaySend, use main sim serviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4669
    :cond_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 4670
    if-nez p1, :cond_4

    return v0

    .line 4671
    :cond_4
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 4672
    :cond_5
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 4673
    :cond_6
    const/16 p1, 0x1f4

    return p1
.end method

.method private getImsFeature(I)I
    .locals 1

    .line 4233
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4234
    if-eqz p1, :cond_0

    .line 4235
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result p1

    return p1

    .line 4237
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static getIntCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)I
    .locals 1

    .line 4295
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p0

    .line 4296
    nop

    .line 4297
    const-string v0, "carrier_config"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 4298
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4299
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4301
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getLTECapability(ILandroid/content/Context;)Z
    .locals 5

    .line 4191
    nop

    .line 4194
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 4195
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4196
    add-int/lit8 v2, p0, -0x1

    .line 4197
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4196
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p0

    .line 4198
    const-wide/16 v1, 0x0

    cmp-long v3, v1, p0

    if-eqz v3, :cond_1

    .line 4199
    const v3, 0x41000

    int-to-long v3, v3

    and-long/2addr p0, v3

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4203
    :cond_1
    goto :goto_0

    .line 4201
    :catch_0
    move-exception p1

    .line 4202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLTECapability error: serviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " Exception:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4204
    :goto_0
    return v0
.end method

.method private getMMTelFeature(I)Lcom/spreadtrum/ims/ImsServiceImpl;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 959
    return-object p1
.end method

.method private getPrimaryCardImsFeature()I
    .locals 2

    .line 4216
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4217
    if-eqz v0, :cond_0

    .line 4218
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result v0

    return v0

    .line 4220
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getReuestId()I
    .locals 3

    .line 1999
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2000
    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/ImsService;->mRequestId:I

    .line 2001
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 2002
    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/ims/ImsService;->mRequestId:I

    .line 2004
    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mRequestId:I

    monitor-exit v0

    return v1

    .line 2005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSubIdByServiceId(I)I
    .locals 2

    .line 4305
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    .line 4306
    nop

    .line 4307
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lt v1, v0, :cond_0

    .line 4308
    const/4 v0, 0x0

    aget p0, p0, v0

    goto :goto_0

    .line 4310
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 4186
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p0

    .line 4187
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private getVoWifiDebugMode()I
    .locals 3

    .line 4705
    nop

    .line 4706
    const-string v0, "persist.sys.vowifi.lab.sim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4707
    const-string v2, "persist.sys.vowifi.whitelist"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4709
    if-eqz v0, :cond_0

    .line 4710
    const/4 v1, 0x2

    .line 4711
    const-string v0, "VoWifi Engineer Mode Lab SIM Enable"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 4712
    :cond_0
    if-eqz v2, :cond_1

    .line 4713
    const/4 v1, 0x1

    .line 4714
    const-string v0, "VoWifi Engineer Mode WhiteList Enable"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4716
    :cond_1
    :goto_0
    return v1
.end method

.method private getWfcMode(I)I
    .locals 2

    .line 4436
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result p1

    .line 4437
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4438
    nop

    .line 4439
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4440
    if-eqz v1, :cond_0

    .line 4441
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result p1

    goto :goto_0

    .line 4440
    :cond_0
    const/4 p1, 0x0

    .line 4443
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p1

    return p1
.end method

.method private handleCancelCurrentRequest(I)V
    .locals 4

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCancelCurrentRequest-> mFSR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2812
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v1, 0x5

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 2814
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 2817
    :try_start_0
    const-string v2, "Already handle one request."

    .line 2818
    invoke-interface {v0, p1, v2, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    goto :goto_0

    .line 2822
    :catch_0
    move-exception p1

    .line 2823
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2826
    :cond_0
    :goto_0
    const-string p1, "handleCancelCurrentRequest-> mReleaseVowifiRequest is exist!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2827
    return-void

    .line 2829
    :cond_1
    new-instance v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;-><init>(IIII)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2835
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 2841
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2842
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    if-eqz v0, :cond_2

    .line 2844
    if-eqz p1, :cond_2

    .line 2845
    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    .line 2848
    :cond_2
    if-eqz p1, :cond_3

    .line 2849
    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyVoWifiEnable(Z)V

    .line 2850
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 2851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCancelCurrentRequest-> notifyVoWifiUnavaliable. mPCPmanage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2854
    :cond_3
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 2855
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2856
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    if-eqz p1, :cond_5

    .line 2857
    :cond_4
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    .line 2858
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    .line 2859
    const-string p1, "handleCancelCurrentRequest-> mPendingAttachVowifiSuccess is true!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2860
    iget p1, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez p1, :cond_5

    .line 2861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCancelCurrentRequest-> mPendingAttachVowifiSuccess:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mPendingVowifiHandoverVowifiSuccess:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mCallEndType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyCpCallEnd()V

    .line 2871
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCancelCurrentRequest-> mIsCalling:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2873
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez p1, :cond_6

    .line 2874
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2876
    :cond_6
    goto :goto_2

    .line 2877
    :cond_7
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_8

    .line 2879
    :try_start_1
    const-string v2, "Invalid Request"

    .line 2880
    invoke-interface {v0, p1, v2, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2884
    :catch_1
    move-exception p1

    .line 2885
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2886
    :goto_1
    goto :goto_2

    .line 2888
    :cond_8
    const-string p1, "handleCancelCurrentRequest -> mImsServiceListenerEx is null "

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2892
    :goto_2
    return-void
.end method

.method private handleHandover(ZII)V
    .locals 6

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHandover-> isCalling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPRegVowifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPRegVoLTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2579
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2580
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 2581
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2584
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2585
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    .line 2586
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2589
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 2590
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_3

    .line 2592
    :try_start_0
    const-string v0, "Already handle one request."

    .line 2595
    if-nez p3, :cond_2

    .line 2596
    goto :goto_0

    .line 2597
    :cond_2
    move v1, v3

    .line 2592
    :goto_0
    invoke-interface {p1, p2, v0, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    goto :goto_1

    .line 2598
    :catch_0
    move-exception p1

    .line 2599
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2602
    :cond_3
    :goto_1
    const-string p1, "handleHandover : mFSR is exist!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2603
    return-void

    .line 2605
    :cond_4
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 2606
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_5

    .line 2608
    :try_start_1
    const-string p3, "VoWifi Emergency call ongoing."

    .line 2609
    invoke-interface {p1, p2, p3, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2615
    goto :goto_2

    .line 2613
    :catch_1
    move-exception p1

    .line 2614
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2617
    :cond_5
    :goto_2
    const-string p1, "handleHandover : VoWifi Emergency call ongoing."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2618
    return-void

    .line 2621
    :cond_6
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    if-eqz v0, :cond_8

    if-ne p3, v3, :cond_8

    .line 2622
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_7

    .line 2624
    :try_start_2
    const-string p3, "VoLte Emergency call ongoing."

    .line 2625
    invoke-interface {p1, p2, p3, v3}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2631
    goto :goto_3

    .line 2629
    :catch_2
    move-exception p1

    .line 2630
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2633
    :cond_7
    :goto_3
    const-string p1, "handleHandover : VoLte Emergency call ongoing."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2634
    return-void

    .line 2638
    :cond_8
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 2639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleHandover-> currentImsFeature:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mPendingVolteHandoverVolteSuccess:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mPendingVowifiHandoverVowifiSuccess:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2642
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHandover-> mCallEndType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyCpCallEnd()V

    .line 2645
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    .line 2646
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    .line 2649
    :cond_9
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v0, :cond_a

    if-ne p3, v3, :cond_a

    .line 2650
    const-string v0, "handleHandover-> Switch to vowifi, clear mPCPmanage"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2651
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 2654
    :cond_a
    new-instance v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2656
    if-eqz p1, :cond_b

    const/16 v2, 0x65

    goto :goto_4

    :cond_b
    const/16 v2, 0x64

    :goto_4
    iget v4, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 2657
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v0, p2, v2, v4, p3}, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;-><init>(IIII)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2659
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget p3, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2660
    if-eqz p2, :cond_f

    .line 2661
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p3, p3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez p3, :cond_d

    .line 2662
    if-eqz p1, :cond_c

    const/4 v3, 0x4

    goto :goto_5

    .line 2663
    :cond_c
    nop

    .line 2662
    :goto_5
    invoke-virtual {p2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->requestImsHandover(I)V

    goto :goto_7

    .line 2664
    :cond_d
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p3, p3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne p3, v3, :cond_f

    .line 2665
    if-eqz p1, :cond_e

    goto :goto_6

    .line 2666
    :cond_e
    move v1, v5

    .line 2665
    :goto_6
    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->requestImsHandover(I)V

    .line 2669
    :cond_f
    :goto_7
    return-void
.end method

.method private handleReleaseWifiResource(I)V
    .locals 4

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReleaseWifiResource-> mFSR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2772
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 2774
    :try_start_0
    const-string v2, "Already handle one request."

    const/16 v3, 0x8

    .line 2775
    invoke-interface {v0, p1, v2, v3}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    goto :goto_0

    .line 2779
    :catch_0
    move-exception p1

    .line 2780
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2783
    :cond_0
    :goto_0
    const-string p1, "ACTION_RELEASE_WIFI_RESOURCE-> mReleaseVowifiRequest is exist!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 2785
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_2

    .line 2786
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 2790
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 2791
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 2792
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_RELEASE_WIFI_RESOURCE, use main sim serviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2797
    :cond_3
    new-instance v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/16 v3, 0x69

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;-><init>(IIII)V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2802
    const-string p1, "ACTION_RELEASE_WIFI_RESOURCE-> wifi state: DISCONNECTED"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2804
    :goto_1
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 2805
    return-void
.end method

.method private handleUpdateDataRouterFinished()V
    .locals 16

    .line 3402
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateDataRouterFinished-> mCallEndType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3406
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsService;->notifyCpCallEnd()V

    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateDataRouterFinished-> mFSR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mInCallHOF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mPendingVowifiHandoverVowifiSuccess:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mPendingVolteHandoverVolteSuccess:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3415
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const-string v3, "handleUpdateDataRouterFinished->notifyDataRouter"

    const/4 v4, 0x1

    const-string v5, " mPendingReregister"

    const-string v6, "handleUpdateDataRouterFinished->mIsS2bStopped:"

    if-eqz v1, :cond_12

    iget v8, v0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    if-ne v8, v2, :cond_1

    iget-boolean v8, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    if-nez v8, :cond_1

    iget-boolean v8, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    if-eqz v8, :cond_12

    .line 3418
    :cond_1
    iget-object v8, v0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3419
    iget-object v8, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v8, v8, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-direct {v0, v8}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v8

    .line 3420
    iget-boolean v9, v0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    const-string v10, ""

    const-string v11, ":"

    const-string v12, "handleUpdateDataRouterFinished-> wifiInfo.getBSSID(): "

    const-string v13, ";country="

    const-string v14, " info: "

    const-string v15, "handleUpdateDataRouterFinished-> wifiManager :"

    const-string v7, "wifi"

    const/16 v2, 0x65

    if-nez v9, :cond_a

    iget-boolean v9, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    if-eqz v9, :cond_2

    goto/16 :goto_2

    .line 3474
    :cond_2
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    if-eqz v1, :cond_16

    .line 3476
    :cond_3
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const-string v3, "handleUpdateDataRouterFinished->reRegister->type: "

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v1, :cond_5

    if-nez v8, :cond_5

    .line 3479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/spreadtrum/ims/ImsService;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3482
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    if-eqz v1, :cond_4

    .line 3483
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v2, v0, Lcom/spreadtrum/ims/ImsService;->mNetworkType:I

    iget-object v3, v0, Lcom/spreadtrum/ims/ImsService;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->reRegister(ILjava/lang/String;)V

    goto :goto_0

    .line 3486
    :cond_4
    iput-boolean v4, v0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    .line 3488
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3492
    :cond_5
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    if-ne v8, v2, :cond_8

    .line 3495
    nop

    .line 3497
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3499
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 3500
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3501
    if-eqz v2, :cond_6

    .line 3502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3504
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 3505
    if-eqz v2, :cond_6

    .line 3506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3507
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3506
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3509
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 3510
    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3515
    :cond_6
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getRegPANICountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3516
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 3517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3520
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3522
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3520
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3523
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->reRegister(ILjava/lang/String;)V

    .line 3525
    :cond_8
    :goto_1
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    if-eqz v1, :cond_16

    .line 3526
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v1, :cond_9

    .line 3527
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3529
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    goto/16 :goto_5

    .line 3421
    :cond_a
    :goto_2
    iget-object v9, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v9, v9, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v9, v2, :cond_d

    iget-object v9, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v9, v9, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v9, :cond_d

    if-nez v8, :cond_d

    .line 3424
    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    if-eqz v2, :cond_b

    .line 3425
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyDataRouter()V

    goto :goto_3

    .line 3427
    :cond_b
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    if-nez v1, :cond_c

    .line 3428
    iput-boolean v4, v0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    .line 3430
    :cond_c
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3434
    :cond_d
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v3, v2, :cond_10

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    if-ne v8, v3, :cond_10

    .line 3437
    const/4 v2, 0x6

    .line 3438
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3440
    nop

    .line 3441
    const-string v4, "IEEE-802.11;i-wlan-node-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3442
    iget-object v4, v0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 3443
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 3444
    if-eqz v4, :cond_e

    .line 3445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3447
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3448
    if-eqz v4, :cond_e

    .line 3449
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 3450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3451
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3450
    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3452
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 3453
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 3452
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3457
    :cond_e
    iget-object v4, v0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getRegPANICountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3458
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 3459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3462
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateDataRouterFinished->notifyImsNetworkInfo->type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3464
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3462
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3465
    nop

    .line 3466
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3465
    invoke-virtual {v1, v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsNetworkInfo(ILjava/lang/String;)V

    .line 3468
    :cond_10
    :goto_4
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    if-eqz v1, :cond_16

    .line 3469
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v1, :cond_11

    .line 3470
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3472
    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    goto :goto_5

    .line 3533
    :cond_12
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    if-eqz v1, :cond_16

    .line 3534
    const-string v1, "handleUpdateDataRouterFinished->mPendingVolteHandoverVolteSuccess is true"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3535
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v1, :cond_15

    .line 3536
    iget-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    if-eqz v1, :cond_14

    .line 3537
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v1

    .line 3540
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 3542
    iget v1, v0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 3543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateDataRouterFinished, use main sim serviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3545
    :cond_13
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3546
    if-eqz v2, :cond_14

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3547
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyDataRouter()V

    .line 3550
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3555
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    goto :goto_6

    .line 3533
    :cond_16
    :goto_5
    nop

    .line 3558
    :goto_6
    return-void
.end method

.method private handleVowifiUnavailable(IILjava/lang/Boolean;)V
    .locals 7

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVowifiUnavailable-> isOnlySendAT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsCPImsPdnActived:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 2677
    if-nez p3, :cond_0

    .line 2678
    return-void

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2681
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p2, :cond_1

    .line 2683
    :try_start_0
    const-string p3, "Already handle one request."

    .line 2684
    invoke-interface {p2, p1, p3, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2690
    goto :goto_0

    .line 2688
    :catch_0
    move-exception p1

    .line 2689
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2692
    :cond_1
    :goto_0
    const-string p1, "handleVowifiUnavailable-> mReleaseVowifiRequest is exist!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2695
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 2696
    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    .line 2697
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 2698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVowifiUnavailable, use main sim serviceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2701
    :cond_3
    new-instance v5, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/16 v6, 0x67

    invoke-direct {v5, p1, v6, v0, v3}, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;-><init>(IIII)V

    iput-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2707
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_7

    .line 2709
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2710
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2709
    const-string v1, "airplane_mode_on"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 2712
    :goto_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getDelaySend(Z)I

    move-result p1

    .line 2713
    if-nez p2, :cond_5

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    .line 2714
    :goto_2
    if-lez p1, :cond_6

    .line 2715
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v5, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;I)V

    goto :goto_3

    .line 2717
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    .line 2719
    :goto_3
    goto :goto_5

    .line 2720
    :cond_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_8

    .line 2721
    const-string p1, "handleVowifiUnavailable -> operationSuccessed -> IMS_OPERATION_SET_VOWIFI_UNAVAILABLE"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2723
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v5, v5, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 2724
    invoke-interface {p1, v5, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2729
    goto :goto_4

    .line 2727
    :catch_1
    move-exception p1

    .line 2728
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2731
    :cond_8
    :goto_4
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2733
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVowifiUnavailable-> wifi state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2736
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2737
    if-eqz p1, :cond_9

    .line 2738
    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyVoWifiEnable(Z)V

    .line 2739
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 2740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleVowifiUnavailable-> notifyVoWifiUnavaliable. mPCPmanage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2744
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz p1, :cond_a

    .line 2745
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2747
    :cond_a
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    .line 2750
    :goto_6
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    if-eqz p1, :cond_b

    .line 2751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleVowifiUnavailable->mPendingVowifiHandoverVowifiSuccess is true->mCallEndType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mIsCalling:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2755
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    .line 2756
    iget p1, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    if-eq p1, v2, :cond_b

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez p1, :cond_b

    .line 2757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleVowifiUnavailable-> mCallEndType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyCpCallEnd()V

    .line 2762
    :cond_b
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 2763
    return-void
.end method

.method private handleWifiAllCallsEnd()V
    .locals 9

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiAllCallsEnd-> mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInCallHOF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPRegVoLTE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPRegVowifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3098
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    const-string v1, "handleWifiAllCallsEnd->currentImsFeature:"

    const-string v2, "handleWifiAllCallsEnd->ImsServiceImpl is null"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 3099
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_8

    .line 3100
    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v6, 0x65

    if-ne v0, v6, :cond_8

    .line 3102
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v6, v6, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3103
    if-eqz v0, :cond_7

    .line 3104
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result v6

    .line 3105
    nop

    .line 3106
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3108
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVowifiSessionListEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3109
    iput v4, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    .line 3110
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v7, v7, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v8, 0x2

    if-eq v0, v7, :cond_1

    .line 3111
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne v0, v8, :cond_0

    .line 3112
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    goto :goto_0

    .line 3113
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v0, :cond_1

    .line 3114
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    .line 3117
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleWifiAllCallsEnd->mPendingAttachVowifiSuccess:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mPPdnOk:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mIsVolteCall = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mIsVowifiCall = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3125
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne v0, v8, :cond_3

    .line 3126
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    if-eqz v0, :cond_2

    .line 3128
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    .line 3130
    :cond_2
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 3132
    :cond_3
    iput v3, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3133
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    if-nez v0, :cond_4

    .line 3135
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3137
    :cond_4
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_5

    if-ne v6, v8, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    if-nez v0, :cond_5

    .line 3142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3144
    :cond_5
    if-eq v6, v3, :cond_6

    .line 3145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p0, v5}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 3150
    :cond_6
    goto :goto_1

    .line 3151
    :cond_7
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3159
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 3160
    if-ne v0, v3, :cond_9

    .line 3161
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 3162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "main sim serviceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3165
    :cond_9
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3166
    if-eqz v0, :cond_f

    .line 3167
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVowifiSessionListEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3168
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result v0

    .line 3169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-nez v0, :cond_a

    .line 3172
    invoke-virtual {p0, v5}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 3173
    iput v4, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    .line 3174
    iput v3, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3175
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3179
    :cond_a
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_b

    .line 3180
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    goto :goto_2

    .line 3181
    :cond_b
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_c

    .line 3182
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    .line 3186
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    if-eqz v0, :cond_d

    .line 3187
    const-string v0, "handleWifiAllCallsEnd->reset mVoWifiSOSAttached"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3188
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    .line 3191
    :cond_d
    goto :goto_3

    .line 3193
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session list not empty,isVolteSessionListEmpty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isVowifiSessionListEmpty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3194
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVowifiSessionListEmpty()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3193
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 3198
    :cond_f
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3201
    :goto_3
    return-void
.end method

.method private handleWifiAttachFailed(I)V
    .locals 7

    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiAttachFailed-> mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 2993
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAttachStateChange(II)V

    .line 2995
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 2996
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v3, :cond_3

    .line 2998
    :try_start_0
    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3002
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v5, v5, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    move v5, v1

    goto :goto_0

    .line 3003
    :cond_0
    move v5, v2

    .line 2999
    :goto_0
    invoke-interface {v0, v3, v4, v5}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    goto :goto_1

    .line 3004
    :catch_0
    move-exception v0

    .line 3005
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3007
    :goto_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3008
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    .line 3009
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 3012
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    .line 3013
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3015
    :cond_1
    const-string v0, "handleWifiAttachFailed-> operationFailed, clear mFSR."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3016
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 3017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3018
    const v3, 0xd206

    if-eq p1, v3, :cond_2

    const v3, 0xd205

    if-ne p1, v3, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez p1, :cond_3

    .line 3020
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->setVoWifiLocalAddr(Ljava/lang/String;)V

    .line 3024
    :cond_3
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    .line 3025
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 3027
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    if-ne p1, v2, :cond_4

    .line 3029
    const-string p1, "handleWifiAttachFailed-> handover to vowifi attach failed, set mInCallHOF unknow"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3030
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3031
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature()V

    .line 3034
    :cond_4
    return-void
.end method

.method private handleWifiAttachStoped(I)V
    .locals 5

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiAttachStoped-> mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 3041
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAttachStateChange(II)V

    .line 3042
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 3043
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 3048
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3049
    invoke-interface {v0, v2, p1, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3055
    goto :goto_0

    .line 3053
    :catch_0
    move-exception p1

    .line 3054
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3056
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3057
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    .line 3059
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 3060
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3061
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    .line 3064
    :cond_0
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    .line 3065
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 3066
    return-void
.end method

.method private handleWifiAttachSuccessed()V
    .locals 6

    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiAttachSuccessed-> mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsCalling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPendingAttachVowifiSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPendingVowifiHandoverVowifiSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mIsS2bStopped"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mAttachVowifiSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 2907
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAttachStateChange(II)V

    .line 2909
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 2910
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyCPVowifiAttachSucceed()V

    .line 2911
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    .line 2913
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v4, 0x65

    if-ne v0, v4, :cond_7

    .line 2915
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    const-string v4, "handleWifiAttachSuccessed -> operationSuccessed -> IMS_OPERATION_HANDOVER_TO_VOWIFI"

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 2916
    iput v5, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 2917
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2918
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2919
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 2920
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 2921
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2923
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v4, v4, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 2924
    invoke-interface {v0, v4, v5}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    goto :goto_0

    .line 2927
    :catch_0
    move-exception v0

    .line 2928
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2931
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_6

    .line 2932
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v4, v4, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2933
    if-eqz v0, :cond_1

    .line 2934
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->enableWiFiParamReport()V

    .line 2936
    :cond_1
    goto :goto_2

    .line 2938
    :cond_2
    iput v5, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 2939
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2940
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_3

    .line 2941
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2943
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v4, v4, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 2944
    invoke-interface {v0, v4, v5}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2949
    goto :goto_1

    .line 2947
    :catch_1
    move-exception v0

    .line 2948
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2952
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-nez v0, :cond_4

    .line 2953
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    .line 2954
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    .line 2955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 2958
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 2959
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mPendingAttachVowifiSuccess:Z

    .line 2960
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-eqz v0, :cond_5

    .line 2961
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVowifiHandoverVowifiSuccess:Z

    .line 2963
    :cond_5
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2965
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleWifiAttachSuccessed ->mFSR.mEventCode:101 currentImsFeature:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    .line 2968
    invoke-direct {p0, v4}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volteRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    .line 2975
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2965
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 2977
    :cond_7
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    .line 2978
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    .line 2981
    :cond_8
    :goto_3
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    .line 2982
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    .line 2983
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 2984
    return-void
.end method

.method private handleWifiIncomingCall(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3

    .line 3070
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 3071
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primaryCard is not same as Vowifi service Card. callServiceId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3073
    return-void

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3077
    if-eqz v0, :cond_1

    .line 3079
    :try_start_0
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3082
    goto :goto_0

    .line 3080
    :catch_0
    move-exception v0

    .line 3081
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3084
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiIncomingCall-> callSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3085
    return-void
.end method

.method private handleWifiRegisterResult(Ljava/lang/Boolean;)V
    .locals 9

    .line 3204
    if-nez p1, :cond_0

    .line 3205
    return-void

    .line 3207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiRegisterResult -> mWifiRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsLoggingIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3207
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    .line 3215
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 3216
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 3218
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 3219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_WIFI_REGISTER_RESAULT, use main sim serviceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3223
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    .line 3224
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 3225
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v3, :cond_c

    .line 3226
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-eqz p1, :cond_6

    .line 3228
    const-string p1, "EVENT_WIFI_REGISTER_RESAULT -> operationSuccessed -> VoWifi register success"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3229
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_3

    .line 3231
    :try_start_0
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v7, v7, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3234
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v8, v8, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v8, v6, :cond_2

    goto :goto_0

    .line 3235
    :cond_2
    move v1, v4

    .line 3232
    :goto_0
    invoke-interface {p1, v7, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3238
    goto :goto_1

    .line 3236
    :catch_0
    move-exception p1

    .line 3237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3240
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 3241
    nop

    .line 3242
    invoke-virtual {v3, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    .line 3245
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz p1, :cond_5

    .line 3246
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurPAssociatedUri()Ljava/lang/String;

    move-result-object p1

    .line 3247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_WIFI_REGISTER_RESAULT -> pau:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3249
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3250
    if-eqz v0, :cond_5

    .line 3251
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setPAU(Ljava/lang/String;)V

    .line 3256
    :cond_5
    const/16 p1, 0x67

    invoke-virtual {p0, v6, p1, v5}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 3259
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne p1, v6, :cond_b

    if-eqz v3, :cond_b

    .line 3260
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 3262
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurLocalAddress()Ljava/lang/String;

    move-result-object p1

    .line 3261
    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    goto :goto_4

    .line 3266
    :cond_6
    const-string p1, "EVENT_WIFI_REGISTER_RESAULT -> operationFailed -> VoWifi register failed"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3267
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_8

    .line 3269
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    const-string v2, "VoWifi register failed"

    .line 3273
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v7, v7, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v7, v6, :cond_7

    move v7, v1

    goto :goto_2

    .line 3274
    :cond_7
    move v7, v4

    .line 3270
    :goto_2
    invoke-interface {p1, v0, v2, v7}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3277
    goto :goto_3

    .line 3275
    :catch_1
    move-exception p1

    .line 3276
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3279
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 3280
    nop

    .line 3281
    invoke-virtual {v3, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    .line 3288
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne p1, v6, :cond_a

    if-eqz v3, :cond_a

    .line 3289
    invoke-virtual {v3, v5}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    .line 3291
    :cond_a
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    .line 3294
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne p1, v4, :cond_c

    .line 3295
    iput-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3298
    :cond_c
    return-void
.end method

.method private handleWifiResetResult(II)V
    .locals 6

    .line 3317
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3318
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    .line 3319
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    .line 3320
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 3321
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3, v1}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAttachStateChange(II)V

    .line 3322
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeatureForAllService()V

    .line 3324
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v3, :cond_5

    .line 3325
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v4, :cond_4

    .line 3327
    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v4, 0x69

    if-ne v3, v4, :cond_1

    .line 3328
    const/16 v3, 0x8

    goto :goto_0

    .line 3329
    :cond_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    .line 3330
    const/4 v3, 0x4

    goto :goto_0

    .line 3332
    :cond_2
    const/4 v3, 0x5

    .line 3334
    :goto_0
    if-ne p1, v2, :cond_3

    .line 3335
    const-string v2, "handleWifiResetResult -> operationSuccessed -> wifi release success, clear mIsLoggingIn"

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3337
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v4, v4, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    invoke-interface {v2, v4, v3}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3342
    goto :goto_1

    .line 3340
    :catch_0
    move-exception v2

    .line 3341
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3344
    :goto_1
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    goto :goto_2

    .line 3346
    :cond_3
    const-string v1, "handleWifiResetResult -> operationFailed -> wifi release fail "

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3348
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi release fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3354
    goto :goto_2

    .line 3352
    :catch_1
    move-exception v1

    .line 3353
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3357
    :cond_4
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3358
    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiState:I

    .line 3360
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiResetResult-> result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " errorCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3362
    return-void
.end method

.method private handleWifiResetStart()V
    .locals 2

    .line 3302
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_1

    .line 3303
    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    .line 3305
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3306
    const-string v0, "handleWifiResetStart-> currentImsFeature is VolTE due to Handover,not update Ims Feature"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 3308
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    .line 3309
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeatureForAllService()V

    .line 3313
    :cond_1
    :goto_0
    const-string v0, "handleWifiResetStart"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3314
    return-void
.end method

.method private handleWifiUnsolUpdate(I)V
    .locals 4

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiUnsolUpdate-> mFSR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UnsolicitedCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsS2bStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingReregister:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3373
    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3374
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    .line 3376
    :cond_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v2, :cond_4

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_4

    .line 3380
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    .line 3381
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-ne p1, v1, :cond_4

    .line 3384
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsS2bStopped:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    if-eqz v0, :cond_4

    .line 3385
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3386
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3387
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v1, :cond_2

    .line 3388
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyDataRouter()V

    goto :goto_0

    .line 3389
    :cond_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_3

    .line 3390
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkType:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->reRegister(ILjava/lang/String;)V

    .line 3393
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mPendingReregister:Z

    .line 3398
    :cond_4
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->notifyWiFiError(I)V

    .line 3399
    return-void
.end method

.method private isRatSupportIms()Z
    .locals 3

    .line 4637
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v0

    .line 4638
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4639
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRatSupportIms, use main sim serviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4643
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4644
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    .line 4645
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRatSupportIms-> serviceAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4646
    return v0
.end method

.method public static isRttSupported(ILandroid/content/Context;)Z
    .locals 1

    .line 4455
    invoke-static {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 4456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4457
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRttSupported : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4458
    return p0
.end method

.method private isUssdCall(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 2

    .line 795
    nop

    .line 796
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 797
    const-string v1, "dialstring"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    .line 800
    :cond_0
    return v0
.end method

.method private isVoLTERegisted(I)Z
    .locals 1

    .line 2554
    nop

    .line 2556
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2557
    if-eqz p1, :cond_0

    .line 2558
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegisterState()Z

    move-result p1

    goto :goto_0

    .line 2557
    :cond_0
    const/4 p1, 0x0

    .line 2561
    :goto_0
    return p1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 4755
    sget-boolean v0, Lcom/spreadtrum/ims/ImsService;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 4756
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    :cond_1
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    .line 4751
    sget-object v0, Lcom/spreadtrum/ims/ImsService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    .line 4761
    sget-object v0, Lcom/spreadtrum/ims/ImsService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    return-void
.end method

.method private notifyListenerWhenRegister(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 4

    .line 1936
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 1937
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1940
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mVolteAvailable:Z

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 1942
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " notifyListenerWhenRegister() -> isImsRegistered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mVolteAvailable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mVolteAvailable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1945
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsRegisterListener;->imsRegisterStateChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    goto :goto_2

    .line 1949
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1946
    :catch_0
    move-exception p1

    .line 1947
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1949
    :goto_2
    monitor-exit v0

    .line 1950
    return-void

    .line 1949
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setCurrentImsFeature(II)V
    .locals 1

    .line 4248
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4249
    if-eqz p1, :cond_0

    .line 4250
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCurrentImsFeature(I)V

    .line 4251
    :cond_0
    return-void
.end method

.method private setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V
    .locals 1

    .line 4566
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    .line 4567
    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsService;->addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V

    .line 4568
    return-void
.end method


# virtual methods
.method public addImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 3

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImsEventListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1614
    if-nez p1, :cond_0

    .line 1615
    return-void

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1619
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1621
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

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1623
    :goto_0
    monitor-exit v0

    .line 1625
    return-void

    .line 1623
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    .line 4524
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4526
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4527
    if-nez v1, :cond_0

    .line 4528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not add ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4529
    monitor-exit v0

    return-void

    .line 4531
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    .line 4532
    if-eqz p1, :cond_1

    .line 4533
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 4535
    :cond_1
    monitor-exit v0

    .line 4536
    return-void

    .line 4535
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 1

    .line 1504
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1509
    if-eqz p1, :cond_1

    .line 1510
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->addImsPdnStateListener(Lcom/android/ims/internal/IImsPdnStateListener;)V

    .line 1512
    :cond_1
    return-void

    .line 1505
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addImsPdnStateListener->slotId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method public allowEnableIms(I)Z
    .locals 6

    .line 3986
    nop

    .line 3987
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3988
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    goto :goto_0

    .line 3990
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3992
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowEnableIms->service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFSR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVolteEnabledBySystemProperties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3993
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3992
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3996
    nop

    .line 3997
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v0

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 3996
    const-string v4, "volte_vt_enabled"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v3}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 4000
    const/4 v3, 0x0

    if-eq v0, v5, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 4008
    :cond_1
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    const-string v4, " service.isRadioAvailableForImsService():"

    const-string v5, " service.isImsRegistered():"

    if-ne p1, v0, :cond_7

    .line 4009
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 4012
    :cond_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    if-eq p1, v0, :cond_5

    :cond_3
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    if-eqz p1, :cond_4

    goto :goto_1

    .line 4018
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowEnableIms->mIsPRegVoLTE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4020
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4021
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4018
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4022
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    if-nez p1, :cond_9

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result p1

    if-nez p1, :cond_9

    .line 4023
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4024
    return v2

    .line 4013
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowEnableIms->mIsVolteCall:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mIsVowifiCall:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mIsAPImsPdnActived:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4016
    return v3

    .line 4010
    :cond_6
    :goto_2
    return v3

    .line 4027
    :cond_7
    if-eqz v1, :cond_a

    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 4029
    :cond_8
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4031
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4030
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4032
    return v2

    .line 4035
    :cond_9
    return v3

    .line 4028
    :cond_a
    :goto_3
    return v3

    .line 4002
    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowEnableIms-> ENHANCED_4G_MODE_ENABLED not initialized or false, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " volteSettingByUser:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4003
    return v3
.end method

.method public cancelCurrentRequest()I
    .locals 4

    .line 1199
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getReuestId()I

    move-result v0

    .line 1200
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v2, 0x68

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1201
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1202
    return v0
.end method

.method public changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1019
    if-nez v0, :cond_0

    .line 1020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid phoneId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1021
    const/4 p1, -0x1

    return p1

    .line 1023
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUTProxy()Lcom/android/ims/internal/IImsUt;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 1024
    invoke-virtual {p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createCallSessionInternal(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 8

    .line 701
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 702
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCallSessionInternal  serviceId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 703
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 704
    if-eqz p3, :cond_4

    .line 706
    invoke-virtual {p3}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v3, "ecall_on_vowifi_first"

    invoke-direct {p0, p1, v3, v1}, Lcom/spreadtrum/ims/ImsService;->getCarrierValueByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 710
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 711
    if-nez v0, :cond_0

    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    :goto_0
    invoke-virtual {p3, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 712
    const-string p1, "createCallSession dialEmergencyCall over cpvowifi"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 714
    :cond_1
    if-ne v0, v2, :cond_2

    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    :goto_1
    invoke-virtual {p3, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 716
    :goto_2
    invoke-virtual {p3, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->createCallSessionInternal(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1

    .line 718
    :cond_4
    return-object v1

    .line 722
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCallSession->mIsVowifiCall: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mIsVolteCall: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isVoWifiEnabled(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 724
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isVoLTEEnabled(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 725
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    .line 727
    nop

    .line 728
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_c

    if-eqz p2, :cond_c

    .line 730
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 731
    nop

    .line 732
    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 733
    const-string v6, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 734
    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 735
    const-string v6, "CallRadioTech"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 737
    :cond_6
    const-string v3, ""

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCallSession callType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 738
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 742
    :cond_7
    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 744
    move v3, v5

    goto :goto_6

    .line 745
    :cond_8
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 747
    move v3, v4

    goto :goto_6

    .line 739
    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->dialECallVoWifi(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 740
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v3

    if-ne v3, v2, :cond_a

    goto :goto_5

    :cond_a
    move v3, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v3, v5

    goto :goto_6

    .line 751
    :cond_c
    move v3, v4

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCallSession dialECallonVoWifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsService;->isUssdCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 754
    invoke-virtual {p0, v5}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 757
    :cond_d
    iget v6, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v6

    if-ne v6, v0, :cond_e

    move v4, v5

    .line 758
    :cond_e
    if-nez v3, :cond_f

    if-eqz p2, :cond_14

    .line 759
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v0

    if-eq v0, v2, :cond_14

    :cond_f
    if-eqz v4, :cond_10

    .line 760
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_11

    :cond_10
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_14

    .line 762
    :cond_11
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsService;->isUssdCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez p1, :cond_12

    .line 763
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    .line 765
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCallSessionInternal set vowifi call property phoneId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 766
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCurCallSlot(I)Z

    .line 767
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 771
    :cond_12
    if-eqz p2, :cond_13

    .line 772
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    const-string v0, "EXTRA_CALL_SESSION_VOWIFI"

    invoke-virtual {p2, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 774
    :cond_13
    const-string p1, "createCallSession-> startVoWifiCall"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 779
    :cond_14
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 780
    if-nez p3, :cond_15

    .line 781
    const-string p1, "Invalid ServiceId "

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 782
    return-object v1

    .line 784
    :cond_15
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsService;->isUssdCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez p1, :cond_16

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez p1, :cond_16

    .line 785
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCallSessionInternal set volte call property phoneId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 787
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCurCallSlot(I)Z

    .line 788
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 790
    :cond_16
    const-string p1, "createCallSession-> startVoLteCall"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p3, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->createCallSessionInternal(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    .line 916
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->createMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->createMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 2

    .line 921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createRcsFeatureInternal-> slotId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 922
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mRcsFeatureImplArray:Landroid/util/SparseArray;

    monitor-enter p2

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mRcsFeatureImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/RcsFeatureImpl;

    .line 924
    if-eqz v0, :cond_0

    .line 925
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/spreadtrum/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 926
    invoke-virtual {v0}, Lcom/spreadtrum/ims/RcsFeatureImpl;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 928
    :cond_0
    const-string p1, "createRcsFeatureInternal: null feature returned."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 929
    const/4 p1, 0x0

    monitor-exit p2

    return-object p1

    .line 931
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disableIms(II)V
    .locals 2

    .line 947
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "turnOffIms"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    monitor-enter p2

    .line 949
    :try_start_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getMMTelFeature(I)Lcom/spreadtrum/ims/ImsServiceImpl;

    move-result-object p1

    .line 950
    if-eqz p1, :cond_0

    .line 951
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->turnOffIms()V

    .line 953
    :cond_0
    monitor-exit p2

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableIms(II)V
    .locals 2

    .line 936
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "turnOnIms"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    monitor-enter p2

    .line 938
    :try_start_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getMMTelFeature(I)Lcom/spreadtrum/ims/ImsServiceImpl;

    move-result-object p1

    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->turnOnIms()V

    .line 942
    :cond_0
    monitor-exit p2

    .line 943
    return-void

    .line 942
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAcsController(I)Lcom/spreadtrum/ims/acs/AcsController;
    .locals 2

    .line 4625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAcsController-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4626
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mAcsControllerArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/acs/AcsController;

    .line 4627
    return-object p1
.end method

.method public getAliveCallJitter()I
    .locals 2

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallJitter->mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1352
    nop

    .line 1353
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1354
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1355
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v1, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getAliveCallJitter()I

    move-result v0

    goto :goto_1

    .line 1359
    :cond_0
    const-string v0, "getAliveCallJitter->VowifiServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v1, :cond_3

    .line 1362
    if-eqz v0, :cond_2

    .line 1363
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getAliveCallJitter()I

    move-result v0

    goto :goto_1

    .line 1365
    :cond_2
    const-string v0, "getAliveCallJitter->ImsServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1368
    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getAliveCallLose()I
    .locals 2

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallLose->mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1329
    nop

    .line 1330
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1331
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1332
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v1, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getAliveCallLose()I

    move-result v0

    goto :goto_1

    .line 1336
    :cond_0
    const-string v0, "getAliveCallLose->VowifiServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :cond_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v1, :cond_3

    .line 1339
    if-eqz v0, :cond_2

    .line 1340
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getAliveCallLose()I

    move-result v0

    goto :goto_1

    .line 1342
    :cond_2
    const-string v0, "getAliveCallLose->ImsServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1345
    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getAliveCallRtt()I
    .locals 2

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAliveCallRtt->mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1375
    nop

    .line 1376
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1377
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1378
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v1, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getAliveCallRtt()I

    move-result v0

    goto :goto_1

    .line 1382
    :cond_0
    const-string v0, "getAliveCallRtt->VowifiServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v1, :cond_3

    .line 1385
    if-eqz v0, :cond_2

    .line 1386
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getAliveCallRtt()I

    move-result v0

    goto :goto_1

    .line 1388
    :cond_2
    const-string v0, "getAliveCallRtt->ImsServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1391
    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getCLIRStatus(I)I
    .locals 3

    .line 1535
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    .line 1536
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1537
    nop

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCLIRStatus phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1539
    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUtImpl()Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move-result-object p1

    .line 1541
    if-eqz p1, :cond_0

    .line 1542
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCLIRStatus()I

    move-result p1

    .line 1543
    return p1

    .line 1546
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCallForwardingOption(IIILjava/lang/String;)I
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 990
    if-nez v0, :cond_0

    .line 991
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid phoneId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 992
    const/4 p1, -0x1

    return p1

    .line 994
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUTProxy()Lcom/android/ims/internal/IImsUt;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 995
    invoke-virtual {p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getCallForwardingOption(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCallType()I
    .locals 1

    .line 1426
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_0

    .line 1427
    const/4 v0, 0x0

    return v0

    .line 1428
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_1

    .line 1429
    const/4 v0, 0x2

    return v0

    .line 1431
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getCallWaitingStatus(I)V
    .locals 3

    .line 1570
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    .line 1571
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingStatus phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1573
    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUtImpl()Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move-result-object p1

    .line 1575
    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallWaitingStatusForVoWifi()I

    .line 1579
    :cond_0
    return-void
.end method

.method public getConfigInterface(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 0

    .line 1029
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object p1

    .line 1030
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCurLocalAddress()Ljava/lang/String;
    .locals 3

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurLocalAddress mIsVolteCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1292
    nop

    .line 1293
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isPrimaryCardVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1299
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v0, :cond_3

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_4

    .line 1301
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1294
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1295
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1296
    if-eqz v0, :cond_3

    .line 1297
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getIMSRegAddress()Ljava/lang/String;

    move-result-object v1

    .line 1299
    :cond_3
    nop

    .line 1304
    :cond_4
    :goto_1
    return-object v1
.end method

.method public getCurPcscfAddress()Ljava/lang/String;
    .locals 3

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurPcscfAddress mIsVolteCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1256
    nop

    .line 1257
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isPrimaryCardVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1263
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v0, :cond_3

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurPcscfAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1258
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1259
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1260
    if-eqz v0, :cond_3

    .line 1261
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsPcscfAddress()Ljava/lang/String;

    move-result-object v1

    .line 1263
    :cond_3
    nop

    .line 1268
    :cond_4
    :goto_1
    return-object v1
.end method

.method public getCurrentImsFeature()I
    .locals 1

    .line 1110
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 1111
    return v0
.end method

.method public getCurrentImsFeatureForPhone(I)I
    .locals 0

    .line 1127
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result p1

    .line 1128
    return p1
.end method

.method public getCurrentImsVideoState()I
    .locals 2

    .line 1314
    nop

    .line 1315
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1317
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentVideoState()I

    move-result v1

    .line 1318
    if-eqz v1, :cond_0

    .line 1319
    return v1

    .line 1315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mCurrentVideoState:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 4747
    new-instance v0, Lcom/spreadtrum/ims/ImsService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/spreadtrum/ims/ImsService$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public getImsCNIInfor()V
    .locals 2

    .line 1601
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1602
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1603
    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsCNIInfo()V

    .line 1606
    :cond_0
    return-void
.end method

.method public getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;
    .locals 2

    .line 4606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsConfig-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4607
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsConfigImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsConfigImpl;

    .line 4608
    return-object p1
.end method

.method public getImsPcscfAddress()Ljava/lang/String;
    .locals 2

    .line 1460
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1461
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1462
    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsPcscfAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1465
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImsRadioInterface(I)Lcom/spreadtrum/ims/ImsRadioInterface;
    .locals 2

    .line 4612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRadioInterface-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4613
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRadioInterfaceArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 4614
    return-object p1
.end method

.method public getImsRegAddress()Ljava/lang/String;
    .locals 3

    .line 1184
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1185
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1186
    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRegAddress->Invalid service id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1188
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1189
    const/4 v0, 0x0

    return-object v0

    .line 1191
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getIMSRegAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .locals 2

    .line 4594
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getImsServiceListenerEx()Lcom/android/ims/internal/IImsServiceListenerEx;
    .locals 1

    .line 3909
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    return-object v0
.end method

.method public getPAU(I)Ljava/lang/String;
    .locals 2

    .line 1473
    const-string v0, ""

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1474
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1475
    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPAU()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1478
    :cond_0
    return-object v0

    .line 1480
    :cond_1
    return-object v0
.end method

.method public getPendingCallSessionInternal(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPendingCallSession-> serviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVolteCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVoWifiEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVoLTEEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 809
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    .line 811
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 812
    :goto_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_4

    .line 814
    :cond_2
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    .line 815
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    .line 816
    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPendingCallSession-> session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 821
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 822
    const-string v0, "Volte unknow call"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 823
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    .line 824
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1

    .line 826
    :cond_3
    return-object v0

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 830
    if-eqz v0, :cond_8

    if-nez p2, :cond_5

    goto :goto_1

    .line 834
    :cond_5
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTEEnabled(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez p1, :cond_7

    .line 836
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    .line 838
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingCallSession->service.getPendingCallSession(callId): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 839
    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1

    .line 831
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid arguments "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 832
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRegistration(I)Lcom/spreadtrum/ims/ImsRegistrationImpl;
    .locals 2

    .line 4599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4600
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsRegistrationImpl;

    .line 4601
    return-object p1
.end method

.method public getSipTransport(I)Lcom/spreadtrum/ims/sip/SipTransportImpl;
    .locals 2

    .line 4619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSipTransport-> slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4620
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mSipTransportImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/sip/SipTransportImpl;

    .line 4621
    return-object p1
.end method

.method public getVoWifiServiceId()I
    .locals 3

    .line 4257
    nop

    .line 4259
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4260
    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    goto :goto_0

    .line 4261
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    .line 4262
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4263
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mVowifiAttachedServiceId:I

    goto :goto_0

    .line 4266
    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    .line 4267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoWifiServiceId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4270
    :cond_2
    return v0
.end method

.method public getVolteRegisterState()I
    .locals 1

    .line 1396
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    .line 1397
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->getVolteRegisterStateForPhone(I)I

    move-result v0

    .line 1398
    return v0
.end method

.method public getVolteRegisterStateForPhone(I)I
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1409
    nop

    .line 1410
    if-nez p1, :cond_0

    .line 1411
    const-string p1, "getVolteRegisterStateForPhone->ImsServiceImpl is null"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1412
    const/4 p1, -0x1

    return p1

    .line 1415
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result p1

    goto :goto_0

    .line 1418
    :cond_1
    const/4 p1, 0x0

    .line 1421
    :goto_0
    return p1
.end method

.method public isImsEnabled()Z
    .locals 2

    .line 2375
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 2376
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrimaryCardVoLTEEnabled()Z
    .locals 1

    .line 2386
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 2387
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRadioSupportImsService(I)Z
    .locals 0

    .line 4321
    nop

    .line 4322
    sparse-switch p1, :sswitch_data_0

    .line 4331
    const/4 p1, 0x0

    goto :goto_0

    .line 4327
    :sswitch_0
    const/4 p1, 0x1

    .line 4328
    nop

    .line 4334
    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSupportMobike()Z
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->isSupportMobike()Z

    move-result v0

    return v0
.end method

.method public isVoLTEEnabled(I)Z
    .locals 0

    .line 2393
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result p1

    .line 2394
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVoWifiAttached()Z
    .locals 1

    .line 1138
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    return v0
.end method

.method public isVoWifiEnabled()Z
    .locals 2

    .line 2380
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getPrimaryCardImsFeature()I

    move-result v0

    .line 2381
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVolteCall()Z
    .locals 1

    .line 3905
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    return v0
.end method

.method public isVowifiCall()Z
    .locals 1

    .line 3901
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    return v0
.end method

.method public notifyCPVowifiAttachSucceed()V
    .locals 2

    .line 3943
    const-string v0, "EVENT_NOTIFY_CP_VOWIFI_ATTACH_SUCCESSED-> notifyImsHandoverStatus:5"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3945
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3946
    if-eqz v0, :cond_0

    .line 3947
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsHandoverStatus(I)V

    .line 3949
    :cond_0
    return-void
.end method

.method public notifyCpCallEnd()V
    .locals 5

    .line 3952
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    .line 3953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCpCallEnd->mCallEndType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " primaryPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInCallPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsCalling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3956
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    if-eq v1, v0, :cond_7

    .line 3957
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3958
    if-eqz v0, :cond_6

    .line 3959
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsCallEnd(I)V

    .line 3961
    const/4 v1, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v3, :cond_2

    .line 3962
    nop

    .line 3963
    iget v4, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    if-ne v4, v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 3964
    :cond_1
    move v4, v1

    .line 3963
    :goto_0
    invoke-interface {v3, v4}, Lcom/android/ims/internal/IImsServiceListenerEx;->imsCallEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3968
    :cond_2
    goto :goto_1

    .line 3966
    :catch_0
    move-exception v3

    .line 3967
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3969
    :goto_1
    iput v2, p0, Lcom/spreadtrum/ims/ImsService;->mCallEndType:I

    .line 3970
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 3971
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v2

    .line 3972
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3973
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 3974
    :cond_3
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 3975
    :cond_4
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 3977
    :cond_5
    goto :goto_2

    .line 3979
    :cond_6
    const-string v0, "notifyCpCallEnd->notifyImsCallEnd-> ImsServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 3982
    :cond_7
    :goto_2
    return-void
.end method

.method public notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0

    .line 1651
    invoke-virtual {p0, p1, p2, p3}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1652
    return-void
.end method

.method public notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 4

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyImsEvent->eventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ssNotification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1836
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 1837
    const-string p1, "notifyImsEvent, Listener not registered."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1838
    return-void

    .line 1840
    :cond_0
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p3

    .line 1841
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/android/ims/internal/IImsEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1848
    :sswitch_0
    :try_start_1
    invoke-interface {v1, p2}, Lcom/android/ims/internal/IImsEventListener;->onImsCallEvent(I)V

    .line 1849
    goto :goto_1

    .line 1845
    :sswitch_1
    invoke-interface {v1, p2}, Lcom/android/ims/internal/IImsEventListener;->onImsRegisterEvent(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    goto :goto_1

    .line 1863
    :catch_0
    move-exception v2

    .line 1864
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1865
    goto :goto_0

    .line 1860
    :catch_1
    move-exception v2

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeadObjectException : l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1862
    goto :goto_0

    .line 1866
    :goto_1
    nop

    .line 1867
    goto :goto_0

    .line 1868
    :cond_1
    monitor-exit p3

    .line 1869
    return-void

    .line 1868
    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyImsRegisterState()V
    .locals 7

    .line 1954
    nop

    .line 1955
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1956
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1957
    if-eqz v3, :cond_2

    .line 1958
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->getCurrentImsFeature()I

    move-result v4

    .line 1959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " notifyImsRegisterState() -> serviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " imsFeature:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1960
    if-nez v2, :cond_1

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    if-ne v4, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 1955
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " notifyImsRegisterState() -> isImsRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1972
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/IImsRegisterListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    :try_start_1
    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegisterListener;->imsRegisterStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1980
    goto :goto_4

    .line 1978
    :catch_0
    move-exception v4

    .line 1979
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException : l = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1981
    :goto_4
    goto :goto_3

    .line 1975
    :catch_1
    move-exception v4

    .line 1976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeadObjectException : l = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1977
    goto :goto_3

    .line 1982
    :cond_4
    monitor-exit v0

    .line 1983
    return-void

    .line 1982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyImsRegistration(IZZ)V
    .locals 1

    .line 4631
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsRegistrationImpl;

    invoke-virtual {p1, p2, p3}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->notifyImsRegistration(ZZ)V

    .line 4632
    return-void
.end method

.method public notifyMmsTranportStateChange(IZ)V
    .locals 2

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMmsTranportStateChange slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRetrySend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsService;->onMmsTransportStateChange(IZ)V

    .line 1829
    return-void
.end method

.method public notifyNetworkUnavailable()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1098
    return-void
.end method

.method public notifySrvccCallInfos(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1440
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1441
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 1442
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1443
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1444
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/ImsSrvccCallInfo;

    invoke-virtual {v3}, Lcom/android/ims/internal/ImsSrvccCallInfo;->toAtCommands()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1446
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1449
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySrvccCallInfos->commands:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyHandoverCallInfo(Ljava/lang/String;)V

    .line 1453
    :cond_2
    return-void
.end method

.method public notifySrvccCapbility(I)V
    .locals 1

    .line 4107
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_1

    .line 4108
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->setSRVCCSupport(Z)V

    .line 4110
    :cond_1
    return-void
.end method

.method public notifySrvccState(II)V
    .locals 3

    .line 4113
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    .line 4114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySrvccState->phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " primaryPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4116
    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 4117
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSRVCCStateChanged(I)V

    .line 4118
    if-ne p2, v1, :cond_0

    .line 4119
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 4120
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 4121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    .line 4122
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-eqz p2, :cond_0

    .line 4123
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    .line 4126
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature()V

    .line 4128
    :cond_1
    return-void
.end method

.method public notifyVideoCapabilityChange()V
    .locals 4

    .line 1558
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->removeMessages(I)V

    .line 1559
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    .line 1560
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1559
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1561
    return-void
.end method

.method public notifyVoWiFiAttachState(II)V
    .locals 0

    .line 1752
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAttachStateChange(II)V

    .line 1753
    return-void
.end method

.method public notifyVoWiFiAttachStateChange(II)V
    .locals 5

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiAttachStateChange->slotId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pdnState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1899
    const-string p1, "notifyVoWiFiAttachStateChange, Callback not registered."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1900
    return-void

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IVoWiFiAttachCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IVoWiFiAttachCallback;->onVoWiFiAttachStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1912
    nop

    .line 1913
    goto :goto_0

    .line 1909
    :catch_0
    move-exception v3

    .line 1910
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVoWiFiAttachStateChange NullPointerException,callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1911
    goto :goto_0

    .line 1906
    :catch_1
    move-exception v3

    .line 1907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVoWiFiAttachStateChange DeadObjectException,callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1908
    goto :goto_0

    .line 1914
    :cond_1
    monitor-exit v0

    .line 1915
    return-void

    .line 1914
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyVoWiFiAvailable(I)V
    .locals 1

    .line 1698
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 1699
    return-void
.end method

.method public notifyVoWiFiAvailableState(IZ)V
    .locals 5

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiAvailableState->slotId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iwlanAvaliable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1874
    const-string p1, "notifyVoWiFiAvailableState, Callback not registered."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1875
    return-void

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1878
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    if-eqz p2, :cond_1

    .line 1881
    :try_start_1
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->onVoWiFiAvailable(I)V

    goto :goto_1

    .line 1883
    :cond_1
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->onVoWiFiUnavailable(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    :goto_1
    nop

    .line 1892
    goto :goto_0

    .line 1888
    :catch_0
    move-exception v3

    .line 1889
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVoWiFiAvailableState NullPointerException : callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1890
    goto :goto_0

    .line 1885
    :catch_1
    move-exception v3

    .line 1886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVoWiFiAvailableState DeadObjectException : callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1887
    goto :goto_0

    .line 1893
    :cond_2
    monitor-exit v0

    .line 1894
    return-void

    .line 1893
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyVoWiFiUnavailable(I)V
    .locals 1

    .line 1706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/ImsService;->notifyVoWiFiAvailableState(IZ)V

    .line 1707
    return-void
.end method

.method public notifyVoWifiAttachStateChange(II)V
    .locals 4

    .line 4677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWifiAttachStateChange -> slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4678
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IIwlanAttachActionListener;

    .line 4680
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IIwlanAttachActionListener;->onVoWifiAttachStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4686
    goto :goto_1

    .line 4684
    :catch_0
    move-exception v2

    .line 4685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4687
    :goto_1
    goto :goto_0

    .line 4681
    :catch_1
    move-exception v2

    .line 4682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeadObjectException : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4683
    goto :goto_0

    .line 4688
    :cond_0
    return-void
.end method

.method public notifyWiFiError(I)V
    .locals 1

    .line 3891
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 3892
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onVoWiFiError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3896
    :cond_0
    goto :goto_0

    .line 3894
    :catch_0
    move-exception p1

    .line 3895
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3897
    :goto_0
    return-void
.end method

.method public onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;
    .locals 8

    .line 1758
    const-string v0, "onAuthenticationRequest"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1759
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mGbaHandler:Lcom/spreadtrum/ims/gba/GbaHandler;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/gba/GbaHandler;->onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;

    move-result-object p1

    return-object p1
.end method

.method public onCallWaitingStatusUpdateForVoWifi(I)V
    .locals 2

    .line 4181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallWaitingStatusUpdateForVoWifi, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4182
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gsm.ss.call_waiting"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    return-void
.end method

.method public onGetCpImsStatckVersion(I)V
    .locals 2

    .line 4720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp imsVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ap isSingleStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4721
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4722
    :goto_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    if-eq p1, v0, :cond_1

    .line 4723
    const-string p1, "onGetCpImsStatckVersion: invalid ims stack version"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4725
    :cond_1
    return-void
.end method

.method public onImsCNIInfoChange(ILjava/lang/String;I)V
    .locals 2

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsPaniInfoChange-> type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4315
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->notifyImsCNIInfo(ILjava/lang/String;I)V

    .line 4316
    return-void
.end method

.method public onImsCallEnd(I)V
    .locals 0

    .line 3871
    return-void
.end method

.method public onImsHandoverStateChange(ZI)V
    .locals 8

    .line 3561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsHandoverStateChange->allow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3563
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-nez v0, :cond_0

    .line 3564
    const-string p1, "onImsHandoverStateChange->there is no handover request active!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 3565
    return-void

    .line 3568
    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-nez p1, :cond_5

    .line 3569
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_4

    .line 3570
    iget p1, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Do not allow."

    if-nez p1, :cond_2

    .line 3571
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3575
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 3576
    :cond_1
    const/4 v4, 0x3

    .line 3572
    :goto_0
    invoke-interface {p1, v0, p2, v4}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V

    goto :goto_2

    .line 3578
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3582
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v4, v4, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v4, v3, :cond_3

    goto :goto_1

    .line 3583
    :cond_3
    const/4 v1, 0x7

    .line 3579
    :goto_1
    invoke-interface {p1, v0, p2, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V

    .line 3585
    :goto_2
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    goto/16 :goto_4

    .line 3587
    :cond_4
    const-string p1, "onImsHandoverStateChange->mImsServiceListenerEx is null!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3655
    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 3589
    :cond_5
    iget p1, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    const-string v5, "persist.sys.s2b.enabled"

    const/16 v6, 0x3e7

    const/4 v7, 0x2

    if-ne p1, v3, :cond_b

    .line 3590
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez p1, :cond_8

    .line 3591
    if-eq p2, v7, :cond_6

    if-nez p2, :cond_13

    .line 3593
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_7

    .line 3594
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p2, p2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    const-string v0, "VOLTE pdn failed."

    .line 3595
    invoke-interface {p1, p2, v0, v4}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V

    .line 3600
    :cond_7
    iput-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    goto/16 :goto_4

    .line 3602
    :cond_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne p1, v7, :cond_13

    .line 3603
    if-ne p2, v6, :cond_13

    .line 3604
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3605
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p2, p2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne p2, v3, :cond_9

    move v4, v0

    :cond_9
    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->attach(Z)V

    goto/16 :goto_4

    .line 3607
    :cond_a
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    goto/16 :goto_4

    .line 3611
    :cond_b
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v2, 0x65

    if-ne p1, v2, :cond_13

    .line 3612
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez p1, :cond_f

    .line 3613
    if-eq p2, v7, :cond_e

    if-nez p2, :cond_c

    goto :goto_3

    .line 3633
    :cond_c
    if-ne p2, v1, :cond_13

    .line 3634
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_d

    .line 3635
    invoke-interface {p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onSrvccFaild()V

    .line 3637
    :cond_d
    const-string p1, "onImsHandoverStateChange->IMS_HANDOVER_SRVCC_FAILED."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 3632
    :cond_e
    :goto_3
    const-string p1, "onImsHandoverStateChange->ACTION_START_HANDOVER fail!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 3639
    :cond_f
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne p1, v7, :cond_13

    .line 3640
    if-ne p2, v6, :cond_13

    .line 3641
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3644
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiLocalAddr:Ljava/lang/String;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_11

    .line 3645
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onImsHandoverStateChange->Handover to VoWifi, null VoWifi local addr, mIsVolteCall: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3646
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz p1, :cond_11

    .line 3647
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateVoWifiLocalAddr()V

    .line 3651
    :cond_11
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p2, p2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne p2, v3, :cond_12

    move v4, v0

    :cond_12
    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->attach(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3657
    :cond_13
    :goto_4
    goto :goto_6

    .line 3656
    :goto_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3658
    :goto_6
    return-void
.end method

.method public onImsNetworkInfoChange(ILjava/lang/String;)V
    .locals 3

    .line 3874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsNetworkInfoChange->type:"

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

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3875
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_0

    .line 3876
    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    .line 3877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsNetworkInfoChange->mFSR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3878
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentImsFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3877
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsNetworkInfoChange->type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3882
    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkType:I

    .line 3883
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mNetworkInfo:Ljava/lang/String;

    .line 3884
    goto :goto_0

    .line 3885
    :cond_0
    const-string p1, "onImsNetworkInfoChange->mFSR is null."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3887
    :goto_0
    return-void
.end method

.method public onImsPdnStatusChange(II)V
    .locals 9

    .line 3661
    nop

    .line 3663
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const-string v2, " state:"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 3664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsPdnStatusChange->this is secondary card, serviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 3665
    if-ne p2, v3, :cond_0

    .line 3666
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3667
    if-eqz p1, :cond_0

    .line 3668
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->enableImsWhenPDNReady()V

    .line 3671
    :cond_0
    return-void

    .line 3674
    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    if-ne p2, v3, :cond_2

    .line 3675
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    .line 3676
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    .line 3677
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 3678
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v5}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onVoLTEPDNActivated()V

    move v5, v4

    goto :goto_1

    .line 3680
    :cond_2
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    .line 3682
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 3683
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3682
    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    .line 3684
    :goto_0
    if-eqz p2, :cond_4

    if-eqz v5, :cond_7

    .line 3685
    :cond_4
    iget-boolean v6, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-nez v6, :cond_6

    .line 3687
    :cond_5
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v7, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 3688
    invoke-static {v7}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3689
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v7, :cond_6

    .line 3691
    invoke-virtual {v6, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setIMSRegAddress(Ljava/lang/String;)V

    .line 3694
    :cond_6
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    .line 3697
    :cond_7
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImsPdnStatusChange->serviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mFeatureSwitchRequitchRequest:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mIsCalling:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mIsCPImsPdnActived:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/spreadtrum/ims/ImsService;->mIsCPImsPdnActived:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mIsAPImsPdnActived:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " mWifiRegistered:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " volteRegistered:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3703
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " mPCPmanage:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mPendingCPSelfManagement:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " mPPdnOk:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " isAirplaneModeOn:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mInCallHOF:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3697
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3709
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 3710
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v2

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_8

    .line 3711
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    invoke-interface {v2, p2}, Lcom/android/ims/internal/IImsServiceListenerEx;->imsPdnStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3715
    :cond_8
    goto :goto_2

    .line 3713
    :catch_0
    move-exception v2

    .line 3714
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3717
    :goto_2
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    const/4 v5, -0x1

    if-nez v2, :cond_b

    if-ne p2, v3, :cond_b

    .line 3719
    nop

    .line 3720
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3721
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    goto :goto_3

    .line 3723
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3725
    :goto_3
    if-eqz p1, :cond_1a

    .line 3727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsPdnStatusChange->mIsPRegVoLTE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " service.isImsRegistered():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 3730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsPdnStatusChange->mIsVolteCall:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mIsVowifiCall:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 3734
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsAPImsPdnActived:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_a

    .line 3735
    const-string v0, "Switch request is null, but the pdn start, will enable the ims."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 3736
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->enableImsWhenPDNReady()V

    goto/16 :goto_b

    .line 3737
    :cond_a
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    if-eq v0, v5, :cond_1a

    if-eq v0, v1, :cond_1a

    .line 3738
    const-string v0, "other sim  pdn start, will enable the ims."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->enableImsWhenPDNReady()V

    goto/16 :goto_b

    .line 3743
    :cond_b
    if-eqz v2, :cond_1a

    iget v1, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v1, :cond_1a

    .line 3745
    const/4 v1, 0x3

    const/16 v2, 0x65

    if-nez p2, :cond_12

    .line 3746
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_d

    .line 3748
    :try_start_1
    const-string p1, "onImsPdnStatusChange -> operationFailed"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3749
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v6, v6, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    const-string v7, "VOLTE pdn failed."

    .line 3753
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v8, v8, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v8, v2, :cond_c

    goto :goto_4

    .line 3754
    :cond_c
    move v1, v3

    .line 3750
    :goto_4
    invoke-interface {p1, v6, v7, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 3755
    :catch_1
    move-exception p1

    .line 3756
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3757
    :goto_5
    goto :goto_6

    .line 3759
    :cond_d
    const-string p1, "onImsPdnStatusChange->mImsServiceListenerEx is null!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 3762
    :goto_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget p1, p1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne p1, v2, :cond_11

    .line 3763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsPdnStatusChange -> mIsCalling: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "mIsPRegVoLTE:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "mIsVolteCall: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3764
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez p1, :cond_f

    .line 3765
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    .line 3766
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3768
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    xor-int/2addr p1, v3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    xor-int/2addr v1, v3

    and-int/2addr p1, v1

    if-eqz p1, :cond_e

    .line 3769
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    .line 3770
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsLoggingIn:Z

    .line 3772
    :cond_e
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    goto :goto_7

    .line 3773
    :cond_f
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mAttachVowifiSuccess:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    if-nez p1, :cond_10

    .line 3774
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVowifi:Z

    goto :goto_7

    .line 3776
    :cond_10
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    goto :goto_7

    .line 3779
    :cond_11
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    .line 3782
    :goto_7
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    goto/16 :goto_c

    .line 3783
    :cond_12
    if-ne p2, v3, :cond_1b

    .line 3784
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v6, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3785
    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v6, v6, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_13

    .line 3786
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->turnOnIms()V

    .line 3787
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz p1, :cond_1b

    .line 3789
    :try_start_2
    const-string p1, "onImsPdnStatusChange -> operationSuccessed-> IMS_OPERATION_SWITCH_TO_VOLTE"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3790
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3791
    invoke-interface {p1, v0, v3}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    .line 3794
    :catch_2
    move-exception p1

    .line 3795
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3796
    :goto_8
    goto/16 :goto_c

    .line 3798
    :cond_13
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v0, v2, :cond_1b

    .line 3799
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    .line 3801
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    const-string v6, "onImsPdnStatusChange -> operationSuccessed-> IMS_OPERATION_HANDOVER_TO_VOLTE"

    if-eqz v2, :cond_17

    .line 3802
    iput v4, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3803
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    .line 3804
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 3805
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v2, :cond_15

    .line 3807
    :try_start_3
    invoke-static {v6}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3808
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v6, v6, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3809
    invoke-interface {v2, v6, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V

    .line 3812
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 3813
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->showHandoverSuccessToast(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3817
    :cond_14
    goto :goto_9

    .line 3815
    :catch_3
    move-exception p1

    .line 3816
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3819
    :cond_15
    :goto_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deattach(Z)V

    .line 3820
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    .line 3821
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3822
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz p1, :cond_1b

    .line 3823
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    .line 3824
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3825
    if-eqz p1, :cond_16

    .line 3826
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->disableWiFiParamReport()V

    .line 3828
    :cond_16
    goto :goto_c

    .line 3830
    :cond_17
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsPendingRegisterVolte:Z

    .line 3831
    iput v4, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3832
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsPdnStatusChange -> currentImsFeature:0 mIsCalling:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3837
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_18

    .line 3839
    :try_start_4
    invoke-static {v6}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3840
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mFeatureSwitchRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 3841
    invoke-interface {v0, v2, v1}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3846
    goto :goto_a

    .line 3844
    :catch_4
    move-exception v0

    .line 3845
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3848
    :cond_18
    :goto_a
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deattach(Z)V

    .line 3849
    iput-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mPendingActivePdnSuccess:Z

    .line 3850
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3851
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mPendingVolteHandoverVolteSuccess:Z

    .line 3853
    :cond_19
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 3854
    iput v5, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    goto :goto_c

    .line 3743
    :cond_1a
    :goto_b
    nop

    .line 3861
    :cond_1b
    :goto_c
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    .line 3864
    const-string p1, "onImsPdnStatusChange -> handvoer to Volte failed,set mInCallHOF unknow"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3865
    iput v5, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    .line 3866
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature()V

    .line 3868
    :cond_1c
    return-void
.end method

.method public onMmsTransportStateChange(IZ)V
    .locals 4

    .line 4691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMmsTransportStateChange slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRetrySend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4692
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IIwlanMmsActionListener;

    .line 4694
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IIwlanMmsActionListener;->onMmsTransportStateChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4700
    goto :goto_1

    .line 4698
    :catch_0
    move-exception v2

    .line 4699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4701
    :goto_1
    goto :goto_0

    .line 4695
    :catch_1
    move-exception v2

    .line 4696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeadObjectException : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4697
    goto :goto_0

    .line 4702
    :cond_0
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 2

    .line 4131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStateChanged videoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4132
    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mCurrentVideoState:I

    .line 4134
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 4135
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onVideoStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4139
    :cond_0
    goto :goto_0

    .line 4137
    :catch_0
    move-exception p1

    .line 4138
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4140
    :goto_0
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 4557
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 4558
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 4559
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 4560
    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 4558
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4562
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public registerIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 3

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerIwlanAttachActionListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1766
    if-nez p1, :cond_0

    .line 1767
    return-void

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1771
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1772
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1774
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

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1776
    :goto_0
    monitor-exit v0

    .line 1777
    return-void

    .line 1776
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 3

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerIwlanMmsActionListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1797
    if-nez p1, :cond_0

    .line 1798
    return-void

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1802
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1803
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1805
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

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1807
    :goto_0
    monitor-exit v0

    .line 1808
    return-void

    .line 1807
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 3

    .line 1211
    if-nez p1, :cond_0

    .line 1212
    const-string p1, "registerforImsRegisterStateChanged->Listener is null!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1213
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1214
    return-void

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1217
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1218
    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegisterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1217
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1219
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegisterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v1, " registerforImsRegisterStateChanged() -> notifyListenerWhenRegister"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->notifyListenerWhenRegister(Lcom/android/ims/internal/IImsRegisterListener;)V

    goto :goto_0

    .line 1223
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

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1225
    :goto_0
    monitor-exit v0

    .line 1226
    return-void

    .line 1225
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 3

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerforVoWiFiAttachStateChanged->callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1716
    if-nez p1, :cond_0

    .line 1717
    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1720
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1721
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1723
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerforVoWiFiAttachStateChanged already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1725
    :goto_0
    monitor-exit v0

    .line 1726
    return-void

    .line 1725
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 3

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerforVoWiFiAvailabilityChanged->callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1662
    if-nez p1, :cond_0

    .line 1663
    return-void

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1666
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1669
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIVoWiFiAvailabilityCallbacks already add :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1671
    :goto_0
    monitor-exit v0

    .line 1672
    return-void

    .line 1671
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public releaseVoWifiResource()I
    .locals 4

    .line 1155
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getReuestId()I

    move-result v0

    .line 1156
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v2, 0x69

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1157
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1158
    return v0
.end method

.method public removeImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 3

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeImsEventListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1633
    if-nez p1, :cond_0

    .line 1634
    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1637
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1638
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIImsEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1640
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1642
    :goto_0
    monitor-exit v0

    .line 1643
    return-void

    .line 1642
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeImsFeature(IIZ)V
    .locals 3

    .line 891
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeImsFeature-> slotId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " featureType:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 892
    iget-object p3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    monitor-enter p3

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "removeImsFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 896
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 897
    if-nez v1, :cond_0

    .line 898
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 900
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 902
    :cond_0
    :try_start_3
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 903
    if-nez v2, :cond_1

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " exists on slot "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 906
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 908
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 909
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 910
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 911
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 912
    return-void

    .line 910
    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    .line 911
    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    .line 4541
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4543
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4544
    if-nez v1, :cond_0

    .line 4545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not remove ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 4546
    monitor-exit v0

    return-void

    .line 4548
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    .line 4549
    if-eqz p1, :cond_1

    .line 4550
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 4552
    :cond_1
    monitor-exit v0

    .line 4553
    return-void

    .line 4552
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 1

    .line 1520
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1525
    if-eqz p1, :cond_1

    .line 1526
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->removeImsPdnStateListener(Lcom/android/ims/internal/IImsPdnStateListener;)V

    .line 1528
    :cond_1
    return-void

    .line 1521
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeImsPdnStateListener->slotId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method public setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I
    .locals 7

    .line 970
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 972
    if-nez v0, :cond_0

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid phoneId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 974
    const/4 p1, -0x1

    return p1

    .line 976
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUTProxy()Lcom/android/ims/internal/IImsUt;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 977
    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCallType(I)V
    .locals 2

    .line 1035
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1036
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    goto :goto_0

    .line 1037
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1038
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    .line 1040
    :cond_1
    :goto_0
    return-void
.end method

.method public setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    .line 1148
    return-void
.end method

.method public setInCallPhoneId(I)V
    .locals 0

    .line 1043
    iput p1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    .line 1044
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 2

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsService-> setListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 846
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mIImsServiceControllerListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    .line 847
    return-void
.end method

.method public setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1006
    if-nez v0, :cond_0

    .line 1007
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid phoneId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1008
    return-void

    .line 1010
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getUTProxy()Lcom/android/ims/internal/IImsUt;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    .line 1011
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V

    .line 1012
    return-void
.end method

.method public setMonitorPeriodForNoData(I)V
    .locals 0

    .line 1277
    return-void
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 4462
    nop

    .line 4463
    nop

    .line 4464
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4466
    const-string v1, ""

    if-nez p3, :cond_0

    .line 4467
    move-object p3, v1

    .line 4469
    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x20

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 4470
    const-string v2, ","

    if-eqz v0, :cond_1

    .line 4471
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4470
    :cond_1
    const/4 v3, 0x0

    .line 4474
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    const-string v5, " value: "

    const-string v6, " property="

    if-nez v4, :cond_2

    .line 4475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " prop="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4477
    return-void

    .line 4480
    :cond_2
    const/4 v0, 0x0

    move-object v4, v1

    :goto_1
    if-ge v0, p1, :cond_4

    .line 4481
    nop

    .line 4482
    if-eqz v3, :cond_3

    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 4483
    aget-object v7, v3, v0

    goto :goto_2

    .line 4485
    :cond_3
    move-object v7, v1

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4488
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4489
    if-eqz v3, :cond_5

    .line 4490
    add-int/lit8 v1, p1, 0x1

    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 4491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4490
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4495
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4497
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4500
    goto :goto_4

    .line 4498
    :catch_0
    move-exception v2

    .line 4499
    const-string v2, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4501
    :goto_4
    const/16 v2, 0x5b

    if-le v1, v2, :cond_6

    .line 4502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " propVal="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4504
    return-void

    .line 4507
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    return-void
.end method

.method public setVoWifiLocalAddr(Ljava/lang/String;)V
    .locals 1

    .line 2453
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_0

    .line 2454
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->setUsedLocalAddr(Ljava/lang/String;)V

    .line 2456
    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiLocalAddr:Ljava/lang/String;

    .line 2457
    return-void
.end method

.method public setVoWifiUnavailable(IZ)I
    .locals 3

    .line 1168
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsSingleImsStack:Z

    if-eqz v0, :cond_0

    .line 1169
    const-string p1, "Cp VoWiFi solution does not support\'setVoWifiUnavailable\'."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1170
    const/4 p1, -0x1

    return p1

    .line 1173
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getReuestId()I

    move-result v0

    .line 1174
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v2, 0x67

    .line 1175
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1174
    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1175
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1176
    return v0
.end method

.method public setVowifiRegister(I)V
    .locals 1

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceListenerEx:Lcom/android/ims/internal/IImsServiceListenerEx;

    if-eqz v0, :cond_0

    .line 1491
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceListenerEx;->onSetVowifiRegister(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :cond_0
    goto :goto_0

    .line 1493
    :catch_0
    move-exception p1

    .line 1494
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1496
    :goto_0
    return-void
.end method

.method public showHandoverSuccessToast(I)V
    .locals 2

    .line 4144
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "show_ims_capability_change_toast"

    invoke-static {p1, v1, v0}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    .line 4146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowHandoverSuccessToast :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4147
    if-eqz p1, :cond_0

    .line 4148
    const/16 p1, 0x64

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 4151
    :cond_0
    return-void
.end method

.method public showVowifiNotification()V
    .locals 3

    .line 1281
    const-string v0, "showVowifiNotification"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1282
    const/16 v0, 0x64

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1284
    return-void
.end method

.method public startHandover(I)I
    .locals 3

    .line 1085
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getReuestId()I

    move-result v0

    .line 1086
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1087
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    return v0
.end method

.method public startMobike()V
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->startMobike()V

    .line 1587
    return-void
.end method

.method public switchImsFeature(I)I
    .locals 3

    .line 1058
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 1059
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->isVoLTERegisted(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1061
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Needn\'t switch to type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as it already registed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1063
    return v1

    .line 1064
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mReleaseVowifiRequest:Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cann\'t switch to type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as release or cancel vowifi action ongoing."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1067
    return v1

    .line 1069
    :cond_3
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsService;->getReuestId()I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mHandler:Lcom/spreadtrum/ims/ImsService$ImsHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    return v0
.end method

.method public terminateAllCalls(I)V
    .locals 2

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminateAllCalls->mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wifiState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3919
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3920
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 3921
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 3920
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 3922
    if-eqz p1, :cond_0

    .line 3923
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->terminateVolteCall()V

    goto :goto_1

    .line 3925
    :cond_0
    const-string p1, "terminateAllCalls->ImsServiceImpl is null."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 3927
    :cond_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_4

    .line 3929
    if-ne p1, v1, :cond_2

    .line 3930
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    goto :goto_0

    .line 3932
    :cond_2
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    .line 3934
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v0, :cond_3

    .line 3935
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    goto :goto_2

    .line 3937
    :cond_3
    const-string p1, "terminateAllCalls->VowifiServiceImpl is null."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 3927
    :cond_4
    :goto_1
    nop

    .line 3940
    :goto_2
    return-void
.end method

.method public unregisterIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 3

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterIwlanAttachActionListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1782
    if-nez p1, :cond_0

    .line 1783
    return-void

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1787
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanAttachActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanAttachActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1789
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1791
    :goto_0
    monitor-exit v0

    .line 1792
    return-void

    .line 1791
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 3

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterIwlanMmsActionListener->Listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1813
    if-nez p1, :cond_0

    .line 1814
    return-void

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1818
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIwlanMmsActionListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IIwlanMmsActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1820
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1822
    :goto_0
    monitor-exit v0

    .line 1823
    return-void

    .line 1822
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 3

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterVoWiFiAttachStateChanged->callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1735
    if-nez p1, :cond_0

    .line 1736
    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1739
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1740
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAttachCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1742
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVoWiFiAttachStateChanged callBack not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1744
    :goto_0
    monitor-exit v0

    .line 1745
    return-void

    .line 1744
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 3

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterVoWiFiAvailabilityChanged->callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 1681
    if-nez p1, :cond_0

    .line 1682
    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1685
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1686
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mIVoWiFiAvailabilityCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1688
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVoWiFiAvailabilityChanged callBack not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1690
    :goto_0
    monitor-exit v0

    .line 1691
    return-void

    .line 1690
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 3

    .line 1234
    if-nez p1, :cond_0

    .line 1235
    const-string p1, "unregisterforImsRegisterStateChanged->Listener is null!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1236
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1237
    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1241
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1242
    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegisterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsRegisterListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1245
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1247
    :goto_0
    monitor-exit v0

    .line 1248
    return-void

    .line 1247
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateCLIRStatus(I)I
    .locals 2

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIRStatus action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 1552
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gsm.ss.clir"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const/4 p1, 0x1

    return p1
.end method

.method public updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 3

    .line 4512
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 4513
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4514
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4515
    if-eqz v1, :cond_0

    .line 4516
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 4518
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallRatState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " serviceId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4519
    return-void
.end method

.method public updateImsFeature()V
    .locals 1

    .line 2399
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 2400
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2399
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2401
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2402
    return-void
.end method

.method public updateImsFeature(I)V
    .locals 11

    .line 2461
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2462
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 2463
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegisterState()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 2465
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v4

    .line 2466
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImsFeature --> isPrimaryCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | serviceId-1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " volteRegistered:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " volteAvailable:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " getLTECapability:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2468
    invoke-static {p1, v9}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2466
    invoke-static {v7}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->getVoWifiServiceId()I

    move-result v7

    .line 2472
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    iget v10, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v10}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v10

    add-int/2addr v10, v3

    if-eq v7, v10, :cond_3

    .line 2473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateImsFeature primaryCard is not same as Vowifi service Card, not update. vowifiServiceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2474
    return-void

    .line 2477
    :cond_3
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 2480
    if-eqz v6, :cond_4

    .line 2481
    move v9, v4

    goto :goto_3

    .line 2483
    :cond_4
    nop

    .line 2485
    :goto_3
    invoke-direct {p0, p1, v9}, Lcom/spreadtrum/ims/ImsService;->setCurrentImsFeature(II)V

    .line 2488
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2489
    invoke-virtual {v0, v6, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2490
    invoke-virtual {v0, v6, v6, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsRegister(ZZZ)V

    .line 2491
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegisterState()V

    goto :goto_4

    .line 2492
    :cond_5
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2493
    invoke-virtual {v0, v4, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2495
    :cond_6
    :goto_4
    return-void

    .line 2497
    :cond_7
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->updateImsRegisterState()V

    .line 2498
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v1

    .line 2499
    nop

    .line 2500
    iget v7, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    const/4 v10, 0x2

    if-eq v7, v9, :cond_a

    .line 2501
    if-ne v7, v10, :cond_8

    .line 2502
    nop

    .line 2503
    move v2, v3

    move v9, v10

    goto :goto_5

    .line 2504
    :cond_8
    if-eqz v0, :cond_9

    .line 2505
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSrvccState()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 2506
    nop

    .line 2507
    move v2, v4

    goto :goto_5

    .line 2509
    :cond_9
    nop

    .line 2510
    move v2, v3

    move v9, v4

    goto :goto_5

    .line 2512
    :cond_a
    if-eqz v6, :cond_b

    .line 2513
    nop

    .line 2514
    move v2, v3

    move v9, v4

    goto :goto_5

    .line 2515
    :cond_b
    iget-boolean v6, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    if-eqz v6, :cond_d

    .line 2516
    nop

    .line 2517
    iget v6, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v6}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v6

    if-ne v6, v2, :cond_c

    .line 2518
    move v2, v3

    move v9, v10

    goto :goto_5

    .line 2517
    :cond_c
    move v2, v4

    move v9, v10

    goto :goto_5

    .line 2521
    :cond_d
    nop

    .line 2522
    move v2, v4

    .line 2524
    :goto_5
    if-eqz v0, :cond_12

    .line 2525
    invoke-virtual {v0, v9}, Lcom/spreadtrum/ims/ImsServiceImpl;->setCurrentImsFeature(I)V

    .line 2526
    if-nez v9, :cond_e

    move v6, v3

    goto :goto_6

    :cond_e
    move v6, v4

    :goto_6
    if-ne v9, v10, :cond_f

    move v7, v3

    goto :goto_7

    :cond_f
    move v7, v4

    .line 2527
    :goto_7
    invoke-virtual {v0, v6, v7}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatures(ZZ)V

    .line 2532
    if-ne v9, v10, :cond_10

    .line 2533
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    if-eqz v6, :cond_10

    .line 2534
    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurPcscfAddress()Ljava/lang/String;

    move-result-object v6

    .line 2535
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v7}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getCurLocalAddress()Ljava/lang/String;

    move-result-object v7

    .line 2536
    invoke-virtual {v0, v6}, Lcom/spreadtrum/ims/ImsServiceImpl;->setImsPcscfAddress(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {v0, v7}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyVoWiFiRegAddress(Ljava/lang/String;)V

    .line 2540
    :cond_10
    if-nez v9, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    :goto_8
    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyImsRegister(ZZZ)V

    .line 2541
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->notifyImsRegisterState()V

    .line 2544
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsFeature->mWifiRegistered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mWifiRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " oldImsFeature:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentImsFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInCallHOF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mInCallHandoverFeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2550
    return-void
.end method

.method public updateImsFeatureForAllService()V
    .locals 5

    .line 2405
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2406
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2407
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2408
    if-nez v2, :cond_0

    .line 2409
    goto :goto_1

    .line 2410
    :cond_0
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2411
    invoke-static {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mWifiState:I

    if-nez v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2412
    :cond_2
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2406
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2415
    :cond_4
    monitor-exit v0

    .line 2416
    return-void

    .line 2415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateImsFeatureForDataChange()V
    .locals 5

    .line 2420
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2422
    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    .line 2423
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2424
    if-eqz v2, :cond_0

    .line 2426
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2428
    :cond_0
    nop

    .line 2429
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2430
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2431
    if-eq v3, v1, :cond_1

    .line 2433
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2434
    if-eqz v3, :cond_1

    .line 2435
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->getServiceId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2429
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2439
    :cond_2
    monitor-exit v0

    .line 2440
    return-void

    .line 2439
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateImsRegisterState()V
    .locals 5

    .line 1986
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsRegisterListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1987
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1988
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1989
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegisterState()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->isRadioAvailableForImsService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mVolteAvailable:Z

    .line 1991
    monitor-exit v0

    return-void

    .line 1987
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1994
    :cond_1
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mVolteAvailable:Z

    .line 1995
    monitor-exit v0

    .line 1996
    return-void

    .line 1995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateInCallState(Z)V
    .locals 6

    .line 4039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInCallState->mIsVolteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVowifiCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsWifiCalling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logd(Ljava/lang/String;)V

    .line 4041
    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsService;->getImsFeature(I)I

    move-result v0

    .line 4042
    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    const/4 v4, 0x2

    if-eq v3, p1, :cond_2

    .line 4043
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    .line 4044
    if-eqz p1, :cond_1

    if-ne v0, v4, :cond_0

    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    iget v5, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 4046
    invoke-static {v5}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v5

    if-ne v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    if-eqz v3, :cond_1

    .line 4047
    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->REJECT:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    .line 4048
    invoke-virtual {v3, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V

    goto :goto_0

    .line 4050
    :cond_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    sget-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    .line 4051
    invoke-virtual {v3, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V

    .line 4054
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsEmergencyCallonIms:Z

    const/4 v5, 0x0

    if-nez v3, :cond_3

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-nez v0, :cond_4

    :cond_3
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    if-eqz v0, :cond_6

    .line 4056
    :cond_4
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    .line 4057
    move v0, v5

    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 4058
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4059
    if-eqz v3, :cond_5

    .line 4060
    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyWifiCalling(Z)V

    .line 4057
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4065
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4066
    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    .line 4068
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSrvccState()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 4069
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->setSrvccState(I)V

    .line 4074
    :cond_7
    if-nez p1, :cond_c

    .line 4075
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    if-eqz v0, :cond_8

    .line 4076
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVowifiCall:Z

    goto :goto_2

    .line 4077
    :cond_8
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    if-eqz v0, :cond_9

    .line 4078
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    .line 4081
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    if-eqz v0, :cond_a

    .line 4082
    const-string v0, "updateInCallState->reset mVoWifiSOSAttached"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4083
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mVoWifiSOSAttached:Z

    .line 4086
    :cond_a
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v3, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    .line 4087
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 4086
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4088
    if-eqz v0, :cond_b

    .line 4089
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->disableWiFiParamReport()V

    .line 4092
    :cond_b
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mDeregisterVowifi:Z

    if-eqz v0, :cond_c

    .line 4094
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/ims/internal/IImsServiceEx;->setVowifiRegister(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4097
    goto :goto_3

    .line 4095
    :catch_0
    move-exception v0

    .line 4096
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4098
    :goto_3
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsService;->mDeregisterVowifi:Z

    .line 4102
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInCallState->isInCall:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsWifiCalling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " inCallPhoneId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/ImsService;->mInCallPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mIsVolteCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsService;->mIsVolteCall:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 4105
    return-void
.end method

.method public updateVoWifiLocalAddr()V
    .locals 2

    .line 2445
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spreadtrum/ims/ImsService;->mPhoneCount:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2446
    if-eqz v0, :cond_0

    .line 2448
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getIMSRegAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsService;->setVoWifiLocalAddr(Ljava/lang/String;)V

    .line 2450
    :cond_0
    return-void
.end method

.method public updateWifiCallingState(Z)V
    .locals 2

    .line 4728
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4729
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService;->mImsServiceImplArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4730
    if-eqz v1, :cond_0

    .line 4731
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyWifiCalling(Z)V

    .line 4728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4734
    :cond_1
    return-void
.end method
