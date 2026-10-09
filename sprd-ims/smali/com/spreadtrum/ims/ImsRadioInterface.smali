.class public Lcom/spreadtrum/ims/ImsRadioInterface;
.super Ljava/lang/Object;
.source "ImsRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;,
        Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;,
        Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;
    }
.end annotation


# static fields
.field static final ACK_WAKELOCK_NAME:Ljava/lang/String; = "ACK_WL"

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_AIDL_PROXY_DEAD:I = 0x7

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field public static final GET_RAT_CAP_NV_CONFIG:I = -0x1

.field public static final GET_RAT_CAP_RESULT:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_AIDL_SERVICE:I = 0x1

.field public static final IMS_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field public static final IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field public static final IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final IMS_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final IMS_RADIO_SERVICE:I = 0x0

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final LOGD:Z = true

.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ImsRIL"

.field static final MAX_SERVICE_IDX:I = 0x1

.field public static final MEDIA_REQUEST_AUDIO_RTT_DOWNGRADE_AUDIO:I = 0xc

.field public static final MEDIA_REQUEST_AUDIO_UPGRADE_AUDIO_RTT:I = 0xb

.field public static final MEDIA_REQUEST_AUDIO_UPGRADE_VIDEO_BIDIRECTIONAL:I = 0x1

.field public static final MEDIA_REQUEST_AUDIO_UPGRADE_VIDEO_RX:I = 0x3

.field public static final MEDIA_REQUEST_AUDIO_UPGRADE_VIDEO_TX:I = 0x2

.field public static final MEDIA_REQUEST_DEFAULT:I = 0x0

.field public static final MEDIA_REQUEST_VIDEO_BIDIRECTIONAL_DOWNGRADE_AUDIO:I = 0x6

.field public static final MEDIA_REQUEST_VIDEO_BIDIRECTIONAL_DOWNGRADE_VIDEO_RX:I = 0xa

.field public static final MEDIA_REQUEST_VIDEO_BIDIRECTIONAL_DOWNGRADE_VIDEO_TX:I = 0x9

.field public static final MEDIA_REQUEST_VIDEO_RX_DOWNGRADE_AUDIO:I = 0x8

.field public static final MEDIA_REQUEST_VIDEO_RX_UPGRADE_VIDEO_BIDIRECTIONAL:I = 0x5

.field public static final MEDIA_REQUEST_VIDEO_TX_DOWNGRADE_AUDIO:I = 0x7

.field public static final MEDIA_REQUEST_VIDEO_TX_UPGRADE_VIDEO_BIDIRECTIONAL:I = 0x4

.field static final MIN_SERVICE_IDX:I = 0x0

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final WAKELOCK_TAG:Ljava/lang/String; = "*unisoc-ims-radio*"

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAIDLProxyDeathRecipients:Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;

.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private final mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

.field mImsAidlServiceIndication:Lcom/spreadtrum/ims/ImsAidlServiceIndication;

.field mImsAidlServiceResponse:Lcom/spreadtrum/ims/ImsAidlServiceResponse;

.field protected mImsBearerStateRegistrants:Landroid/os/RegistrantList;

.field protected mImsCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

.field protected mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

.field protected mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field private mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

.field protected mImsRegAddressRegistrant:Landroid/os/RegistrantList;

.field protected mImsVideoQosRegistrant:Landroid/os/RegistrantList;

.field protected mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field mRadioIndication:Lcom/spreadtrum/ims/ImsRadioIndication;

.field volatile mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

.field final mRadioProxyDeathRecipient:Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/spreadtrum/ims/ImsRadioResponse;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mRilConnectedRegistrants:Landroid/os/RegistrantList;

.field final mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

.field private final mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrants:Landroid/os/RegistrantList;

.field protected mState:I

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

.field protected mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

.field protected mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

.field protected mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

.field protected mUnsolResourceTerminated:Landroid/os/RegistrantList;

.field protected mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolTerminated:Landroid/os/RegistrantList;

