.class public Lcom/spreadtrum/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;,
        Lcom/spreadtrum/ims/ImsConfigImpl$VideoQualityConstants;
    }
.end annotation


# static fields
.field private static final ACTION_GET_IMS_CALL_AVAILABILITY:I = 0x67

.field private static final ACTION_GET_VT_RESOLUTION:I = 0x65

.field private static final ACTION_SET_IMS_CALL_AVAILABILITY:I = 0x68

.field private static final ACTION_SET_IMS_RTT_AVAILABILITY:I = 0x6c

.field private static final ACTION_SET_SMS_OVER_IP_AVAILABILITY:I = 0x6a

.field private static final ACTION_SET_VT_RESOLUTION:I = 0x66

.field private static final EVENT_NOTIFY_INT_CONFIG_CHANGED:I = 0x6e

.field private static final EVENT_SET_IMS_RTT_DONE:I = 0x6d

.field private static final EVENT_SET_SMS_OVER_IP_DONE:I = 0x6b

.field private static final EVENT_VOLTE_CALL_DEFINED_MEDIA_TYPE:I = 0x69

.field private static final SMS_OVER_IP:Ljava/lang/String; = "sms_over_ip"

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_CALL_RESOLUTION:Ljava/lang/String; = "vt_resolution"

.field private static final VOLTE:Ljava/lang/String; = "volte"

.field private static final VOWIFI:Ljava/lang/String; = "vowifi"

.field public static final VT_RESOLUTION_720P:I = 0x0

.field public static final VT_RESOLUTION_CIF:I = 0x5

.field public static final VT_RESOLUTION_INVALID:I = -0x1

.field public static final VT_RESOLUTION_QCIF:I = 0x6

.field public static final VT_RESOLUTION_QVGA_15:I = 0x9

.field public static final VT_RESOLUTION_QVGA_30:I = 0xa

.field public static final VT_RESOLUTION_QVGA_REVERSED_15:I = 0x3

.field public static final VT_RESOLUTION_QVGA_REVERSED_30:I = 0x4

.field public static final VT_RESOLUTION_VALUE:Ljava/lang/String; = "vt_resolution"

.field public static final VT_RESOLUTION_VGA_15:I = 0x7

.field public static final VT_RESOLUTION_VGA_30:I = 0x8

.field public static final VT_RESOLUTION_VGA_REVERSED_15:I = 0x1

.field public static final VT_RESOLUTION_VGA_REVERSED_30:I = 0x2


# instance fields
.field private mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

.field private mCameraResolution:I

.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mContext:Landroid/content/Context;

.field public mDefaultSmsOverIp:I

.field public mDefaultVolte:I

.field public mDefaultVowifi:I

.field public mDefaultVtResolution:I

.field private mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsServiceId:I

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mPhoneId:I

.field private mRttEnabled:I

.field private mRttUserEnabled:I

