.class public Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.super Landroid/app/Service;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;,
        Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;,
        Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;,
        Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;,
        Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_SEND_NOTIFY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneMode:I

.field private mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

.field private mIsWifiRoaming:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mPhoneCount:I

.field private mPrimaryCardId:I

.field mReceiver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

.field private mSimAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;",
            ">;"
        }
    .end annotation
.end field

.field mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

.field private mSupportDualVoWifi:Z

.field private mWifiEnabledState:I

.field private mWifiIPAddr:I

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field mWifiObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

.field private mWifiStatus:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryCardId(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportDualVoWifi(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSupportDualVoWifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/net/LinkProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLinkPropertiesChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiStateChangeBroadCast(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->handleWifiStateChangeBroadCast(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeWFCPreferModeChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->maybeWFCPreferModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAirplaneModeChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onAirplaneModeChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPowerOff(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onPowerOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenStateChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onScreenStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiStatusChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiStatusChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    .line 65
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mAirplaneMode:I

    .line 66
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    .line 67
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiIPAddr:I

    .line 68
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I

    .line 69
    iput-boolean v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSupportDualVoWifi:Z

    .line 70
    iput-boolean v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mIsWifiRoaming:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 75
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 77
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    .line 78
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 79
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 81
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    .line 83
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

    .line 85
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mReceiver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

    return-void
.end method

.method private convertWifiState(I)I
    .locals 0

    .line 406
    packed-switch p1, :pswitch_data_0

    .line 417
    const/4 p1, -0x1

    return p1

    .line 414
    :pswitch_0
    const/4 p1, 0x1

    return p1

    .line 412
    :pswitch_1
    const/4 p1, 0x2

    return p1

    .line 410
    :pswitch_2
    const/4 p1, 0x0

    return p1

    .line 408
    :pswitch_3
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getWifiStatus()I
    .locals 1

    monitor-enter p0

    .line 310
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 2

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "New wifi link properties is updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 249
    iget p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 250
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 252
    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiIPAddr:I

    if-eq p1, v1, :cond_1

    .line 253
    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mIsWifiRoaming:Z

    .line 254
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiStatusChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleWifiStateChangeBroadCast(Landroid/content/Intent;)V
    .locals 3

    .line 363
    const-string v0, "wifi_state"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 365
    if-ne p1, v1, :cond_0

    .line 366
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "WiFi switch is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiEnabledStateChanged(I)V

    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 369
    sget-object p1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi switch is enabled, wifi state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getCurWifiState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->setWifiEnabledStatus()V

    .line 371
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWifiStatus()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getCurWifiState()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 375
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->setWifiStatus(I)V

    .line 376
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getCurWifiState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiStatusChanged(I)V

    goto :goto_0

    .line 378
    :cond_1
    if-nez p1, :cond_2

    .line 379
    sget-object p1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v0, "WiFi switch is disabling."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWifiStatus()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 383
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiEnabledStateChanged(I)V

    .line 386
    :cond_2
    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getPrimaryCardId()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    .line 190
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getAirplaneMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onAirplaneModeChanged(I)V

    .line 193
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getCurWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->onWifiStatusChanged(I)V

    .line 196
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->notifyAllSimStates()V

    .line 197
    return-void
.end method

.method private isWifiEnabled(I)Z
    .locals 1

    .line 422
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized maybeWFCPreferModeChanged()V
    .locals 7

    monitor-enter p0

    .line 215
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Maybe WFC mode changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    if-ge v1, v2, :cond_4

    .line 218
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    .line 220
    nop

    .line 221
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    invoke-virtual {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCPrefMode(IZ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;->updateValue(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v4

    .line 222
    :goto_1
    iget-object v5, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    invoke-virtual {p0, v1, v4}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCPrefMode(IZ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;->updateValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v0

    .line 223
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 224
    sget-object v3, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The phone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] changed the WFC pref mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyWFCPrefModeState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_4
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onAirplaneModeChanged(I)V
    .locals 3

    monitor-enter p0

    .line 345
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode changed. new airplane mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mAirplaneMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The new airplane mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") is same as the old."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 353
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mAirplaneMode:I

    .line 356
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgAirplaneMode;

    invoke-direct {p1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgAirplaneMode;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgAirplaneMode;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 358
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrAirplaneMode;

    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mAirplaneMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrAirplaneMode;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgAirplaneMode;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 359
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onPowerOff()V
    .locals 3

    .line 389
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Power off, notify the event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgPowerOff;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgPowerOff;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgPowerOff;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 394
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method

.method private onScreenStateChanged(I)V
    .locals 2

    .line 399
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgScreenState;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgScreenState;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgScreenState;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 401
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrScreenState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrScreenState;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgScreenState;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 402
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method private declared-synchronized onWifiEnabledStateChanged(I)V
    .locals 3

    monitor-enter p0

    .line 322
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi enabled state changed. wifi enabled state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The wifi enbaled state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") is same as the old."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I

    .line 333
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;

    invoke-direct {p1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 335
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;

    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->convertWifiState(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 337
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;

    .line 338
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->isWifiEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;-><init>(Ljava/lang/Integer;)V

    .line 337
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 341
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    invoke-virtual {v0, v2, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onWifiStatusChanged(I)V
    .locals 6

    monitor-enter p0

    .line 261
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi status changed. new status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mIsWifiRoaming:Z

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The new wifi status("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") is same as the old, and wifi is not in roaming status."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    .line 272
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;

    invoke-direct {p1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 274
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;

    iget v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 276
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 279
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 287
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    iget v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiIPAddr:I

    if-ne v2, v0, :cond_2

    move v2, v4

    goto :goto_0

    .line 289
    :cond_2
    move v2, v3

    .line 290
    :goto_0
    new-instance v5, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiSameAddr;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiSameAddr;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v5}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 291
    new-instance v2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiBSSID;

    invoke-direct {v2, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiBSSID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 292
    iput-boolean v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mIsWifiRoaming:Z

    .line 295
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiIPAddr:I

    goto :goto_3

    .line 282
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get valid wifi info, as it is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 296
    :cond_4
    if-nez v1, :cond_6

    .line 298
    :try_start_2
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;

    .line 299
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 300
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;-><init>(Ljava/lang/Integer;)V

    .line 298
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 303
    iput v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiIPAddr:I

    goto :goto_4

    .line 296
    :cond_6
    :goto_3
    nop

    .line 306
    :goto_4
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    invoke-virtual {v0, v4, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setWifiEnabledStatus()V
    .locals 1

    monitor-enter p0

    .line 318
    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiEnabledState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setWifiStatus(I)V
    .locals 0

    monitor-enter p0

    .line 314
    :try_start_0
    iput p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method getAirplaneMode()I
    .locals 1

    .line 501
    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/util/Utils;->isAirplaneModeOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :cond_0
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0
.end method

.method getCurWifiState()I
    .locals 8

    .line 507
    nop

    .line 508
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 509
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 510
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 515
    :cond_0
    array-length v3, v1

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 516
    if-eqz v6, :cond_1

    .line 517
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 518
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 519
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWifiState(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0

    .line 515
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 524
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "There isn\'t any network. Handle as wifi disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v2

    .line 512
    :cond_3
    :goto_1
    return v2
.end method

.method getPrimaryCardId()I
    .locals 6

    .line 433
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 434
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 435
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get the primary card as there isn\'t valid sub id."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v1

    .line 439
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    .line 440
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v2

    .line 441
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 443
    sget-object v3, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get the primary card as current sub["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] isn\'t ready. state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v1

    .line 448
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method getVoLTEEnabled(I)I
    .locals 2

    .line 488
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 490
    return v0

    .line 493
    :cond_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 495
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVolteEnabledBySystemProperties()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 496
    :goto_0
    return v0
.end method

.method getWFCEnabled(I)I
    .locals 1

    .line 453
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 455
    const/4 p1, 0x0

    return p1

    .line 458
    :cond_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result p1

    .line 459
    return p1
.end method

.method getWFCPrefMode(IZ)I
    .locals 4

    .line 464
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 466
    return v0

    .line 469
    :cond_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p2

    .line 470
    packed-switch p2, :pswitch_data_0

    .line 482
    sget-object v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the primary card("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") WFC mode. mode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v0

    .line 478
    :pswitch_0
    const/4 p1, 0x3

    return p1

    .line 476
    :pswitch_1
    const/4 p1, 0x2

    return p1

    .line 474
    :pswitch_2
    return v0

    .line 472
    :pswitch_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getWifiState(Landroid/net/NetworkInfo$State;)I
    .locals 2

    .line 530
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    .line 531
    const/4 p1, 0x1

    return p1

    .line 532
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 533
    return v1

    .line 534
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_2

    .line 535
    const/4 p1, 0x2

    return p1

    .line 537
    :cond_2
    return v1
.end method

.method declared-synchronized maybeVoLTEEnabledChanged()V
    .locals 5

    monitor-enter p0

    .line 232
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Maybe VoLTE enabled state changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    .line 237
    iget-object v2, v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getVoLTEEnabled(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;->updateValue(Ljava/lang/Object;)Z

    move-result v2

    .line 238
    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] changed the VoLTE enabled state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyVoLTEEnabledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized maybeWFCEnabledChanged()V
    .locals 5

    monitor-enter p0

    .line 201
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Maybe WFC enabled state changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    .line 206
    iget-object v2, v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCEnabled(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;->updateValue(Ljava/lang/Object;)Z

    move-result v2

    .line 207
    if-eqz v2, :cond_0

    .line 208
    sget-object v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] changed the WFC enabled state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyWFCEnabledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyAllSimStates()V
    .locals 6

    .line 542
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    .line 544
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getPrimaryCardId()I

    move-result v3

    iput v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    .line 547
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    iget v4, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    const/4 v5, 0x1

    if-ne v1, v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;->updateValue(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->simStateIsReady(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;->updateValue(Ljava/lang/Object;)Z

    goto :goto_2

    .line 553
    :cond_1
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;->updateValue(Ljava/lang/Object;)Z

    .line 557
    :goto_2
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCEnabled(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;->updateValue(Ljava/lang/Object;)Z

    .line 559
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    invoke-virtual {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCPrefMode(IZ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;->updateValue(Ljava/lang/Object;)Z

    .line 560
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    invoke-virtual {p0, v1, v5}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getWFCPrefMode(IZ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;->updateValue(Ljava/lang/Object;)Z

    .line 562
    iget-object v3, v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getVoLTEEnabled(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;->updateValue(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual {v2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyAllState()V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_2
    return-void
.end method

.method notifySimStates(I)V
    .locals 6

    .line 581
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 582
    sget-object p1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v0, "The phone id is invalid, needn\'t notify the phone state."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    .line 587
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getPrimaryCardId()I

    move-result v1

    iput v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    .line 589
    nop

    .line 590
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->simStateIsReady(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 591
    iget-object v1, v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;->updateValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 593
    :cond_2
    iget-object v1, v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;->updateValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 597
    :goto_0
    iget-object v4, v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    .line 598
    iget v5, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPrimaryCardId:I

    if-ne p1, v5, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 597
    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;->updateValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 601
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 602
    invoke-virtual {v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyAllState()V

    .line 604
    :cond_7
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 182
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 113
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities;->isSupportDualVoWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSupportDualVoWifi:Z

    .line 115
    const-string v0, "CMCP_CPAP"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mCmChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 119
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 120
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    .line 121
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSimAttrs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;

    invoke-direct {v4, p0, p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/content/Context;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "PhoneStateMonitor"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 128
    new-instance v2, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    invoke-direct {v2, p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    .line 131
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    .line 132
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 137
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 138
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

    .line 139
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 141
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 146
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mReceiver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mReceiver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->init()V

    .line 160
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Start phone state monitor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mSubObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mWifiObserver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->mReceiver:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 177
    return-void
.end method

.method simStateIsReady(I)Z
    .locals 1

    .line 569
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result p1

    .line 570
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 573
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