.field protected mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/spreadtrum/ims/ImsRadioInterface;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioBugDetector(Lcom/spreadtrum/ims/ImsRadioInterface;)Lcom/android/internal/telephony/RadioBugDetector;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearWakeLock(Lcom/spreadtrum/ims/ImsRadioInterface;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementWakeLock(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/RILRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lcom/spreadtrum/ims/ImsRadioInterface;I)Lcom/spreadtrum/ims/RILRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->findAndRemoveRequestFromList(I)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetProxyAndRequestList(Lcom/spreadtrum/ims/ImsRadioInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetResponseForTimedOutRILRequest(Lcom/spreadtrum/ims/RILRequest;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getResponseForTimedOutRILRequest(Lcom/spreadtrum/ims/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 98
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 173
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;-><init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsRadioServiceProxy;)V

    .line 501
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsRadioServiceProxy;)V
    .locals 6

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWlSequenceNum:I

    .line 124
    iput v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWlSequenceNum:I

    .line 126
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    .line 140
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 147
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 154
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 216
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    .line 217
    const/4 v2, 0x2

    iput v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    .line 220
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 221
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 222
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 224
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 225
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    .line 227
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 228
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    .line 233
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    .line 234
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 236
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    .line 237
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

    .line 238
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    .line 239
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    .line 240
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    .line 241
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    .line 242
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    .line 243
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    .line 244
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    .line 245
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 247
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    .line 248
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    .line 249
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    .line 250
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    .line 251
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    .line 252
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    .line 253
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    .line 254
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    .line 255
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    .line 256
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    .line 257
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    .line 259
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    .line 260
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    .line 261
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    .line 262
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    .line 263
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    .line 264
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 265
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    .line 266
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

    .line 267
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

    .line 269
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

    .line 505
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mContext:Landroid/content/Context;

    .line 506
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 516
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " init mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRadioInterface;->isRadioBugDetectionEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 518
    new-instance p2, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p2, p1, v2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 521
    :cond_1
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioResponse;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/ImsRadioResponse;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioResponse:Lcom/spreadtrum/ims/ImsRadioResponse;

    .line 522
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioIndication;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/ImsRadioIndication;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioIndication:Lcom/spreadtrum/ims/ImsRadioIndication;

    .line 525
    new-instance p2, Lcom/spreadtrum/ims/ImsAidlServiceResponse;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/ImsAidlServiceResponse;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsAidlServiceResponse:Lcom/spreadtrum/ims/ImsAidlServiceResponse;

    .line 526
    new-instance p2, Lcom/spreadtrum/ims/ImsAidlServiceIndication;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsAidlServiceIndication:Lcom/spreadtrum/ims/ImsAidlServiceIndication;

    .line 528
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    invoke-direct {p2, p0, p0}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    .line 530
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxyDeathRecipient:Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;

    .line 531
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;

    invoke-direct {p2, p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient-IA;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAIDLProxyDeathRecipients:Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;

    .line 532
    move p2, v0

    :goto_1
    const/4 v2, 0x1

    if-gt p2, v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 537
    :cond_2
    if-nez p3, :cond_3

    .line 538
    new-instance p2, Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-direct {p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    goto :goto_2

    .line 540
    :cond_3
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    .line 543
    :goto_2
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 544
    const-string v3, "*unisoc-ims-radio*"

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 545
    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 546
    const-string v3, "ACK_WL"

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 547
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 548
    const p2, 0xea60

    const-string v3, "ro.ril.wake_lock_timeout"

    invoke-static {v3, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockTimeout:I

    .line 550
    const/16 p2, 0xc8

    invoke-static {v3, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLockTimeout:I

    .line 552
    iput v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    .line 553
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 555
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 557
    nop

    :goto_3
    if-gt v0, v2, :cond_6

    .line 558
    if-nez v0, :cond_4

    .line 559
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    goto :goto_4

    .line 561
    :cond_4
    if-nez p3, :cond_5

    .line 562
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    .line 557
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 567
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Radio HAL version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private acquireWakeLock(Lcom/spreadtrum/ims/RILRequest;I)V
    .locals 6

    .line 1392
    monitor-enter p1

    .line 1393
    :try_start_0
    iget v0, p1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1394
    const-string p2, "ImsRIL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to aquire wakelock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    monitor-exit p1

    return-void

    .line 1398
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1430
    const-string v0, "ImsRIL"

    goto/16 :goto_1

    .line 1420
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1421
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1422
    iget v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWlSequenceNum:I

    .line 1424
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1425
    iget v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1426
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    iget v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1427
    monitor-exit v0

    .line 1428
    goto :goto_0

    .line 1427
    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    .line 1400
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1401
    :try_start_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1402
    iget v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    .line 1403
    iget v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWlSequenceNum:I

    .line 1405
    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v1

    .line 1406
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1407
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 1408
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/spreadtrum/ims/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    iget v4, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    iget v5, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 1414
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1415
    iget v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1416
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    iget v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1417
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1418
    nop

    .line 1433
    :goto_0
    :try_start_4
    iput p2, p1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    .line 1434
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1435
    return-void

    .line 1417
    :catchall_1
    move-exception p2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p2

    .line 1430
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    monitor-exit p1

    return-void

    .line 1434
    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/spreadtrum/ims/RILRequest;)V
    .locals 3

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->acquireWakeLock(Lcom/spreadtrum/ims/RILRequest;I)V

    .line 1092
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1093
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/spreadtrum/ims/RILRequest;->mStartTimeMs:J

    .line 1094
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1095
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addToRilHistogram(Lcom/spreadtrum/ims/RILRequest;)V
    .locals 6

    .line 1542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1543
    iget-wide v2, p1, Lcom/spreadtrum/ims/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1545
    sget-object v1, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1546
    :try_start_0
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v3, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    .line 1547
    if-nez v2, :cond_0

    .line 1549
    new-instance v2, Landroid/telephony/TelephonyHistogram;

    const/4 v3, 0x1

    iget v4, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 1551
    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1553
    :cond_0
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 1554
    monitor-exit v1

    .line 1555
    return-void

    .line 1554
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 2402
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    .line 2403
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2404
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 2403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2406
    :cond_0
    return-object v1
.end method

.method private clearRequestList(IZ)V
    .locals 7

    .line 1509
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1510
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1511
    if-eqz p2, :cond_0

    .line 1512
    const-string v2, "ImsRIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList: mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1516
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/RILRequest;

    .line 1517
    if-eqz p2, :cond_1

    .line 1518
    const-string v4, "ImsRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 1519
    invoke-static {v6}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1518
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/spreadtrum/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1522
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1523
    invoke-virtual {v3}, Lcom/spreadtrum/ims/RILRequest;->release()V

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1526
    monitor-exit v0

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private clearWakeLock(I)Z
    .locals 5

    .line 1482
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1483
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 1484
    :try_start_0
    iget v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p1

    return v1

    .line 1485
    :cond_0
    const-string v2, "ImsRIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE: mWakeLockCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "at time of clearing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iput v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    .line 1488
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1489
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 1490
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1491
    monitor-exit p1

    return v0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1494
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 1495
    :try_start_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p1

    return v1

    .line 1496
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1497
    monitor-exit p1

    return v0

    .line 1498
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1113
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private static convertToHalSipMessage(ILandroid/telephony/ims/SipMessage;)Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;
    .locals 1

    .line 3520
    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;-><init>()V

    .line 3522
    iput p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->delegateid:I

    .line 3523
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    .line 3524
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 3525
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getContent()[B

    move-result-object p0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsRadioInterface;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    .line 3526
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    .line 3527
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    .line 3528
    return-object v0
.end method

.method private decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V
    .locals 8

    .line 1448
    monitor-enter p1

    .line 1449
    :try_start_0
    iget v0, p1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 1475
    const-string v0, "ImsRIL"

    goto :goto_2

    .line 1471
    :pswitch_0
    goto :goto_3

    .line 1451
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1452
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/spreadtrum/ims/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    iget v4, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    .line 1454
    iget v5, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 1452
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 1455
    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v1

    .line 1456
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 1458
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1461
    :cond_1
    iget v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    if-le v1, v7, :cond_2

    .line 1462
    sub-int/2addr v1, v7

    iput v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    goto :goto_1

    .line 1464
    :cond_2
    iput v6, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLockCount:I

    .line 1465
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1467
    :goto_1
    monitor-exit v0

    .line 1468
    goto :goto_3

    .line 1467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1473
    :pswitch_2
    goto :goto_3

    .line 1475
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    .line 1478
    monitor-exit p1

    .line 1479
    return-void

    .line 1478
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/spreadtrum/ims/RILRequest;
    .locals 3

    .line 1530
    nop

    .line 1531
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1532
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/RILRequest;

    .line 1533
    if-eqz v1, :cond_0

    .line 1534
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1536
    :cond_0
    monitor-exit v0

    .line 1538
    return-object v1

    .line 1536
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0

    .line 1375
    if-nez p1, :cond_0

    .line 1376
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1379
    :cond_0
    return-object p1
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/spreadtrum/ims/RILRequest;)Ljava/lang/Object;
    .locals 8

    .line 396
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 398
    :cond_0
    nop

    .line 399
    iget p0, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    new-instance v0, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 402
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p0

    new-array v6, p0, [I

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 405
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 178
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 180
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    monitor-exit v0

    .line 184
    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 1106
    sget-boolean p2, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz p2, :cond_0

    .line 1107
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1109
    :cond_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->resetProxyAndRequestList(I)V

    .line 1110
    return-void
.end method

.method private isRadioBugDetectionEnabled()Z
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_radio_bug_detection"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;
    .locals 0

    .line 1099
    invoke-static {p1, p2, p3}, Lcom/spreadtrum/ims/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1100
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->addRequest(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1101
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

    .line 2394
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2395
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 2396
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2398
    :cond_0
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 0

    .line 2179
    packed-switch p0, :pswitch_data_0

    .line 2272
    :pswitch_0
    const-string p0, "<unknown request>"

    return-object p0

    .line 2271
    :pswitch_1
    const-string p0, "RIL_IMS_REQUEST_SET_LOCAL_TONE"

    return-object p0

    .line 2270
    :pswitch_2
    const-string p0, "RIL_IMS_REQUEST_CLOSE_DIALOG"

    return-object p0

    .line 2269
    :pswitch_3
    const-string p0, "RIL_IMS_REQUEST_TRIGGER_FULL_NETWORK_REGISTRATION"

    return-object p0

    .line 2268
    :pswitch_4
    const-string p0, "RIL_IMS_REQUEST_TRIGGER_SIP_DELEGATE_DEREGISTRATION"

    return-object p0

    .line 2267
    :pswitch_5
    const-string p0, "RIL_IMS_REQUEST_UPDATE_SIP_DELEGATE_REGISTRATION"

    return-object p0

    .line 2266
    :pswitch_6
    const-string p0, "RIL_IMS_REQUEST_SEND_SIP_MESSAGE"

    return-object p0

    .line 2265
    :pswitch_7
    const-string p0, "RIL_IMS_REQUEST_OPTIONS_CAPABILITIES"

    return-object p0

    .line 2264
    :pswitch_8
    const-string p0, "RIL_IMS_REQUEST_SUBSCRIBE_CAPABILITIES"

    return-object p0

    .line 2263
    :pswitch_9
    const-string p0, "RIL_IMS_REQUEST_PUBLISH_CAPABILITIES"

    return-object p0

    .line 2262
    :pswitch_a
    const-string p0, "RIL_IMS_REQUEST_SET_UCE_CAPABILITIES"

    return-object p0

    .line 2260
    :pswitch_b
    const-string p0, "RIL_IMS_REQUEST_GET_IMS_STACK_VERSION"

    return-object p0

    .line 2258
    :pswitch_c
    const-string p0, "RIL_IMS_REQUEST_NOTIFY_VOWIFI_WHITE_LIST"

    return-object p0

    .line 2255
    :pswitch_d
    const-string p0, "RIL_IMS_REQUEST_GBA"

    return-object p0

    .line 2254
    :pswitch_e
    const-string p0, "RIL_IMS_REQUEST_SET_CARRIER_IMS_USER_AGENT"

    return-object p0

    .line 2253
    :pswitch_f
    const-string p0, "RIL_REQUEST_GET_IMS_USER_AGENT"

    return-object p0

    .line 2252
    :pswitch_10
    const-string p0, "RIL_IMS_REQUEST_SEND_RTT_MESSAGE"

    return-object p0

    .line 2251
    :pswitch_11
    const-string p0, "RIL_IMS_REQUEST_SET_RTT_CHANNEL_ENABLE"

    return-object p0

    .line 2250
    :pswitch_12
    const-string p0, "RIL_IMS_REQUEST_EMERGENCY_DIAL_RTT"

    return-object p0

    .line 2249
    :pswitch_13
    const-string p0, "RIL_IMS_REQUEST_DIAL_RTT"

    return-object p0

    .line 2248
    :pswitch_14
    const-string p0, "RIL_IMS_REQUEST_GET_RTT_ALLOWED_PLMN"

    return-object p0

    .line 2247
    :pswitch_15
    const-string p0, "RIL_IMS_REQUEST_SET_RTT_ENABLE"

    return-object p0

    .line 2246
    :pswitch_16
    const-string p0, "RIL_IMS_REQUEST_SET_REG_ADDR"

    return-object p0

    .line 2245
    :pswitch_17
    const-string p0, "RIL_IMS_REQUEST_SET_PCSCF_ADDR"

    return-object p0

    .line 2244
    :pswitch_18
    const-string p0, "RIL_IMS_REQUEST_GET_PCSCF_ADDR"

    return-object p0

    .line 2243
    :pswitch_19
    const-string p0, "RIL_IMS_REQUEST_GET_SRVCC_CAPBILITY"

    return-object p0

    .line 2242
    :pswitch_1a
    const-string p0, "RIL_IMS_REQUEST_GET_PANI_INFO"

    return-object p0

    .line 2241
    :pswitch_1b
    const-string p0, "RIL_IMS_REQUEST_GET_SPECIAL_RATCAP"

    return-object p0

    .line 2240
    :pswitch_1c
    const-string p0, "RIL_IMS_REQUEST_CALL_MEDIA_CHANGE_REQUEST_TIMEOUT"

    return-object p0

    .line 2239
    :pswitch_1d
    const-string p0, "RIL_IMS_REQUEST_ENABLE_WIFI_PARAM_REPORT"

    return-object p0

    .line 2238
    :pswitch_1e
    const-string p0, "RIL_IMS_REQUEST_ENABLE_LOCAL_HOLD"

    return-object p0

    .line 2237
    :pswitch_1f
    const-string p0, "RIL_IMS_REQUEST_SET_VIDEO_RESOLUTION"

    return-object p0

    .line 2236
    :pswitch_20
    const-string p0, "RIL_IMS_REQUEST_GET_VIDEO_RESOLUTION"

    return-object p0

    .line 2235
    :pswitch_21
    const-string p0, "RIL_IMS_REQUEST_NOTIFY_HANDOVER_CALL_INFO"

    return-object p0

    .line 2234
    :pswitch_22
    const-string p0, "RIL_IMS_REQUEST_UPDATE_DATA_ROUTER"

    return-object p0

    .line 2233
    :pswitch_23
    const-string p0, "RIL_IMS_REQUEST_WIFI_CALL_STATE_CHANGE"

    return-object p0

    .line 2232
    :pswitch_24
    const-string p0, "RIL_IMS_REQUEST_WIFI_ENABLE"

    return-object p0

    .line 2231
    :pswitch_25
    const-string p0, "RIL_IMS_REQUEST_GET_BEARER_STATE"

    return-object p0

    .line 2230
    :pswitch_26
    const-string p0, "RIL_IMS_REQUEST_SET_SMSC"

    return-object p0

    .line 2229
    :pswitch_27
    const-string p0, "RIL_IMS_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object p0

    .line 2228
    :pswitch_28
    const-string p0, "RIL_IMS_REQUEST_SET_CALL_FORWARD"

    return-object p0

    .line 2227
    :pswitch_29
    const-string p0, "RIL_IMS_REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object p0

    .line 2226
    :pswitch_2a
    const-string p0, "RIL_IMS_REQUEST_UPDATE_CLIP"

    return-object p0

    .line 2225
    :pswitch_2b
    const-string p0, "RIL_IMS_REQUEST_QUERY_COLR"

    return-object p0

    .line 2224
    :pswitch_2c
    const-string p0, "RIL_IMS_REQUEST_QUERY_COLP"

    return-object p0

    .line 2223
    :pswitch_2d
    const-string p0, "RIL_IMS_REQUEST_CALL_RESPONSE_MEDIA_CHANGE"

    return-object p0

    .line 2222
    :pswitch_2e
    const-string p0, "RIL_IMS_REQUEST_CALL_REQUEST_MEDIA_CHANGE"

    return-object p0

    .line 2221
    :pswitch_2f
    const-string p0, "RIL_IMS_REQUEST_GET_VOICE_CALL_AVAILABILITY"

    return-object p0

    .line 2220
    :pswitch_30
    const-string p0, "RIL_IMS_REQUEST_SET_VOICE_CALL_AVAILABILITY"

    return-object p0

    .line 2219
    :pswitch_31
    const-string p0, "RIL_IMS_REQUEST_ENABLE_LOCAL_CONFERENCE"

    return-object p0

    .line 2218
    :pswitch_32
    const-string p0, "RIL_IMS_REQUEST_SILENCE_SINGLE_CALL"

    return-object p0

    .line 2217
    :pswitch_33
    const-string p0, "RIL_IMS_REQUEST_HOLD_SINGLE_CALL"

    return-object p0

    .line 2216
    :pswitch_34
    const-string p0, "RIL_IMS_REQUEST_HANDOVER_CALL_END"

    return-object p0

    .line 2215
    :pswitch_35
    const-string p0, "RIL_IMS_REQUEST_NETWORK_INFO_CHANGE"

    return-object p0

    .line 2214
    :pswitch_36
    const-string p0, "RIL_IMS_REQUEST_HANDOVER_STATUS_UPDATE"

    return-object p0

    .line 2213
    :pswitch_37
    const-string p0, "RIL_IMS_REQUEST_HANDOVER"

    return-object p0

    .line 2212
    :pswitch_38
    const-string p0, "RIL_IMS_REQUEST_ADD_TO_GROUP_CALL"

    return-object p0

    .line 2211
    :pswitch_39
    const-string p0, "RIL_IMS_REQUEST_INITIAL_GROUP_CALL"

    return-object p0

    .line 2210
    :pswitch_3a
    const-string p0, "RIL_IMS_REQUEST_CALL_FALL_BACK_TO_VOICE"

    return-object p0

    .line 2209
    :pswitch_3b
    const-string p0, "RIL_IMS_REQUEST_GET_CURRENT_CALLS"

    return-object p0

    .line 2208
    :pswitch_3c
    const-string p0, "RIL_IMS_REQUEST_VIDEOPHONE_DIAL"

    return-object p0

    .line 2207
    :pswitch_3d
    const-string p0, "RIL_IMS_REQUEST_ENABLE_IMS"

    return-object p0

    .line 2206
    :pswitch_3e
    const-string p0, "RIL_IMS_REQUEST_INIT_ISIM"

    return-object p0

    .line 2205
    :pswitch_3f
    const-string p0, "RIL_IMS_REQUEST_SEND_USSD"

    return-object p0

    .line 2204
    :pswitch_40
    const-string p0, "RIL_IMS_REQUEST_SET_FACILITY_LOCK"

    return-object p0

    .line 2203
    :pswitch_41
    const-string p0, "RIL_IMS_REQUEST_QUERY_FACILITY_LOCK"

    return-object p0

    .line 2202
    :pswitch_42
    const-string p0, "RIL_IMS_REQUEST_CHANGE_BARRING_PASSWORD"

    return-object p0

    .line 2201
    :pswitch_43
    const-string p0, "RIL_IMS_REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object p0

    .line 2200
    :pswitch_44
    const-string p0, "RIL_IMS_REQUEST_SET_MUTE"

    return-object p0

    .line 2199
    :pswitch_45
    const-string p0, "RIL_IMS_REQUEST_SEPARATE_CONNECTION"

    return-object p0

    .line 2198
    :pswitch_46
    const-string p0, "RIL_IMS_REQUEST_SET_CALL_WAITING"

    return-object p0

    .line 2197
    :pswitch_47
    const-string p0, "RIL_IMS_REQUEST_QUERY_CALL_WAITING"

    return-object p0

    .line 2196
    :pswitch_48
    const-string p0, "RIL_IMS_REQUEST_QUERY_CLIP"

    return-object p0

    .line 2195
    :pswitch_49
    const-string p0, "RIL_IMS_REQUEST_SET_CLIR"

    return-object p0

    .line 2194
    :pswitch_4a
    const-string p0, "RIL_IMS_REQUEST_GET_CLIR"

    return-object p0

    .line 2193
    :pswitch_4b
    const-string p0, "RIL_IMS_REQUEST_DTMF_STOP"

    return-object p0

    .line 2192
    :pswitch_4c
    const-string p0, "RIL_IMS_REQUEST_DTMF"

    return-object p0

    .line 2191
    :pswitch_4d
    const-string p0, "RIL_IMS_REQUEST_DTMF_START"

    return-object p0

    .line 2190
    :pswitch_4e
    const-string p0, "RIL_IMS_REQUEST_LAST_CALL_FAIL_CAUSE"

    return-object p0

    .line 2189
    :pswitch_4f
    const-string p0, "RIL_IMS_REQUEST_UDUB"

    return-object p0

    .line 2188
    :pswitch_50
    const-string p0, "RIL_IMS_REQUEST_ANSWER"

    return-object p0

    .line 2187
    :pswitch_51
    const-string p0, "RIL_IMS_REQUEST_CONFERENCE"

    return-object p0

    .line 2186
    :pswitch_52
    const-string p0, "RIL_IMS_REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    .line 2185
    :pswitch_53
    const-string p0, "RIL_IMS_REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    .line 2184
    :pswitch_54
    const-string p0, "RIL_IMS_REQUEST_HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    .line 2183
    :pswitch_55
    const-string p0, "RIL_IMS_REQUEST_HANGUP"

    return-object p0

    .line 2182
    :pswitch_56
    const-string p0, "RIL_IMS_REQUEST_EMERGENCY_DIAL"

    return-object p0

    .line 2181
    :pswitch_57
    const-string p0, "RIL_IMS_REQUEST_DIAL"

    return-object p0

    .line 2180
    :pswitch_58
    const-string p0, "RIL_IMS_REQUEST_IMS_REGISTRATION_STATE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method

.method private declared-synchronized resetProxyAndRequestList(I)V
    .locals 3

    monitor-enter p0

    .line 418
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 419
    :try_start_0
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->clear()V

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 427
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRadioState(IZ)V

    .line 429
    invoke-static {}, Lcom/spreadtrum/ims/RILRequest;->resetSerial()V

    .line 431
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->clearRequestList(IZ)V

    .line 433
    if-nez p1, :cond_1

    .line 434
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    goto :goto_1

    .line 436
    :cond_1
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :goto_1
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 0

    .line 2278
    packed-switch p0, :pswitch_data_0

    .line 2353
    :pswitch_0
    const-string p0, "<unknown response>"

    return-object p0

    .line 2352
    :pswitch_1
    const-string p0, "RIL_IMS_UNSOL_SUBSCRIBER_ASSOCIATED_URI"

    return-object p0

    .line 2350
    :pswitch_2
    const-string p0, "RIL_IMS_UNSOL_CTCC_AUTO_SWITCH"

    return-object p0

    .line 2348
    :pswitch_3
    const-string p0, "RIL_IMS_UNSOL_HOLD_TONE"

    return-object p0

    .line 2346
    :pswitch_4
    const-string p0, "RIL_IMS_UNSOL_ON_IMS_USSD"

    return-object p0

    .line 2344
    :pswitch_5
    const-string p0, "RIL_IMS_UNSOL_SIMMGR_SIM_STATUS_CHANGED"

    return-object p0

    .line 2342
    :pswitch_6
    const-string p0, "RIL_IMS_UNSOL_IMS_CONFIGURATION_CHANGED"

    return-object p0

    .line 2340
    :pswitch_7
    const-string p0, "RIL_IMS_UNSOL_RECEIVE_SIP_MESSAGE"

    return-object p0

    .line 2338
    :pswitch_8
    const-string p0, "RIL_IMS_UNSOL_SENT_SIP_MESSAGE_RESULT"

    return-object p0

    .line 2336
    :pswitch_9
    const-string p0, "RIL_IMS_UNSOL_TERMINATED"

    return-object p0

    .line 2334
    :pswitch_a
    const-string p0, "RIL_IMS_UNSOL_RESOURCE_TERMINATED"

    return-object p0

    .line 2332
    :pswitch_b
    const-string p0, "RIL_IMS_UNSOL_CAPABILITIES_CHANGED"

    return-object p0

    .line 2330
    :pswitch_c
    const-string p0, "RIL_IMS_UNSOL_REMOTE_CAPABILITIES_REQUEST"

    return-object p0

    .line 2327
    :pswitch_d
    const-string p0, "RIL_IMS_UNSOL_VOWIFI_EMERGENCY_ATTACH_STATE_CHANGED"

    return-object p0

    .line 2325
    :pswitch_e
    const-string p0, "RIL_IMS_UNSOL_VOLTE_EMERGENCY_BEARER_STATE_CHANGED"

    return-object p0

    .line 2323
    :pswitch_f
    const-string p0, "RIL_IMS_UNSOL_AIRPLANE_MODE_EXIT_REQUEST"

    return-object p0

    .line 2321
    :pswitch_10
    const-string p0, "RIL_IMS_UNSOL_IMS_HANDOVER_STATE_CHANGED"

    return-object p0

    .line 2319
    :pswitch_11
    const-string p0, "RIL_IMS_UNSOL_VOWIFI_ATTACH_STATE_CHANGED"

    return-object p0

    .line 2316
    :pswitch_12
    const-string p0, "RIL_IMS_UNSOL_RTT_MESSAGE_RECEIVED"

    return-object p0

    .line 2314
    :pswitch_13
    const-string p0, "RIL_IMS_UNSOL_RTT_CPS_CAPABILITY_CHANGED"

    return-object p0

    .line 2312
    :pswitch_14
    const-string p0, "RIL_IMS_UNSOL_EARLY_MEDIA"

    return-object p0

    .line 2310
    :pswitch_15
    const-string p0, "RIL_IMS_UNSOL_CSFB_VENDOR_CAUSE"

    return-object p0

    .line 2308
    :pswitch_16
    const-string p0, "RIL_IMS_UNSOL_ERROR_CAUSE"

    return-object p0

    .line 2306
    :pswitch_17
    const-string p0, "RIL_IMS_UNSOL_WIFI_PARAM"

    return-object p0

    .line 2304
    :pswitch_18
    const-string p0, "RIL_IMS_UNSOL_REGISTER_ADDRESS_CHANGED"

    return-object p0

    .line 2302
    :pswitch_19
    const-string p0, "RIL_IMS_UNSOL_NETWORK_INFO_CHANGED"

    return-object p0

    .line 2300
    :pswitch_1a
    const-string p0, "RIL_IMS_UNSOL_HANDOVER_STATUS_CHANGED"

    return-object p0

    .line 2298
    :pswitch_1b
    const-string p0, "RIL_IMS_UNSOL_HANDOVER_REQUEST"

    return-object p0

    .line 2296
    :pswitch_1c
    const-string p0, "RIL_IMS_UNSOL_NETWORK_STATE_CHANGED"

    return-object p0

    .line 2294
    :pswitch_1d
    const-string p0, "RIL_IMS_UNSOL_RESPONSE_VIDEO_QUALITY"

    return-object p0

    .line 2292
    :pswitch_1e
    const-string p0, "RIL_IMS_UNSOL_RESPONSE_BEARER_ESTABLISTED"

    return-object p0

    .line 2290
    :pswitch_1f
    const-string p0, "RIL_IMS_UNSOL_RESPONSE_IMS_CALL_STATE_CHANGED"

    return-object p0

    .line 2288
    :pswitch_20
    const-string p0, "RIL_IMS_UNSOL_SIM_REFRESH"

    return-object p0

    .line 2286
    :pswitch_21
    const-string p0, "RIL_IMS_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 2284
    :pswitch_22
    const-string p0, "RIL_IMS_UNSOL_SRVCC_STATE_NOTIFY"

    return-object p0

    .line 2282
    :pswitch_23
    const-string p0, "RIL_IMS_UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    .line 2280
    :pswitch_24
    const-string p0, "RIL_IMS_UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
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
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 2094
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 2095
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 2113
    instance-of v0, p1, [I

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "}"

    const-string v5, "{"

    if-eqz v0, :cond_2

    .line 2114
    check-cast p1, [I

    .line 2115
    array-length p0, p1

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2117
    if-lez p0, :cond_1

    .line 2118
    nop

    .line 2119
    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2106
    :sswitch_0
    return-object v0

    .line 2120
    :goto_0
    if-ge v3, p0, :cond_1

    .line 2121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    .line 2124
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2126
    goto/16 :goto_6

    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2127
    check-cast p1, [Ljava/lang/String;

    .line 2128
    array-length p0, p1

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2130
    if-lez p0, :cond_3

    .line 2131
    nop

    .line 2132
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    :goto_1
    if-ge v3, p0, :cond_3

    .line 2134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    .line 2137
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2139
    goto/16 :goto_6

    :cond_4
    const/16 v0, 0x9

    const-string v1, "] "

    const-string v3, "["

    if-ne p0, v0, :cond_6

    .line 2140
    check-cast p1, Ljava/util/ArrayList;

    .line 2141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    .line 2143
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    goto :goto_2

    .line 2145
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2147
    goto/16 :goto_6

    :cond_6
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_8

    .line 2148
    check-cast p1, Ljava/util/ArrayList;

    .line 2149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 2151
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    goto :goto_3

    .line 2153
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2155
    goto :goto_6

    :cond_8
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a

    .line 2156
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2157
    array-length p0, p1

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2159
    nop

    :goto_4
    if-ge v2, p0, :cond_9

    .line 2160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2162
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2164
    goto :goto_6

    :cond_a
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_c

    .line 2165
    check-cast p1, Ljava/util/ArrayList;

    .line 2166
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .line 2168
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    goto :goto_5

    .line 2170
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2171
    goto :goto_6

    .line 2172
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2174
    :goto_6
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
        0x1f91 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAck(I)V
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/spreadtrum/ims/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 1348
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->acquireWakeLock(Lcom/spreadtrum/ims/RILRequest;I)V

    .line 1349
    const-string v3, "sendAck"

    if-nez p1, :cond_1

    .line 1350
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p1

    .line 1351
    if-eqz p1, :cond_0

    .line 1353
    :try_start_0
    invoke-interface {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    goto :goto_1

    .line 1354
    :catch_0
    move-exception p1

    .line 1355
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_0
    const-string p1, "ImsRIL"

    const-string v1, "Error trying to send ack, radioProxy = null"

    invoke-static {p1, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :goto_1
    goto :goto_2

    .line 1362
    :cond_1
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object p1

    .line 1363
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1365
    :try_start_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1368
    goto :goto_2

    .line 1366
    :catch_1
    move-exception p1

    .line 1367
    invoke-direct {p0, v1, v3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1371
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/spreadtrum/ims/RILRequest;->release()V

    .line 1372
    return-void
.end method

.method static serviceToString(I)Ljava/lang/String;
    .locals 2

    .line 1330
    packed-switch p0, :pswitch_data_0

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1334
    :pswitch_0
    const-string p0, "IMS_AIDL_SERVICE"

    return-object p0

    .line 1332
    :pswitch_1
    const-string p0, "IMS_RADIO_SERVICE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3

    .line 1745
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1746
    if-eqz v0, :cond_0

    .line 1747
    const/16 v1, 0x1f49

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1753
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->acceptCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    goto :goto_0

    .line 1754
    :catch_0
    move-exception p1

    .line 1755
    const/4 v0, 0x1

    const-string v1, "acceptCall"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1758
    :cond_0
    :goto_0
    return-void
.end method

.method public bootstrapAuthenticationRequest(Landroid/os/Message;IILjava/lang/String;[BZ)V
    .locals 7

    .line 3380
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3381
    if-nez v0, :cond_0

    return-void

    .line 3383
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3384
    const/16 v1, 0x1f94

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3392
    :try_start_0
    iget v1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->bootstrapAuthentication(IIILjava/lang/String;[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3396
    goto :goto_0

    .line 3394
    :catch_0
    move-exception p1

    .line 3395
    const/4 p2, 0x1

    const-string p3, "bootstrapAuthenticationRequest"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3397
    :goto_0
    goto :goto_1

    .line 3398
    :cond_1
    const-string p2, "bootstrapAuthenticationRequest: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3399
    if-eqz p1, :cond_2

    .line 3400
    const/4 p2, 0x0

    const/4 p3, 0x6

    .line 3401
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p3

    .line 3400
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3402
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3405
    :cond_2
    :goto_1
    return-void
.end method

.method public callMediaChangeRequestTimeOut(ILandroid/os/Message;)V
    .locals 3

    .line 3015
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3016
    if-eqz v0, :cond_0

    .line 3017
    const/16 v1, 0x1f7e

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3023
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->callMediaChangeRequestTimeOut(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3026
    goto :goto_0

    .line 3024
    :catch_0
    move-exception p1

    .line 3025
    const/4 p2, 0x1

    const-string v0, "callMediaChangeRequestTimeOut"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3028
    :cond_0
    :goto_0
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1576
    invoke-virtual {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1577
    if-eqz v0, :cond_0

    .line 1578
    const/16 v1, 0x1f57

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p4

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1584
    :try_start_0
    iget p4, p4, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    goto :goto_0

    .line 1585
    :catch_0
    move-exception p1

    .line 1586
    const/4 p2, 0x1

    const-string p3, "changeBarringPassword"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1589
    :cond_0
    :goto_0
    return-void
.end method

.method public closeDialog(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3640
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3641
    if-nez v0, :cond_0

    return-void

    .line 3643
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3644
    const/16 v1, 0x1fa0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3652
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->closeDialog(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3655
    goto :goto_0

    .line 3653
    :catch_0
    move-exception p1

    .line 3654
    const/4 p2, 0x1

    const-string v0, "closeDialog"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3656
    :goto_0
    goto :goto_1

    .line 3657
    :cond_1
    const-string p1, "closeDialog: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3658
    if-eqz p2, :cond_2

    .line 3659
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3660
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3659
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3661
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3664
    :cond_2
    :goto_1
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3

    .line 1728
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1729
    if-eqz v0, :cond_0

    .line 1730
    const/16 v1, 0x1f48

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1736
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1739
    goto :goto_0

    .line 1737
    :catch_0
    move-exception p1

    .line 1738
    const/4 v0, 0x1

    const-string v1, "conference"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1741
    :cond_0
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 4

    .line 1593
    const-string v0, "dial"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v1

    .line 1596
    if-eqz v1, :cond_0

    .line 1597
    const/16 v2, 0x1f42

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p4

    .line 1601
    :try_start_0
    iget p4, p4, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    goto :goto_0

    .line 1602
    :catch_0
    move-exception p1

    .line 1603
    const/4 p2, 0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1606
    :cond_0
    :goto_0
    return-void
.end method

.method public dialRTT(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 4

    .line 3222
    const-string v0, "dialRTT"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v1

    .line 3225
    if-eqz v1, :cond_0

    .line 3226
    const/16 v2, 0x1f8d

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p4

    .line 3230
    :try_start_0
    iget p4, p4, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->dialRTT(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    goto :goto_0

    .line 3231
    :catch_0
    move-exception p1

    .line 3232
    const/4 p2, 0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3235
    :cond_0
    :goto_0
    return-void
.end method

.method public dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril--dialVP: address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_0

    .line 2415
    const/16 v1, 0x1f5d

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p4

    .line 2418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2421
    :try_start_0
    iget p4, p4, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->videoPhoneDial(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    goto :goto_0

    .line 2422
    :catch_0
    move-exception p1

    .line 2423
    const/4 p2, 0x1

    const-string p3, "queryColp"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2426
    :cond_0
    :goto_0
    return-void
.end method

.method public emergencyDial(Ljava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZI",
            "Lcom/android/internal/telephony/UUSInfo;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1611
    move-object v1, p0

    move-object/from16 v0, p9

    const-string v2, "emergencyDial> isEmergencyCall "

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v3

    .line 1613
    if-eqz v3, :cond_2

    .line 1614
    const/16 v2, 0x1f43

    iget-object v4, v1, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, v0, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 1618
    new-instance v2, Lvendor/unisoc/hardware/radio/ims/Dial;

    invoke-direct {v2}, Lvendor/unisoc/hardware/radio/ims/Dial;-><init>()V

    .line 1620
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/unisoc/hardware/radio/ims/Dial;->address:Ljava/lang/String;

    .line 1621
    move/from16 v11, p7

    iput v11, v2, Lvendor/unisoc/hardware/radio/ims/Dial;->clir:I

    .line 1622
    const/4 v13, 0x1

    const/4 v4, 0x0

    if-eqz p8, :cond_0

    .line 1623
    new-instance v5, Lvendor/unisoc/hardware/radio/ims/UusInfo;

    invoke-direct {v5}, Lvendor/unisoc/hardware/radio/ims/UusInfo;-><init>()V

    .line 1625
    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v6

    iput v6, v5, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusType:I

    .line 1626
    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v6

    iput v6, v5, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusDcs:I

    .line 1627
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v5, Lvendor/unisoc/hardware/radio/ims/UusInfo;->uusData:Ljava/lang/String;

    .line 1628
    new-array v6, v13, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    aput-object v5, v6, v4

    iput-object v6, v2, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 1629
    goto :goto_0

    .line 1630
    :cond_0
    new-array v5, v4, [Lvendor/unisoc/hardware/radio/ims/UusInfo;

    iput-object v5, v2, Lvendor/unisoc/hardware/radio/ims/Dial;->uusInfo:[Lvendor/unisoc/hardware/radio/ims/UusInfo;

    .line 1633
    :goto_0
    nop

    .line 1634
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1635
    nop

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1636
    move-object/from16 v7, p3

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    .line 1635
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1641
    :cond_1
    move-object/from16 v7, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1645
    :try_start_0
    iget v4, v0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->emergencyDial(ILjava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    goto :goto_2

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    const-string v2, "emergencyDial"

    invoke-direct {p0, v13, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1654
    :cond_2
    :goto_2
    return-void
.end method

.method public emergencyDialRTT(Ljava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZI",
            "Lcom/android/internal/telephony/UUSInfo;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3240
    move-object v1, p0

    move-object/from16 v0, p9

    const-string v2, "emergencyDialRTT"

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v3

    .line 3242
    if-eqz v3, :cond_0

    .line 3243
    const/16 v4, 0x1f8e

    iget-object v5, v1, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, v0, v5}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 3248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3252
    :try_start_0
    iget v4, v0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->emergencyDialRTT(ILjava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3260
    goto :goto_0

    .line 3258
    :catch_0
    move-exception v0

    .line 3259
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3262
    :cond_0
    :goto_0
    return-void
.end method

.method public enableIms(ZLandroid/os/Message;)V
    .locals 3

    .line 2645
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2646
    if-eqz v0, :cond_0

    .line 2647
    const/16 v1, 0x1f5c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2653
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->enableIms(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2656
    goto :goto_0

    .line 2654
    :catch_0
    move-exception p1

    .line 2655
    const/4 p2, 0x1

    const-string v0, "queryColp"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2658
    :cond_0
    :goto_0
    return-void
.end method

.method public enableLocalHold(ZLandroid/os/Message;)V
    .locals 3

    .line 2985
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2986
    if-eqz v0, :cond_0

    .line 2987
    const/16 v1, 0x1f7c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2993
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->enableLocalHold(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    goto :goto_0

    .line 2994
    :catch_0
    move-exception p1

    .line 2995
    const/4 p2, 0x1

    const-string v0, "enableLocalHold"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2998
    :cond_0
    :goto_0
    return-void
.end method

.method public enableWiFiParamReport(ZLandroid/os/Message;)V
    .locals 3

    .line 3000
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3001
    if-eqz v0, :cond_0

    .line 3002
    const/16 v1, 0x1f7d

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3008
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->enableWiFiParamReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    goto :goto_0

    .line 3009
    :catch_0
    move-exception p1

    .line 3010
    const/4 p2, 0x1

    const-string v0, "enableWiFiParamReport"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3013
    :cond_0
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3

    .line 1781
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1782
    if-eqz v0, :cond_0

    .line 1783
    const/16 v1, 0x1f56

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1789
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    goto :goto_0

    .line 1790
    :catch_0
    move-exception p1

    .line 1791
    const/4 v0, 0x1

    const-string v1, "explicitCallTransfer"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1794
    :cond_0
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3

    .line 1887
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1888
    if-eqz v0, :cond_0

    .line 1889
    const/16 v1, 0x1f4f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1895
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    goto :goto_0

    .line 1896
    :catch_0
    move-exception p1

    .line 1897
    const/4 v0, 0x1

    const-string v1, "getCLIR"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1900
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsBearerState(Landroid/os/Message;)V
    .locals 3

    .line 2661
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2662
    if-eqz v0, :cond_0

    .line 2663
    const/16 v1, 0x1f75

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2669
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsBearerState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    goto :goto_0

    .line 2670
    :catch_0
    move-exception p1

    .line 2671
    const/4 v0, 0x1

    const-string v1, "queryColp"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2674
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCNIInfo(Landroid/os/Message;)V
    .locals 3

    .line 3064
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3065
    if-eqz v0, :cond_0

    .line 3066
    const/16 v1, 0x1f80

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3072
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsPaniInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3075
    goto :goto_0

    .line 3073
    :catch_0
    move-exception p1

    .line 3074
    const/4 v0, 0x1

    const-string v1, "getImsCNIInfo"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3077
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCurrentCalls(Landroid/os/Message;)V
    .locals 3

    .line 2431
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2432
    if-eqz v0, :cond_0

    .line 2433
    const/16 v1, 0x1f5e

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2439
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsCurrentCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    goto :goto_0

    .line 2440
    :catch_0
    move-exception p1

    .line 2441
    const/4 v0, 0x1

    const-string v1, "getImsCurrentCalls"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2444
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsPcscfAddress(Landroid/os/Message;)V
    .locals 3

    .line 2905
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2906
    if-eqz v0, :cond_0

    .line 2907
    const/16 v1, 0x1f82

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2913
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsPcscfAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    goto :goto_0

    .line 2914
    :catch_0
    move-exception p1

    .line 2915
    const/4 v0, 0x1

    const-string v1, "getImsPcscfAddress"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2918
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsRegAddress(Landroid/os/Message;)V
    .locals 3

    .line 2937
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2938
    if-eqz v0, :cond_0

    .line 2939
    const/16 v1, 0x1f84

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2945
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsRegAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    goto :goto_0

    .line 2946
    :catch_0
    move-exception p1

    .line 2947
    const/4 v0, 0x1

    const-string v1, "getImsRegAddress"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2950
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 1559
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1560
    if-eqz v0, :cond_0

    .line 1561
    const/16 v1, 0x1f41

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1567
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    goto :goto_0

    .line 1568
    :catch_0
    move-exception p1

    .line 1569
    const/4 v0, 0x1

    const-string v1, "getImsRegistrationState"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1572
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsStackVersion(Landroid/os/Message;)V
    .locals 3

    .line 3317
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3318
    if-eqz v0, :cond_0

    .line 3319
    const/16 v1, 0x1f96

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3325
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsStackVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    goto :goto_0

    .line 3326
    :catch_0
    move-exception p1

    .line 3327
    const/4 v0, 0x1

    const-string v1, "getImsStackVersion"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3330
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsUserAgent(Landroid/os/Message;)V
    .locals 3

    .line 3335
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3336
    if-eqz v0, :cond_0

    .line 3337
    const/16 v1, 0x1f92

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3343
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsUserAgent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3346
    goto :goto_0

    .line 3344
    :catch_0
    move-exception p1

    .line 3345
    const/4 v0, 0x1

    const-string v1, "getImsUserAgent"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3348
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsVoiceCallAvailability(Landroid/os/Message;)V
    .locals 3

    .line 2466
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2467
    if-eqz v0, :cond_0

    .line 2468
    const/16 v1, 0x1f6b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2474
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getImsVoiceCallAvailability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    goto :goto_0

    .line 2475
    :catch_0
    move-exception p1

    .line 2476
    const/4 v0, 0x1

    const-string v1, "queryColp"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2479
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3

    .line 1799
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_0

    .line 1801
    const/16 v1, 0x1f4b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1807
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    goto :goto_0

    .line 1808
    :catch_0
    move-exception p1

    .line 1809
    const/4 v0, 0x1

    const-string v1, "getLastCallFailCause"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1812
    :cond_0
    :goto_0
    return-void
.end method

.method public getPAU(Landroid/os/Message;)V
    .locals 3

    .line 2921
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2922
    if-eqz v0, :cond_0

    .line 2923
    const/16 v1, 0x1f91

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2929
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getPAU(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2932
    goto :goto_0

    .line 2930
    :catch_0
    move-exception p1

    .line 2931
    const/4 v0, 0x1

    const-string v1, "getPAU"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2934
    :cond_0
    :goto_0
    return-void
.end method

.method public getRTTAllowedPLMN(Landroid/os/Message;)V
    .locals 3

    .line 3205
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3206
    if-eqz v0, :cond_0

    .line 3207
    const/16 v1, 0x1f8c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3214
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getRTTAllowedPLMN(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3217
    goto :goto_0

    .line 3215
    :catch_0
    move-exception p1

    .line 3216
    const/4 v0, 0x1

    const-string v1, "getRTTAllowedPLMN"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3219
    :cond_0
    :goto_0
    return-void
.end method

.method public getRadioBugDetector()Lcom/android/internal/telephony/RadioBugDetector;
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object v0
.end method

.method public declared-synchronized getRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
    .locals 7

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 444
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    if-eqz v0, :cond_1

    .line 445
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 449
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioProxy: mRadioProxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 454
    :cond_2
    :try_start_3
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 455
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    .line 454
    invoke-static {v2, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v2

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 456
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    :try_start_4
    const-string v2, "getRadioProxy_V1.1: NoSuchElementException!"

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 461
    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_3

    .line 463
    :try_start_5
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 464
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    .line 463
    invoke-static {v2, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 465
    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 468
    goto :goto_1

    .line 466
    :catch_1
    move-exception v2

    .line 467
    :try_start_6
    const-string v2, "getRadioProxy_V1.0: NoSuchElementException!"

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 471
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    if-eqz v2, :cond_4

    .line 472
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxyDeathRecipient:Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    .line 473
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 472
    invoke-interface {v2, v4, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 474
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioResponse:Lcom/spreadtrum/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioIndication:Lcom/spreadtrum/ims/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsResponseFunctions(Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    goto :goto_2

    .line 476
    :cond_4
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioProxy: mRadioProxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 478
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 484
    :goto_2
    goto :goto_3

    .line 481
    :catch_2
    move-exception v2

    .line 482
    :try_start_7
    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 486
    :goto_3
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    if-nez v2, :cond_5

    .line 488
    const-string v2, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 489
    if-eqz p1, :cond_5

    .line 490
    nop

    .line 491
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 490
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 492
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 496
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxy:Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    .line 441
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;
    .locals 5

    monitor-enter p0

    .line 3678
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3679
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3683
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: mImsRadioServiceProxy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3688
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 3689
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3688
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 3691
    if-eqz v1, :cond_2

    .line 3692
    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 3693
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    .line 3694
    invoke-static {v1}, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    move-result-object v1

    .line 3693
    invoke-virtual {v4, v3, v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/ims/IImsRadio;)V

    .line 3697
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 3699
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 3700
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 3702
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-static {v2, v0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v2

    .line 3700
    invoke-virtual {v3, v1, v2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3704
    goto :goto_0

    .line 3703
    :catch_0
    move-exception v1

    .line 3707
    :cond_3
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 3709
    :try_start_4
    sget-object v1, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 3710
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    sget-object v3, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    .line 3712
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3, v0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    .line 3710
    invoke-virtual {v2, v1, v3}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3714
    goto :goto_1

    .line 3713
    :catch_1
    move-exception v1

    .line 3717
    :cond_4
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3718
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3719
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAIDLProxyDeathRecipients:Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    .line 3720
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getAidl()Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 3721
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getAidl()Lvendor/unisoc/hardware/radio/ims/IImsRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsAidlServiceResponse:Lcom/spreadtrum/ims/ImsAidlServiceResponse;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsAidlServiceIndication:Lcom/spreadtrum/ims/ImsAidlServiceIndication;

    .line 3722
    invoke-interface {v1, v2, v3}, Lvendor/unisoc/hardware/radio/ims/IImsRadio;->setImsResponseFunctions(Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;)V

    goto :goto_2

    .line 3724
    :cond_5
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3727
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getHidl()Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioProxyDeathRecipient:Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mServiceCookies:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 3729
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 3728
    invoke-interface {v1, v2, v3, v4}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 3730
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getHidl()Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioResponse:Lcom/spreadtrum/ims/ImsRadioResponse;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioIndication:Lcom/spreadtrum/ims/ImsRadioIndication;

    .line 3731
    invoke-interface {v1, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;->setImsResponseFunctions(Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    goto :goto_2

    .line 3725
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "serviceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3734
    :cond_7
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: mImsRadioServiceProxy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3742
    :goto_2
    goto :goto_3

    .line 3739
    :catch_2
    move-exception v1

    .line 3740
    :try_start_6
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->clear()V

    .line 3741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 3744
    :goto_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3746
    const-string v1, "getRadioServiceProxy: mImsRadioServiceProxy == null"

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLoge(Ljava/lang/String;)V

    .line 3747
    if-eqz p1, :cond_8

    .line 3748
    const/4 v1, 0x0

    .line 3749
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3748
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3750
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3754
    :cond_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRadioServiceProxy:Lcom/spreadtrum/ims/ImsRadioServiceProxy;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3677
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRilHandler()Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    return-object v0
.end method

.method public getSmsBearer(Landroid/os/Message;)V
    .locals 3

    .line 3099
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3100
    if-eqz v0, :cond_0

    .line 3101
    const/16 v1, 0x1f86

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3108
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getSmsBearer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    goto :goto_0

    .line 3109
    :catch_0
    move-exception p1

    .line 3110
    const/4 v0, 0x1

    const-string v1, "getSmsBearer"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3113
    :cond_0
    :goto_0
    return-void
.end method

.method public getSpecialRatcap(Landroid/os/Message;I)V
    .locals 3

    .line 3048
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3049
    if-eqz v0, :cond_0

    .line 3050
    const/16 v1, 0x1f7f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3056
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getSpecialRatcap(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    goto :goto_0

    .line 3057
    :catch_0
    move-exception p1

    .line 3058
    const/4 p2, 0x1

    const-string v0, "getSpecialRatcap"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3061
    :cond_0
    :goto_0
    return-void
.end method

.method public getSrvccCapbility(Landroid/os/Message;)V
    .locals 3

    .line 2888
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2889
    if-eqz v0, :cond_0

    .line 2890
    const/16 v1, 0x1f81

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2896
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getSrvccCapbility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2899
    goto :goto_0

    .line 2897
    :catch_0
    move-exception p1

    .line 2898
    const/4 v0, 0x1

    const-string v1, "getSrvccCapbility"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2901
    :cond_0
    :goto_0
    return-void
.end method

.method public getVideoResolution(Landroid/os/Message;)V
    .locals 3

    .line 3032
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3033
    if-eqz v0, :cond_0

    .line 3034
    const/16 v1, 0x1f7a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3040
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getVideoResolution(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    goto :goto_0

    .line 3041
    :catch_0
    move-exception p1

    .line 3042
    const/4 v0, 0x1

    const-string v1, "getVideoResolution"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3045
    :cond_0
    :goto_0
    return-void
.end method

.method public getVoLTEAllowedPLMN(Landroid/os/Message;)V
    .locals 3

    .line 3134
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3135
    if-eqz v0, :cond_0

    .line 3136
    const/16 v1, 0x1f88

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3143
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getVoLTEAllowedPLMN(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3146
    goto :goto_0

    .line 3144
    :catch_0
    move-exception p1

    .line 3145
    const/4 v0, 0x1

    const-string v1, "getVoLTEAllowedPLMN"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3148
    :cond_0
    :goto_0
    return-void
.end method

.method public getWakeLock(I)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1439
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    return-object p1
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3

    .line 1693
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1694
    if-eqz v0, :cond_0

    .line 1695
    const/16 v1, 0x1f44

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1701
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    goto :goto_0

    .line 1702
    :catch_0
    move-exception p1

    .line 1703
    const/4 p2, 0x1

    const-string v0, "hangup"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1706
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3

    .line 1676
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1677
    if-eqz v0, :cond_0

    .line 1678
    const/16 v1, 0x1f46

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1684
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    goto :goto_0

    .line 1685
    :catch_0
    move-exception p1

    .line 1686
    const/4 v0, 0x1

    const-string v1, "hangupForegroundResumeBackground"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1689
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3

    .line 1658
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1659
    if-eqz v0, :cond_0

    .line 1660
    const/16 v1, 0x1f45

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1666
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    goto :goto_0

    .line 1667
    :catch_0
    move-exception p1

    .line 1668
    const/4 v0, 0x1

    const-string v1, "hangupWaitingOrBackground"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1671
    :cond_0
    :goto_0
    return-void
.end method

.method public holdActiveCall(Landroid/os/Message;)V
    .locals 3

    .line 3152
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3153
    if-eqz v0, :cond_0

    .line 3154
    const/16 v1, 0x1f89

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3160
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->holdActiveCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    goto :goto_0

    .line 3161
    :catch_0
    move-exception p1

    .line 3162
    const/4 v0, 0x1

    const-string v1, "holdActiveCall"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3165
    :cond_0
    :goto_0
    return-void
.end method

.method public imsEnableLocalConference(ZLandroid/os/Message;)V
    .locals 3

    .line 2839
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2840
    if-eqz v0, :cond_0

    .line 2841
    const/16 v1, 0x1f69

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2847
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsEnableLocalConference(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2850
    goto :goto_0

    .line 2848
    :catch_0
    move-exception p1

    .line 2849
    const/4 p2, 0x1

    const-string v0, "imsEnableLocalConference"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2852
    :cond_0
    :goto_0
    return-void
.end method

.method public imsHoldSingleCall(IZLandroid/os/Message;)V
    .locals 3

    .line 2791
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2792
    if-eqz v0, :cond_0

    .line 2793
    const/16 v1, 0x1f66

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2799
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsHoldSingleCall(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2802
    goto :goto_0

    .line 2800
    :catch_0
    move-exception p1

    .line 2801
    const/4 p2, 0x1

    const-string p3, "imsHoldSingleCall"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2804
    :cond_0
    :goto_0
    return-void
.end method

.method public imsMuteSingleCall(IZLandroid/os/Message;)V
    .locals 3

    .line 2807
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2808
    if-eqz v0, :cond_0

    .line 2809
    const/16 v1, 0x1f55

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 2812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2815
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsMuteSingleCall(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    goto :goto_0

    .line 2816
    :catch_0
    move-exception p1

    .line 2817
    const/4 p2, 0x1

    const-string p3, "imsMuteSingleCall"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2820
    :cond_0
    :goto_0
    return-void
.end method

.method public imsSilenceSingleCall(IZLandroid/os/Message;)V
    .locals 3

    .line 2823
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2824
    if-eqz v0, :cond_0

    .line 2825
    const/16 v1, 0x1f68

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 2828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2831
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsSilenceSingleCall(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2834
    goto :goto_0

    .line 2832
    :catch_0
    move-exception p1

    .line 2833
    const/4 p2, 0x1

    const-string p3, "imsSilenceSingleCall"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2836
    :cond_0
    :goto_0
    return-void
.end method

.method public initISIM(Landroid/os/Message;)V
    .locals 3

    .line 2483
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2484
    if-eqz v0, :cond_0

    .line 2485
    const/16 v1, 0x1f5b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2491
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->initISIM(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    goto :goto_0

    .line 2492
    :catch_0
    move-exception p1

    .line 2493
    const/4 v0, 0x1

    const-string v1, "queryColp"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2496
    :cond_0
    :goto_0
    return-void
.end method

.method public isImsRadioVersion2_0()Z
    .locals 3

    .line 3669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.unisoc.hardware.radio.ims.IImsRadio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/ImsRadioInterface;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    const/4 v0, 0x1

    return v0

    .line 3672
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataRouter(Landroid/os/Message;)V
    .locals 3

    .line 2710
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_0

    .line 2712
    const/16 v1, 0x1f78

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2718
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyDataRouterUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    goto :goto_0

    .line 2719
    :catch_0
    move-exception p1

    .line 2720
    const/4 v0, 0x1

    const-string v1, "notifyDataRouter"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2723
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyHandoverCallInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2855
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2856
    if-eqz v0, :cond_0

    .line 2857
    const/16 v1, 0x1f79

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2863
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyHandoverCallInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    goto :goto_0

    .line 2864
    :catch_0
    move-exception p1

    .line 2865
    const/4 p2, 0x1

    const-string v0, "notifyHandoverCallInfo"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2868
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyImsCallEnd(ILandroid/os/Message;)V
    .locals 3

    .line 2775
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2776
    if-eqz v0, :cond_0

    .line 2777
    const/16 v1, 0x1f65

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2783
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyImsCallEnd(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    goto :goto_0

    .line 2784
    :catch_0
    move-exception p1

    .line 2785
    const/4 p2, 0x1

    const-string v0, "notifyImsCallEnd"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2788
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyImsHandoverStatus(ILandroid/os/Message;)V
    .locals 3

    .line 2742
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2743
    if-eqz v0, :cond_0

    .line 2744
    const/16 v1, 0x1f63

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2750
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyImsHandoverStatusUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    goto :goto_0

    .line 2751
    :catch_0
    move-exception p1

    .line 2752
    const/4 p2, 0x1

    const-string v0, "notifyImsHandoverStatus"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2755
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyImsNetworkInfo(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2758
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2760
    if-eqz v0, :cond_0

    .line 2761
    const/16 v1, 0x1f64

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 2764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2767
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyImsNetworkInfoChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    goto :goto_0

    .line 2768
    :catch_0
    move-exception p1

    .line 2769
    const/4 p2, 0x1

    const-string p3, "notifyImsNetworkInfo"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2772
    :cond_0
    :goto_0
    return-void
.end method

.method notifyRegistrantsRilConnectionChanged(I)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 611
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v1, p1, v2, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 614
    :cond_0
    return-void
.end method

.method public notifyVoWifiCallStateChanged(ZLandroid/os/Message;)V
    .locals 3

    .line 2694
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_0

    .line 2696
    const/16 v1, 0x1f77

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2702
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyVoWifiCallStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    goto :goto_0

    .line 2703
    :catch_0
    move-exception p1

    .line 2704
    const/4 p2, 0x1

    const-string v0, "notifyVoWifiCallStateChanged"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2707
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyVoWifiEnable(ZLandroid/os/Message;)V
    .locals 3

    .line 2678
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2679
    if-eqz v0, :cond_0

    .line 2680
    const/16 v1, 0x1f76

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2686
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyVoWifiEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    goto :goto_0

    .line 2687
    :catch_0
    move-exception p1

    .line 2688
    const/4 p2, 0x1

    const-string v0, "queryColp"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2691
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyVoWifiWhiteList(ILandroid/os/Message;)V
    .locals 3

    .line 3300
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3301
    if-eqz v0, :cond_0

    .line 3302
    const/16 v1, 0x1f95

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3309
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->notifyVoWifiWhiteList(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    goto :goto_0

    .line 3310
    :catch_0
    move-exception p1

    .line 3311
    const/4 p2, 0x1

    const-string v0, "notifyVoWifiWhiteList"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3314
    :cond_0
    :goto_0
    return-void
.end method

.method processIndication(II)V
    .locals 1

    .line 1124
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1125
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendAck(I)V

    .line 1126
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1130
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 3

    .line 1134
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/RILRequest;

    .line 1136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    if-nez v1, :cond_0

    .line 1138
    const-string v0, "ImsRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :cond_0
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Ack < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1146
    :goto_0
    return-void

    .line 1136
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public processResponse(ILvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;
    .locals 2

    .line 1172
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->serial:I

    iget v1, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    iget p2, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseInternal(IIII)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    return-object p1
.end method

.method public processResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)Lcom/spreadtrum/ims/RILRequest;
    .locals 3

    .line 1157
    iget v0, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->serial:I

    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    iget p1, p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseInternal(IIII)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    return-object p1
.end method

.method public processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/Object;)V
    .locals 1

    .line 1279
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->error:I

    iget p2, p2, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDoneInternal(Lcom/spreadtrum/ims/RILRequest;IILjava/lang/Object;)V

    .line 1280
    return-void
.end method

.method public processResponseDone(Lcom/spreadtrum/ims/RILRequest;Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/Object;)V
    .locals 1

    .line 1293
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->error:I

    iget p2, p2, Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->processResponseDoneInternal(Lcom/spreadtrum/ims/RILRequest;IILjava/lang/Object;)V

    .line 1294
    return-void
.end method

.method public processResponseDoneInternal(Lcom/spreadtrum/ims/RILRequest;IILjava/lang/Object;)V
    .locals 7

    .line 1307
    if-eqz p1, :cond_2

    .line 1308
    const-string v0, "< "

    if-nez p2, :cond_0

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 1311
    invoke-static {v1, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1, p2, p4}, Lcom/spreadtrum/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1320
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    iget v5, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 1322
    if-nez p3, :cond_1

    .line 1323
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1325
    :cond_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->release()V

    .line 1327
    :cond_2
    return-void
.end method

.method public processResponseInternal(IIII)Lcom/spreadtrum/ims/RILRequest;
    .locals 2

    .line 1185
    nop

    .line 1187
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object p4, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/spreadtrum/ims/RILRequest;

    .line 1190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    if-nez p4, :cond_0

    .line 1192
    const-string p1, "ImsRIL"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected solicited ack response! sn: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1194
    :cond_0
    invoke-direct {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->decrementWakeLock(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1195
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_1

    .line 1196
    iget v0, p4, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-virtual {p2, v0, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 1199
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " Ack < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1200
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p4, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1199
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1203
    :goto_0
    return-object p4

    .line 1190
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1206
    :cond_2
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->findAndRemoveRequestFromList(I)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    .line 1207
    if-nez v0, :cond_3

    .line 1208
    const-string p1, "ImsRIL"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processResponse: Unexpected response! serial: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " error: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 p1, 0x0

    return-object p1

    .line 1214
    :cond_3
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->addToRilHistogram(Lcom/spreadtrum/ims/RILRequest;)V

    .line 1215
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_4

    .line 1216
    iget v1, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 1218
    :cond_4
    const/4 p2, 0x2

    if-ne p4, p2, :cond_5

    .line 1219
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendAck(I)V

    .line 1221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Response received for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p4, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 1222
    invoke-static {p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " Sending ack to ril.cpp"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1221
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1231
    :cond_5
    iget p1, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1243
    :sswitch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRadioState(IZ)V

    goto :goto_1

    .line 1234
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_6

    .line 1236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 1237
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1236
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1248
    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    .line 1249
    iget p1, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    .line 1255
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_7

    .line 1257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 1258
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1257
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1260
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1266
    :cond_7
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_1
        0x81 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3436
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3437
    if-nez v0, :cond_0

    return-void

    .line 3439
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3440
    const/16 v1, 0x1f99

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3448
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->publishCapabilities(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3451
    goto :goto_0

    .line 3449
    :catch_0
    move-exception p1

    .line 3450
    const/4 p2, 0x1

    const-string v0, "publishCapabilities"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3452
    :goto_0
    goto :goto_1

    .line 3453
    :cond_1
    const-string p1, "publishCapabilities: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3454
    if-eqz p2, :cond_2

    .line 3455
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3456
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3455
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3457
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3460
    :cond_2
    :goto_1
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3

    .line 1973
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_0

    .line 1975
    const/16 v1, 0x1f51

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1981
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1984
    goto :goto_0

    .line 1982
    :catch_0
    move-exception p1

    .line 1983
    const/4 v0, 0x1

    const-string v1, "getClip"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1986
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 3

    .line 1990
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_0

    .line 1992
    const/16 v1, 0x1f6e

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1998
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->queryColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    goto :goto_0

    .line 1999
    :catch_0
    move-exception p1

    .line 2000
    const/4 v0, 0x1

    const-string v1, "queryColp"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2003
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 3

    .line 2007
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2008
    if-eqz v0, :cond_0

    .line 2009
    const/16 v1, 0x1f6f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2015
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->queryColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    goto :goto_0

    .line 2016
    :catch_0
    move-exception p1

    .line 2017
    const/4 v0, 0x1

    const-string v1, "queryColp"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2020
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    .line 1967
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryCallForwardStatus(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1968
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    .line 2629
    invoke-virtual {p0, p5}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2630
    if-eqz v0, :cond_0

    .line 2631
    const/16 v1, 0x1f71

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p5

    .line 2634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2637
    :try_start_0
    iget v1, p5, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getCallForwardStatusUri(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    goto :goto_0

    .line 2638
    :catch_0
    move-exception p1

    .line 2639
    const/4 p2, 0x1

    const-string p3, "queryColp"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2642
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3

    .line 1923
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1924
    if-eqz v0, :cond_0

    .line 1925
    const/16 v1, 0x1f52

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1931
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    goto :goto_0

    .line 1932
    :catch_0
    move-exception p1

    .line 1933
    const/4 p2, 0x1

    const-string v0, "queryCallWaiting"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1936
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .line 2025
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/ImsRadioInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2026
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    .line 2031
    invoke-virtual {p0, p5}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2032
    if-eqz v0, :cond_0

    .line 2033
    const/16 v1, 0x1f58

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p5

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2039
    :try_start_0
    iget v1, p5, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2040
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2039
    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    goto :goto_0

    .line 2041
    :catch_0
    move-exception p1

    .line 2042
    const/4 p2, 0x1

    const-string p3, "queryFacilityLockForApp"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2045
    :cond_0
    :goto_0
    return-void
.end method

.method public registerCPSCapabilityChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 893
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 894
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 895
    return-void
.end method

.method public registerCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 920
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 921
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 922
    return-void
.end method

.method public registerForAirPlaneModeExitRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1024
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1025
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1026
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 660
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 663
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 665
    iget p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 666
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 668
    :cond_0
    monitor-exit p1

    .line 669
    return-void

    .line 668
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 715
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 717
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 718
    return-void
.end method

.method public registerForCtccAutoSwitchChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1071
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1072
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1073
    return-void
.end method

.method public registerForEarlyMedia(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 864
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 865
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 866
    return-void
.end method

.method public registerForFeatureTagRegistrationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 980
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 982
    return-void
.end method

.method public registerForHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 874
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 875
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 876
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 744
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 746
    return-void
.end method

.method public registerForImsBearerStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 791
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 792
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 793
    return-void
.end method

.method public registerForImsCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 771
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 772
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 773
    return-void
.end method

.method public registerForImsCallTextInforChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1052
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1053
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1054
    return-void
.end method

.method public registerForImsConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 969
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 970
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 971
    return-void
.end method

.method public registerForImsCsfbVendorCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 753
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 754
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 755
    return-void
.end method

.method public registerForImsErrorCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 762
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 763
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 764
    return-void
.end method

.method public registerForImsHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1015
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1016
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1017
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 855
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 856
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 857
    return-void
.end method

.method public registerForImsNewSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 884
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 885
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 886
    return-void
.end method

.method public registerForImsVideoQos(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 780
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 781
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 782
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 678
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 681
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 683
    iget p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 684
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 686
    :cond_0
    monitor-exit p1

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 696
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 698
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 699
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 701
    iget p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 703
    :cond_0
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 705
    :cond_1
    monitor-exit p1

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 642
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 645
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 647
    iget p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 648
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 650
    :cond_0
    monitor-exit p1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 627
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 629
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 630
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 631
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 632
    monitor-exit p1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForRealOnImsUssd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1062
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1063
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1064
    return-void
.end method

.method public registerForRealSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1006
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1007
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1008
    return-void
.end method

.method public registerForReceiveSipMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 958
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 959
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 960
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 617
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 619
    new-instance p1, Landroid/os/AsyncResult;

    new-instance p2, Ljava/lang/Integer;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 620
    return-void
.end method

.method public registerForSendSipMessageResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 947
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 949
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 725
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 727
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 728
    return-void
.end method

.method public registerForSubscriberAssociatedUriChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1080
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1081
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1082
    return-void
.end method

.method public registerForVoWifiAttachStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 997
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 998
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 999
    return-void
.end method

.method public registerForVoWifiEmergencyAttachStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1042
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1043
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1044
    return-void
.end method

.method public registerForVolteEmergencyBearerStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1033
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1034
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1035
    return-void
.end method

.method public registerImsHandoverRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 800
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 801
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 802
    return-void
.end method

.method public registerImsHandoverStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 811
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 812
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 813
    return-void
.end method

.method public registerImsNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 822
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 824
    return-void
.end method

.method public registerImsRegAddress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 833
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 835
    return-void
.end method

.method public registerImsWiFiParam(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 844
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 845
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 846
    return-void
.end method

.method public registerRemoteCapabilitiesRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 911
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 912
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 913
    return-void
.end method

.method public registerResourceTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 929
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 930
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 931
    return-void
.end method

.method public registerRttMessageReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 902
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 903
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 904
    return-void
.end method

.method public registerTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 938
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 939
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 940
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3

    .line 1763
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_0

    .line 1765
    const/16 v1, 0x1f4a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1771
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    goto :goto_0

    .line 1772
    :catch_0
    move-exception p1

    .line 1773
    const/4 v0, 0x1

    const-string v1, "rejectCall"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1776
    :cond_0
    :goto_0
    return-void
.end method

.method public requestAddGroupCall(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2592
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2593
    if-eqz v0, :cond_0

    .line 2594
    const/16 v1, 0x1f61

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2600
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsAddGroupCall(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    goto :goto_0

    .line 2601
    :catch_0
    move-exception p1

    .line 2602
    const/4 p2, 0x1

    const-string v0, "ImsAddGroupCall"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2605
    :cond_0
    :goto_0
    return-void
.end method

.method public requestImsHandover(ILandroid/os/Message;)V
    .locals 3

    .line 2726
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2727
    if-eqz v0, :cond_0

    .line 2728
    const/16 v1, 0x1f62

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2734
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsHandover(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2737
    goto :goto_0

    .line 2735
    :catch_0
    move-exception p1

    .line 2736
    const/4 p2, 0x1

    const-string v0, "ImsHandover"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2739
    :cond_0
    :goto_0
    return-void
.end method

.method public requestInitialGroupCall(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2574
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2575
    if-eqz v0, :cond_0

    .line 2576
    const/16 v1, 0x1f60

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2582
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->ImsInitialGroupCall(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2585
    goto :goto_0

    .line 2583
    :catch_0
    move-exception p1

    .line 2584
    const/4 p2, 0x1

    const-string v0, "ImsInitialGroupCall"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2587
    :cond_0
    :goto_0
    return-void
.end method

.method public requestVolteCallFallBackToVoice(ILandroid/os/Message;)V
    .locals 3

    .line 2557
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2558
    if-eqz v0, :cond_0

    .line 2559
    const/16 v1, 0x1f5f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2565
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->volteCallFallBackToVoice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2568
    goto :goto_0

    .line 2566
    :catch_0
    move-exception p1

    .line 2567
    const/4 p2, 0x1

    const-string v0, "queryColp"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2570
    :cond_0
    :goto_0
    return-void
.end method

.method public requestVolteCallMediaChange(IILandroid/os/Message;)V
    .locals 3

    .line 2501
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2502
    if-eqz v0, :cond_0

    .line 2503
    const/16 v1, 0x1f6c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 2506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2509
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->requestVolteCallMediaChange(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    goto :goto_0

    .line 2510
    :catch_0
    move-exception p1

    .line 2511
    const/4 p2, 0x1

    const-string p3, "requestVolteCallMediaChange"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2514
    :cond_0
    :goto_0
    return-void
.end method

.method public responseVolteCallMediaChange(ZILandroid/os/Message;)V
    .locals 4

    .line 2519
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2520
    if-eqz v0, :cond_1

    .line 2521
    const/16 v1, 0x1f6d

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v1

    .line 2524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2525
    const/16 v2, 0x3e8

    .line 2526
    if-eqz p3, :cond_0

    .line 2527
    iget v2, p3, Landroid/os/Message;->arg1:I

    .line 2531
    :cond_0
    :try_start_0
    iget p3, v1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p2, p1, v2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->responseVolteCallMediaChange(IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    goto :goto_0

    .line 2532
    :catch_0
    move-exception p1

    .line 2533
    const/4 p2, 0x1

    const-string p3, "responseVolteCallMediaChange"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2536
    :cond_1
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 2

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2359
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2358
    const-string v0, "ImsRIL"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 2

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2364
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2363
    const-string v0, "ImsRIL"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2369
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2368
    const-string v0, "ImsRIL"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2370
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 2

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2374
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2373
    const-string v0, "ImsRIL"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 1833
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1834
    if-eqz v0, :cond_0

    .line 1835
    const/16 v1, 0x1f4d

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1841
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    goto :goto_0

    .line 1842
    :catch_0
    move-exception p1

    .line 1843
    const/4 p2, 0x1

    const-string v0, "sendDtmf"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1846
    :cond_0
    :goto_0
    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3491
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3492
    if-nez v0, :cond_0

    return-void

    .line 3494
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3495
    const/16 v1, 0x1f9b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 3499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3503
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    .line 3504
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3503
    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->sendOptionsCapabilityRequest(ILjava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3507
    goto :goto_0

    .line 3505
    :catch_0
    move-exception p1

    .line 3506
    const/4 p2, 0x1

    const-string p3, "sendOptionsCapabilityRequest"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3508
    :goto_0
    goto :goto_1

    .line 3509
    :cond_1
    const-string p1, "sendOptionsCapabilityRequest: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3510
    if-eqz p3, :cond_2

    .line 3511
    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 3512
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 3511
    invoke-static {p3, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3513
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 3516
    :cond_2
    :goto_1
    return-void
.end method

.method public sendRTTMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3282
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3283
    if-eqz v0, :cond_0

    .line 3284
    const/16 v1, 0x1f90

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3291
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->sendRTTMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3294
    goto :goto_0

    .line 3292
    :catch_0
    move-exception p1

    .line 3293
    const/4 p2, 0x1

    const-string v0, "sendRTTMessage"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3296
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSipMessage(ILandroid/telephony/ims/SipMessage;Landroid/os/Message;)V
    .locals 3

    .line 3532
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3533
    if-nez v0, :cond_0

    return-void

    .line 3535
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3536
    const/16 v1, 0x1f9c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 3540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3544
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->sendSipMessage(IILandroid/telephony/ims/SipMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    goto :goto_0

    .line 3545
    :catch_0
    move-exception p1

    .line 3546
    const/4 p2, 0x1

    const-string p3, "sendSipMessage"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3548
    :goto_0
    goto :goto_1

    .line 3549
    :cond_1
    const-string p1, "sendSipMessage: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3550
    if-eqz p3, :cond_2

    .line 3551
    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 3552
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 3551
    invoke-static {p3, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3553
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 3556
    :cond_2
    :goto_1
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2076
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_0

    .line 2078
    const/16 v1, 0x1f5a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2084
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    goto :goto_0

    .line 2085
    :catch_0
    move-exception p1

    .line 2086
    const/4 p2, 0x1

    const-string v0, "sendUSSD"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2089
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3

    .line 1905
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1906
    if-eqz v0, :cond_0

    .line 1907
    const/16 v1, 0x1f50

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1913
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    goto :goto_0

    .line 1914
    :catch_0
    move-exception p1

    .line 1915
    const/4 p2, 0x1

    const-string v0, "setCLIR"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1918
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 8

    .line 1959
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/spreadtrum/ims/ImsRadioInterface;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1961
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 2610
    invoke-virtual {p0, p7}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2611
    if-eqz v0, :cond_0

    .line 2612
    const/16 v1, 0x1f72

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p7, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p7

    .line 2615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p7, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2618
    :try_start_0
    iget v1, p7, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setCallForwardUri(IIIILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    goto :goto_0

    .line 2620
    :catch_0
    move-exception p1

    .line 2621
    const/4 p2, 0x1

    const-string p3, "queryColp"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2624
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3

    .line 1941
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1942
    if-eqz v0, :cond_0

    .line 1943
    const/16 v1, 0x1f53

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1949
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    goto :goto_0

    .line 1950
    :catch_0
    move-exception p1

    .line 1951
    const/4 p2, 0x1

    const-string p3, "setCallWaiting"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1954
    :cond_0
    :goto_0
    return-void
.end method

.method public setCarrierImsUserAgent(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3351
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3352
    if-nez v0, :cond_0

    return-void

    .line 3354
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3355
    const/16 v1, 0x1f93

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pau: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3364
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setCarrierImsUserAgent(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    goto :goto_0

    .line 3365
    :catch_0
    move-exception p1

    .line 3366
    const/4 p2, 0x1

    const-string v0, "setCarrierImsUserAgent"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3368
    :goto_0
    goto :goto_1

    .line 3369
    :cond_1
    const-string p1, "setCarrierImsUserAgent: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3370
    if-eqz p2, :cond_2

    .line 3371
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3372
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3371
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3373
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3376
    :cond_2
    :goto_1
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    .line 2050
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsRadioInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2051
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 7

    .line 2057
    invoke-virtual {p0, p6}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    const/16 v1, 0x1f59

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p6

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p6, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2065
    :try_start_0
    iget v1, p6, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2066
    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p5}, Lcom/spreadtrum/ims/ImsRadioInterface;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2065
    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    goto :goto_0

    .line 2067
    :catch_0
    move-exception p1

    .line 2068
    const/4 p2, 0x1

    const-string p3, "setFacilityLockForApp"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2071
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsPcscfAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2872
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2873
    if-eqz v0, :cond_0

    .line 2874
    const/16 v1, 0x1f83

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2880
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setImsPcscfAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2883
    goto :goto_0

    .line 2881
    :catch_0
    move-exception p1

    .line 2882
    const/4 p2, 0x1

    const-string v0, "setImsPcscfAddress"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2885
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRegAddress(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3081
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3082
    if-eqz v0, :cond_0

    .line 3083
    const/16 v1, 0x1f85

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 3087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3090
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setImsRegAddress(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3093
    goto :goto_0

    .line 3091
    :catch_0
    move-exception p1

    .line 3092
    const/4 p2, 0x1

    const-string p3, "setImsRegAddress"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3095
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2540
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2541
    if-eqz v0, :cond_0

    .line 2542
    const/16 v1, 0x1f74

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2548
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setImsSmscAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2551
    goto :goto_0

    .line 2549
    :catch_0
    move-exception p1

    .line 2550
    const/4 p2, 0x1

    const-string v0, "queryColp"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2553
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsVoiceCallAvailability(ILandroid/os/Message;)V
    .locals 3

    .line 2448
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2449
    if-eqz v0, :cond_0

    .line 2450
    const/16 v1, 0x1f6a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2456
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setImsVoiceCallAvailability(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    goto :goto_0

    .line 2457
    :catch_0
    move-exception p1

    .line 2458
    const/4 p2, 0x1

    const-string v0, "queryColp"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2461
    :cond_0
    :goto_0
    return-void
.end method

.method public setLocalTone(ILandroid/os/Message;)V
    .locals 3

    .line 3758
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3759
    if-eqz v0, :cond_0

    .line 3760
    const/16 v1, 0x1fa1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3769
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setLocalTone(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3772
    goto :goto_0

    .line 3770
    :catch_0
    move-exception p1

    .line 3771
    const/4 p2, 0x1

    const-string v0, "setLocalTone"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3774
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 3

    .line 1816
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_0

    .line 1818
    const/16 v1, 0x1f55

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1824
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    goto :goto_0

    .line 1825
    :catch_0
    move-exception p1

    .line 1826
    const/4 p2, 0x1

    const-string v0, "setMute"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1829
    :cond_0
    :goto_0
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 735
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 737
    return-void
.end method

.method public setPAU(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3168
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3169
    if-eqz v0, :cond_0

    .line 3170
    const/16 v1, 0x1f8a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pau: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3179
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setPAU(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3182
    goto :goto_0

    .line 3180
    :catch_0
    move-exception p1

    .line 3181
    const/4 p2, 0x1

    const-string v0, "setPAU"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3184
    :cond_0
    :goto_0
    return-void
.end method

.method public setRTTChannelEnable(ILandroid/os/Message;)V
    .locals 3

    .line 3265
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3266
    if-eqz v0, :cond_0

    .line 3267
    const/16 v1, 0x1f8f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3274
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setRTTChannelEnable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3277
    goto :goto_0

    .line 3275
    :catch_0
    move-exception p1

    .line 3276
    const/4 p2, 0x1

    const-string v0, "setRTTChannelEnable"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3279
    :cond_0
    :goto_0
    return-void
.end method

.method public setRTTEnable(ILandroid/os/Message;)V
    .locals 3

    .line 3188
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3189
    if-eqz v0, :cond_0

    .line 3190
    const/16 v1, 0x1f8b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3197
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setRTTEnable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    goto :goto_0

    .line 3198
    :catch_0
    move-exception p1

    .line 3199
    const/4 p2, 0x1

    const-string v0, "setRttEnable"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3202
    :cond_0
    :goto_0
    return-void
.end method

.method protected setRadioState(IZ)V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    .line 576
    iput p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    .line 578
    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 580
    monitor-exit v0

    return-void

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 585
    iget p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    if-ne v1, p2, :cond_1

    .line 587
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 590
    :cond_1
    iget p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    if-ne p1, p2, :cond_2

    if-eq v1, p2, :cond_2

    .line 592
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 595
    :cond_2
    iget p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    if-eq v1, v2, :cond_3

    .line 597
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 600
    :cond_3
    iget p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mState:I

    if-eqz p1, :cond_4

    if-ne p1, p2, :cond_5

    :cond_4
    if-ne v1, v2, :cond_5

    .line 603
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 605
    :cond_5
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSmsBearer(ILandroid/os/Message;)V
    .locals 3

    .line 3116
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3117
    if-eqz v0, :cond_0

    .line 3118
    const/16 v1, 0x1f87

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3125
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setSmsBearer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    goto :goto_0

    .line 3126
    :catch_0
    move-exception p1

    .line 3127
    const/4 p2, 0x1

    const-string v0, "setSmsBearer"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3130
    :cond_0
    :goto_0
    return-void
.end method

.method public setUceCapabilities(Ljava/util/concurrent/ConcurrentHashMap;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3409
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3410
    if-nez v0, :cond_0

    return-void

    .line 3412
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3413
    const/16 v1, 0x1f98

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3421
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setUceCapabilities(ILjava/util/concurrent/ConcurrentHashMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3424
    goto :goto_0

    .line 3422
    :catch_0
    move-exception p1

    .line 3423
    const/4 p2, 0x1

    const-string v0, "setUceCapabilities"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3425
    :goto_0
    goto :goto_1

    .line 3426
    :cond_1
    const-string p1, "setUceCapabilities: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3427
    if-eqz p2, :cond_2

    .line 3428
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3429
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3428
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3430
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3433
    :cond_2
    :goto_1
    return-void
.end method

.method public setVideoResolution(ILandroid/os/Message;)V
    .locals 3

    .line 2970
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2971
    if-eqz v0, :cond_0

    .line 2972
    const/16 v1, 0x1f7b

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2978
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->setVideoResolution(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    goto :goto_0

    .line 2979
    :catch_0
    move-exception p1

    .line 2980
    const/4 p2, 0x1

    const-string v0, "setVideoResolution"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2983
    :cond_0
    :goto_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 1851
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_0

    .line 1853
    const/16 v1, 0x1f4c

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 1856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1859
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    goto :goto_0

    .line 1860
    :catch_0
    move-exception p1

    .line 1861
    const/4 p2, 0x1

    const-string v0, "startDtmf"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1864
    :cond_0
    :goto_0
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3

    .line 1869
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1870
    if-eqz v0, :cond_0

    .line 1871
    const/16 v1, 0x1f4e

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1877
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    goto :goto_0

    .line 1878
    :catch_0
    move-exception p1

    .line 1879
    const/4 v0, 0x1

    const-string v1, "stopDtmf"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1882
    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3463
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3464
    if-nez v0, :cond_0

    return-void

    .line 3466
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3467
    const/16 v1, 0x1f9a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3475
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->subscribeForCapabilities(ILjava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3478
    goto :goto_0

    .line 3476
    :catch_0
    move-exception p1

    .line 3477
    const/4 p2, 0x1

    const-string v0, "subscribeForCapabilities"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3479
    :goto_0
    goto :goto_1

    .line 3480
    :cond_1
    const-string p1, "subscribeForCapabilities: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3481
    if-eqz p2, :cond_2

    .line 3482
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3483
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3482
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3484
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3487
    :cond_2
    :goto_1
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3

    .line 1710
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_0

    .line 1712
    const/16 v1, 0x1f47

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 1718
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    goto :goto_0

    .line 1719
    :catch_0
    move-exception p1

    .line 1720
    const/4 v0, 0x1

    const-string v1, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1723
    :cond_0
    :goto_0
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3613
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3614
    if-nez v0, :cond_0

    return-void

    .line 3616
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3617
    const/16 v1, 0x1f9f

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p3

    .line 3621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3625
    :try_start_0
    iget p3, p3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->triggerFullNetworkRegistration(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3628
    goto :goto_0

    .line 3626
    :catch_0
    move-exception p1

    .line 3627
    const/4 p2, 0x1

    const-string p3, "triggerFullNetworkRegistration"

    invoke-direct {p0, p2, p3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3629
    :goto_0
    goto :goto_1

    .line 3630
    :cond_1
    const-string p1, "triggerFullNetworkRegistration: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3631
    if-eqz p3, :cond_2

    .line 3632
    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 3633
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 3632
    invoke-static {p3, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3634
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 3637
    :cond_2
    :goto_1
    return-void
.end method

.method public triggerSipDelegateDeregistration(Landroid/os/Message;)V
    .locals 3

    .line 3586
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3587
    if-nez v0, :cond_0

    return-void

    .line 3589
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3590
    const/16 v1, 0x1f9e

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 3594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3598
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->triggerSipDelegateDeregistration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3601
    goto :goto_0

    .line 3599
    :catch_0
    move-exception p1

    .line 3600
    const/4 v0, 0x1

    const-string v1, "triggerSipDelegateDeregistration"

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3602
    :goto_0
    goto :goto_1

    .line 3603
    :cond_1
    const-string v0, "triggerSipDelegateDeregistration: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3604
    if-eqz p1, :cond_2

    .line 3605
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 3606
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 3605
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3607
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3610
    :cond_2
    :goto_1
    return-void
.end method

.method public unRegisterCPSCapabilityChange(Landroid/os/Handler;)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 899
    return-void
.end method

.method public unRegisterCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 926
    return-void
.end method

.method public unRegisterForRealOnImsUssd(Landroid/os/Handler;)V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1068
    return-void
.end method

.method public unRegisterRemoteCapabilitiesRequest(Landroid/os/Handler;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 917
    return-void
.end method

.method public unRegisterResourceTerminated(Landroid/os/Handler;)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 935
    return-void
.end method

.method public unRegisterRttMessageReceived(Landroid/os/Handler;)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 908
    return-void
.end method

.method public unRegisterTerminated(Landroid/os/Handler;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 944
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 741
    return-void
.end method

.method public unregisterForAirPlaneModeExitRequest(Landroid/os/Handler;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1030
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 674
    monitor-exit v0

    .line 675
    return-void

    .line 674
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 722
    return-void
.end method

.method public unregisterForCtccAutoSwitchChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1077
    return-void
.end method

.method public unregisterForEarlyMedia(Landroid/os/Handler;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 870
    return-void
.end method

.method public unregisterForFeatureTagRegistrationChanged(Landroid/os/Handler;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 988
    :cond_0
    return-void
.end method

.method public unregisterForHoldTone(Landroid/os/Handler;)V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 881
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 750
    return-void
.end method

.method public unregisterForImsBearerStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 797
    return-void
.end method

.method public unregisterForImsCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 777
    return-void
.end method

.method public unregisterForImsCallTextInforChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1058
    return-void
.end method

.method public unregisterForImsConfigurationChanged(Landroid/os/Handler;)V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 977
    :cond_0
    return-void
.end method

.method public unregisterForImsCsfbVendorCause(Landroid/os/Handler;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 759
    return-void
.end method

.method public unregisterForImsErrorCause(Landroid/os/Handler;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 768
    return-void
.end method

.method public unregisterForImsHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1021
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 861
    return-void
.end method

.method public unregisterForImsNewSmsStatusReport(Landroid/os/Handler;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 890
    return-void
.end method

.method public unregisterForImsVideoQos(Landroid/os/Handler;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 788
    :cond_0
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForRealSimStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1012
    return-void
.end method

.method public unregisterForReceiveSipMessage(Landroid/os/Handler;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 966
    :cond_0
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 624
    return-void
.end method

.method public unregisterForSendSipMessageResult(Landroid/os/Handler;)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 955
    :cond_0
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 732
    return-void
.end method

.method public unregisterForSubscriberAssociatedUriChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1088
    :cond_0
    return-void
.end method

.method public unregisterForVoWifiAttachStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1003
    return-void
.end method

.method public unregisterForVoWifiEmergencyAttachStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1048
    return-void
.end method

.method public unregisterForVolteEmergencyBearerStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1039
    return-void
.end method

.method public unregisterImsHandoverRequest(Landroid/os/Handler;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 808
    :cond_0
    return-void
.end method

.method public unregisterImsHandoverStatus(Landroid/os/Handler;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 819
    :cond_0
    return-void
.end method

.method public unregisterImsNetworkInfo(Landroid/os/Handler;)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 830
    :cond_0
    return-void
.end method

.method public unregisterImsRegAddress(Landroid/os/Handler;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 841
    :cond_0
    return-void
.end method

.method public unregisterImsWiFiParam(Landroid/os/Handler;)V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 852
    :cond_0
    return-void
.end method

.method unsljLog(I)V
    .locals 2

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2379
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2

    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2383
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLogv(Ljava/lang/String;)V

    .line 2391
    return-void
.end method

.method public updateCLIP(ILandroid/os/Message;)V
    .locals 3

    .line 2954
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 2955
    if-eqz v0, :cond_0

    .line 2956
    const/16 v1, 0x1f70

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 2959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 2962
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->updateCLIP(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2965
    goto :goto_0

    .line 2963
    :catch_0
    move-exception p1

    .line 2964
    const/4 p2, 0x1

    const-string v0, "updateCLIP"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2967
    :cond_0
    :goto_0
    return-void
.end method

.method public updateSipDelegateRegistration(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3559
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRadioServiceProxy(Landroid/os/Message;)Lcom/spreadtrum/ims/ImsRadioServiceProxy;

    move-result-object v0

    .line 3560
    if-nez v0, :cond_0

    return-void

    .line 3562
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/spreadtrum/ims/ImsRadioInterface;->IMS_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3563
    const/16 v1, 0x1f9d

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p2

    .line 3567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3571
    :try_start_0
    iget p2, p2, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/spreadtrum/ims/ImsRadioServiceProxy;->updateSipDelegateRegistration(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3574
    goto :goto_0

    .line 3572
    :catch_0
    move-exception p1

    .line 3573
    const/4 p2, 0x1

    const-string v0, "updateSipDelegateRegistration"

    invoke-direct {p0, p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3575
    :goto_0
    goto :goto_1

    .line 3576
    :cond_1
    const-string p1, "updateSipDelegateRegistration: REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 3577
    if-eqz p2, :cond_2

    .line 3578
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 3579
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3578
    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3580
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3583
    :cond_2
    :goto_1
    return-void
.end method
