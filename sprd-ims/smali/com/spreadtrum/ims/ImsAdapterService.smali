.class public Lcom/spreadtrum/ims/ImsAdapterService;
.super Landroid/app/Service;
.source "ImsAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsAdapterService$ImsServiceCapability;
    }
.end annotation


# static fields
.field public static final CAPABILITY_EMERGENCY_OVER_MMTEL:J = 0x1L

.field public static final CAPABILITY_MAX_INDEX:J

.field public static final CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final UNISOC_IMS_SERVICE_COMMON_PERMISSION:Ljava/lang/String; = "com.spreadtrum.ims.permisson.IMS_COMMON"


# instance fields
.field private mImsAdapter:Lcom/spreadtrum/ims/ImsAdapter;

.field protected final mImsServiceController:Landroid/os/IBinder;

.field private final mImsServiceExBinder:Lcom/android/ims/internal/IImsServiceEx$Stub;

.field private final mImsUtExBinder:Lcom/android/ims/internal/IImsUtEx$Stub;

.field private mIsSingleImsStack:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsAdapter:Lcom/spreadtrum/ims/ImsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ImsAdapterService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smlogi(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/spreadtrum/ims/ImsAdapterService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsanitizeCapabilities(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/spreadtrum/ims/ImsAdapterService;->sanitizeCapabilities(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    const-class v0, Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsAdapterService;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/spreadtrum/ims/ImsAdapterService;->DBG:Z

    .line 89
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/spreadtrum/ims/ImsAdapterService;->CAPABILITY_MAX_INDEX:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mIsSingleImsStack:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsAdapter:Lcom/spreadtrum/ims/ImsAdapter;

    .line 94
    new-instance v0, Lcom/spreadtrum/ims/ImsAdapterService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsAdapterService$1;-><init>(Lcom/spreadtrum/ims/ImsAdapterService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsServiceController:Landroid/os/IBinder;

    .line 186
    new-instance v0, Lcom/spreadtrum/ims/ImsAdapterService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsAdapterService$2;-><init>(Lcom/spreadtrum/ims/ImsAdapterService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsServiceExBinder:Lcom/android/ims/internal/IImsServiceEx$Stub;

    .line 641
    new-instance v0, Lcom/spreadtrum/ims/ImsAdapterService$3;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsAdapterService$3;-><init>(Lcom/spreadtrum/ims/ImsAdapterService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsUtExBinder:Lcom/android/ims/internal/IImsUtEx$Stub;

    return-void
.end method

.method public static getBooleanCarrierConfigBySlotId(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 769
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsAdapterService;->getSubIdBySlotId(I)I

    move-result p0

    .line 770
    nop

    .line 771
    const-string v0, "carrier_config"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 772
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 775
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 2

    .line 779
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    .line 780
    nop

    .line 781
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 782
    const/4 v0, 0x0

    aget p0, p0, v0

    goto :goto_0

    .line 784
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private initAdapter()V
    .locals 1

    .line 760
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mIsSingleImsStack:Z

    .line 764
    new-instance v0, Lcom/spreadtrum/ims/ImsService;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ImsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsAdapter:Lcom/spreadtrum/ims/ImsAdapter;

    .line 766
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 794
    sget-boolean v0, Lcom/spreadtrum/ims/ImsAdapterService;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 795
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsAdapterService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    .line 788
    sget-boolean v0, Lcom/spreadtrum/ims/ImsAdapterService;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsAdapterService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    .line 800
    sget-boolean v0, Lcom/spreadtrum/ims/ImsAdapterService;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsAdapterService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    return-void
.end method

.method private static sanitizeCapabilities(J)J
    .locals 4

    .line 706
    nop

    .line 708
    sget-wide v0, Lcom/spreadtrum/ims/ImsAdapterService;->CAPABILITY_MAX_INDEX:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/16 v1, -0x1

    shl-long v0, v1, v0

    .line 710
    not-long v0, v0

    and-long/2addr p0, v0

    .line 714
    const-wide/16 v0, -0x2

    and-long/2addr p0, v0

    .line 715
    return-wide p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsAdapterService onBind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->logi(Ljava/lang/String;)V

    .line 744
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isImsEnabledBySystemProperties(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVoWiFiEnabledByBoard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    const-string p1, "Could Not Start Ims Service because volte disabled by system properties!"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsAdapterService;->logw(Ljava/lang/String;)V

    .line 747
    const/4 p1, 0x0

    return-object p1

    .line 749
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 750
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1

    .line 756
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 720
    const-string v0, "ImsAdapterService onCreate."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->logi(Ljava/lang/String;)V

    .line 721
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isImsEnabledBySystemProperties(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVoWiFiEnabledByBoard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const-string v0, "Could Not Start Ims Service because volte disabled by system properties!"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->logw(Ljava/lang/String;)V

    .line 724
    return-void

    .line 726
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 727
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsAdapterService;->initAdapter()V

    .line 728
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsServiceExBinder:Lcom/android/ims/internal/IImsServiceEx$Stub;

    const-string v1, "ims_ex"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 729
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService;->mImsUtExBinder:Lcom/android/ims/internal/IImsUtEx$Stub;

    const-string v1, "ims_ut_ex"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 730
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 734
    const-string v0, "ImsAdapterService Destroyed."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->logi(Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 736
    return-void
.end method
