.class public Lcom/spreadtrum/ims/ImsRegister;
.super Ljava/lang/Object;
.source "ImsRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsRegister$BaseHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_ENABLE_IMS:I = 0xce

.field private static final EVENT_GET_RTT_ALLOWED:I = 0xd2

.field private static final EVENT_GET_VOLTE_ALLOWED_PLMN:I = 0xd1

.field private static final EVENT_IMS_BEARER_ESTABLISTED:I = 0xcd

.field private static final EVENT_INIT_ISIM_DONE:I = 0xcc

.field private static final EVENT_RADIO_CAPABILITY_CHANGED:I = 0xcf

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0xcb

.field private static final EVENT_RECORDS_LOADED:I = 0xca

.field private static final EVENT_SIM_REFRESH:I = 0xd0

.field static final OEM_SPN_OVERRIDE_PATH:Ljava/lang/String; = "telephony/spn-conf.xml"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"

.field public static final PROP_RTT_ALLOWED_BY_CP:Ljava/lang/String; = "gsm.sys.sim.rtt.allowed"

.field public static final PROP_VOLTE_ALLOWED_PLMN:Ljava/lang/String; = "gsm.sys.sim.volte.allowedplmn"

.field private static final SLOTTWO_PHONE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsRegister"


# instance fields
.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsRegistered:Z

.field private mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

.field private mIMSBearerEstablished:Z

.field private mIccId:Ljava/lang/String;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mInitISIMDone:Z

.field private mLastNumeric:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mPhoneCount:I

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSIMReady:Z

.field private mServiceId:I

.field public mSimChanged:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/ImsRegister;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mImsService:Lcom/spreadtrum/ims/ImsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mLastNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryCount(Lcom/spreadtrum/ims/ImsRegister;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceId(Lcom/spreadtrum/ims/ImsRegister;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mServiceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/spreadtrum/ims/ImsRegister;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsRegister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentImsRegistered(Lcom/spreadtrum/ims/ImsRegister;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mCurrentImsRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIMSBearerEstablished(Lcom/spreadtrum/ims/ImsRegister;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mIMSBearerEstablished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInitISIMDone(Lcom/spreadtrum/ims/ImsRegister;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mInitISIMDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mLastNumeric:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mNumeric:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryCount(Lcom/spreadtrum/ims/ImsRegister;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mSetUserAgent(Lcom/spreadtrum/ims/ImsRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRegister;->SetUserAgent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCarrierConfigChanged(Lcom/spreadtrum/ims/ImsRegister;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRegister;->handleCarrierConfigChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitISIM(Lcom/spreadtrum/ims/ImsRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRegister;->initISIM()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRegister;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/spreadtrum/ims/ImsRegister;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;I)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mLastNumeric:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mRetryCount:I

    .line 57
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mIccId:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 82
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 83
    iput p4, p0, Lcom/spreadtrum/ims/ImsRegister;->mServiceId:I

    .line 84
    invoke-static {p4, p1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    .line 86
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneCount:I

    .line 87
    new-instance p1, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;-><init>(Lcom/spreadtrum/ims/ImsRegister;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    .line 88
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 p3, 0xcb

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 p3, 0xcd

    invoke-virtual {p1, p2, p3, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsBearerStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsBearerState(Landroid/os/Message;)V

    .line 91
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 p3, 0xd0

    invoke-virtual {p1, p2, p3, p4}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/spreadtrum/ims/ImsRegister$1;

    invoke-direct {p3, p0}, Lcom/spreadtrum/ims/ImsRegister$1;-><init>(Lcom/spreadtrum/ims/ImsRegister;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method private SetUserAgent()V
    .locals 4

    .line 468
    const-string v0, "ro.config.useragent"

    const-string v1, "SPRD VOLTE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+SPENGMDVOLTE=22,1,\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetUserAgent :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private getIccId()Ljava/lang/String;
    .locals 2

    .line 414
    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    .line 415
    iget v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getIccIdFromIccStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrimaryCard()I
    .locals 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-getPrimaryCard() mPhoneCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logd(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 362
    return v1

    .line 365
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 366
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 367
    return v1

    .line 369
    :cond_1
    return v0
.end method

.method public static getPrimaryCard(I)I
    .locals 2

    .line 375
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 376
    return v0

    .line 379
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 380
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 381
    return v0

    .line 383
    :cond_1
    return p0
.end method

.method private static getPrimaryCardFromProp([I)I
    .locals 4

    .line 387
    const/4 v0, 0x0

    aget v1, p0, v0

    const/16 v2, 0xfe

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 400
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrimaryCardFromProp() workMode[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegister"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    aget p0, p0, v3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14

    if-ne p0, v1, :cond_1

    .line 406
    :cond_0
    return v3

    .line 394
    :sswitch_1
    aget p0, p0, v3

    if-eq p0, v2, :cond_1

    .line 395
    return v3

    .line 389
    :sswitch_2
    aget p0, p0, v3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    .line 390
    return v3

    .line 410
    :cond_1
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private handleCarrierConfigChanged(Landroid/content/Intent;)V
    .locals 3

    .line 478
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 479
    iget v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarrierConfigChanged: phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 481
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 482
    iget v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    if-ne p1, v0, :cond_0

    .line 483
    const-string p1, "receive sub carrier config after sim loaded"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    .line 488
    :cond_0
    return-void
.end method

.method private initISIM()V
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsRegister;->isRadioOn()Z

    move-result v0

    .line 344
    iget v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mServiceId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRegister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 346
    iget v3, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 347
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initISIM() : mSIMReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsRegister;->mSIMReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mPhone.isRadioOn() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | isLteEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 352
    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsRegister;->mSIMReady:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mInitISIMDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    if-eqz v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->initISIM(Landroid/os/Message;)V

    .line 357
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    .line 432
    sget-boolean v0, Lcom/spreadtrum/ims/ImsRegister;->DBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsRegister"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsRegister"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method private onUpdateIccAvailability()V
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRegister;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateIccAvailability-> mIccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRegister;->mIccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIcc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 422
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mIccId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mIccId:Ljava/lang/String;

    .line 424
    const-string v0, "New card found"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mInitISIMDone:Z

    .line 426
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mSIMReady:Z

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mSimChanged:Z

    .line 429
    :cond_0
    return-void
.end method


# virtual methods
.method public enableIms()V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms ->mIMSBearerEstablished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mIMSBearerEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInitISIMDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mInitISIMDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "enableIms -> no need for Ims Single Stack"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 446
    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms ->ImsConfigImpl.isVolteEnabledBySystemProperties():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 452
    return-void

    .line 454
    :cond_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mIMSBearerEstablished:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mInitISIMDone:Z

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    :cond_2
    return-void
.end method

.method public isRadioOn()Z
    .locals 2

    .line 337
    iget v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mServiceId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 339
    :goto_0
    return v1
.end method

.method public onImsPDNReady()V
    .locals 1

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mIMSBearerEstablished:Z

    .line 461
    return-void
.end method

.method public sendIccCardChangeEvent()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRegister;->onUpdateIccAvailability()V

    .line 110
    return-void
.end method

.method public sendRecordsLoadedEvent()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public sendRecordsReadyEvent()V
    .locals 3

    .line 117
    const-string v0, "sendRecordsReadyEvent > sim is ready"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsRegister;->logi(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister;->mHandler:Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getVoLTEAllowedPLMN(Landroid/os/Message;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsRegister;->mSIMReady:Z

    .line 120
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsRegister;->initISIM()V

    .line 121
    return-void
.end method