.field private mSharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmsOverIp:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsRadioInterface;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsService;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceImpl(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsServiceImpl;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttUserEnabled(Lcom/spreadtrum/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttUserEnabled:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsOverIp(Lcom/spreadtrum/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRttEnabled(Lcom/spreadtrum/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttEnabled:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmsOverIp(Lcom/spreadtrum/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;ILcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsService;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    .line 78
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    .line 86
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttEnabled:I

    .line 89
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttUserEnabled:I

    .line 91
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVolte:I

    .line 92
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVowifi:I

    .line 643
    new-instance v0, Lcom/spreadtrum/ims/ImsConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsConfigImpl$1;-><init>(Lcom/spreadtrum/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 213
    const-string v0, "persist.sys.ims.vt_resolution"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 214
    iput v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    .line 216
    :cond_0
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mPhoneId:I

    .line 217
    iput-object p4, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 218
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 219
    new-instance p2, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    .line 220
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 221
    iput-object p5, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 222
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 223
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 225
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "vt_resolution"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    .line 227
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sms_over_ip"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    .line 228
    iput p3, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    .line 229
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsService;->getAcsController(I)Lcom/spreadtrum/ims/acs/AcsController;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

    .line 230
    return-void
.end method

.method public static isImsEnabledBySystemProperties(Landroid/content/Context;)Z
    .locals 3

    .line 630
    # [sprd-ims] null-context short-circuit forced to true (was return false)
    const/4 v0, 0x1

    return v0

    if-nez p0, :cond_0

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1110108

    .line 632
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 633
    const-string v1, "persist.vendor.sys.volte.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 634
    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    .line 633
    :cond_2
    # [sprd-ims] forced enable: LOS20 GSI has no Unisoc volTte props/overlays,
    # so the framework-res + persist.* gates both read false and the service
    # never started. Preserve the original diagnostics above, override result.
    const/4 v0, 0x1
    return v0
.end method

.method public static isVoWiFiEnabledByBoard(Landroid/content/Context;)Z
    .locals 1

    .line 639
    # [sprd-ims] null-context short-circuit forced to true (was return false)
    const/4 p0, 0x1

    return p0

    if-nez p0, :cond_0

    .line 640
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111010a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    # [sprd-ims] forced enable: framework-res 0x111010a
    # (config_device_wfc_ims_enabled) is undefined on the LOS20 GSI.
    const/4 p0, 0x1
    return p0
.end method

.method public static isVolteEnabledBySystemProperties()Z
    .locals 2

    .line 626
    const-string v0, "persist.vendor.sys.volte.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateRttConfig(I)V
    .locals 3

    .line 661
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRttConfig : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttUserEnabled:I

    .line 663
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const/16 v1, 0x6c

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 664
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 665
    return-void
.end method


# virtual methods
.method public configSmsBearer(I)V
    .locals 5

    .line 583
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_over_ip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 584
    sget-object v1, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsOverIpToIMS : smsBearerByUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mDefaultSmsOverIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-ne v0, v2, :cond_0

    .line 588
    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    .line 589
    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    goto :goto_0

    .line 593
    :cond_0
    iput v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSmsOverIp:I

    .line 594
    if-eq v0, p1, :cond_1

    .line 595
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->removeMessages(I)V

    .line 596
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    :cond_1
    :goto_0
    return-void
.end method

.method public getConfigInt(I)I
    .locals 3

    .line 98
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVideoQualityFromPreference()I

    move-result p1

    .line 100
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoQuality qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return p1

    .line 102
    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getSmsOverIp()I

    move-result p1

    .line 104
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsOverIp type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return p1

    .line 107
    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getSmsOverIp()I

    .line 109
    sget-object p1, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    const-string v0, "getConfigInt for RTT_SETTING_ENABLED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mRttUserEnabled:I

    return p1

    .line 113
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVolte()I

    move-result p1

    .line 115
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolte type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return p1

    .line 117
    :cond_3
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVowifi()I

    move-result p1

    .line 119
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVowifi type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return p1

    .line 122
    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 0

    .line 127
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 1

    .line 451
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    const/16 p1, 0x33

    if-ne p2, p1, :cond_0

    .line 453
    if-eqz p3, :cond_0

    .line 454
    invoke-virtual {p0, p3}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 457
    :cond_0
    return-void
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 0

    .line 411
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProvisionedValue(I)I
    .locals 0

    .line 400
    const/4 p1, 0x0

    return p1
.end method

.method public getServiceId()I
    .locals 1

    .line 669
    iget v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    return v0
.end method

.method public getSmsOverIp()I
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_over_ip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 4

    .line 504
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getVideoQuality  String:vt_resolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVideoQualityFromPreference()I

    move-result v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 508
    return-void
.end method

.method public getVideoQualityFromPreference()I
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vt_resolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVolte()I
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVolte:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .line 492
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result v0

    return v0
.end method

.method public getVowifi()I
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vowifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVowifi:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public sendVideoQualitytoIMS(I)V
    .locals 3

    .line 549
    const-string v0, "persist.sys.ims.vt_resolution"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 551
    iput v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    .line 552
    iput v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    goto :goto_0

    .line 554
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    .line 555
    iput p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    .line 558
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVideoQualitytoIMS : mCameraResolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mCameraResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mDefaultVtResolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->removeMessages(I)V

    .line 562
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    return-void
.end method

.method public setConfig(II)I
    .locals 7

    .line 133
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x37

    if-ne p1, v2, :cond_1

    .line 134
    sget-object p1, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoQuality from screen qualiy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsConfigImpl;->setVideoQualityPreference(I)V

    .line 137
    if-ne p2, v0, :cond_0

    .line 138
    return v0

    .line 141
    :cond_0
    return v1

    .line 142
    :cond_1
    const/16 v2, 0xe

    if-ne p1, v2, :cond_2

    .line 143
    sget-object p1, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsOverIp set value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsConfigImpl;->setSmsOverIp(I)V

    .line 145
    return v1

    .line 147
    :cond_2
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 148
    sget-object p1, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigInt set value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/ImsService;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsConfigImpl;->updateRttConfig(I)V

    .line 151
    return v1

    .line 153
    :cond_3
    const-string p2, "setConfigInt : RTT not allowed by CP, return failed."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 p1, 0x1

    return p1

    .line 156
    :cond_4
    const/16 v2, 0xa

    const-wide/16 v3, 0x1f4

    const/16 v5, 0x6e

    if-ne p1, v2, :cond_5

    .line 157
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVolte set value = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsConfigImpl;->setVolte(I)V

    .line 159
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    .line 160
    invoke-virtual {v0, v5, p1, p2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1, v3, v4}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    return v1

    .line 162
    :cond_5
    const/16 v2, 0x1c

    if-ne p1, v2, :cond_6

    .line 163
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVowifi set value = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsConfigImpl;->setVowifi(I)V

    .line 165
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    .line 166
    invoke-virtual {v0, v5, p1, p2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1, v3, v4}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return v1

    .line 170
    :cond_6
    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 0

    .line 176
    const/4 p1, -0x1

    return p1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 471
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFeatureValue: feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    const/16 v0, 0x33

    if-ne p2, v0, :cond_0

    .line 475
    if-eqz p4, :cond_1

    .line 476
    invoke-virtual {p0, p3, p4}, Lcom/spreadtrum/ims/ImsConfigImpl;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    goto :goto_0

    .line 478
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 479
    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatureForAllService()V

    .line 483
    :cond_1
    :goto_0
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 0

    .line 437
    const/4 p1, 0x0

    return p1
.end method

.method public setProvisionedValue(II)I
    .locals 0

    .line 424
    const/4 p1, 0x0

    return p1
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "acs.preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_vendor"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rcs_profile"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rcs_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public setSmsOverIp(I)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_over_ip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    return-void
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 520
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoQuality from screen! qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->setVideoQualityPreference(I)V

    .line 522
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mHandler:Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 524
    return-void
.end method

.method public setVideoQualityPreference(I)V
    .locals 3

    .line 528
    sget-object v0, Lcom/spreadtrum/ims/ImsConfigImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoQualityPreference, qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 530
    iget p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vt_resolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    return-void
.end method

.method public setVolte(I)V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 570
    return-void
.end method

.method public setVowifi(I)V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vowifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mImsServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 578
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl;->mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsController;->triggerReconfiguration()V

    .line 193
    return-void
.end method

.method public updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 187
    return-void
.end method
