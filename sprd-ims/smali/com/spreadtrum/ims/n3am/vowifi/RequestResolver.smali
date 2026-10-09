.class public Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;
.super Landroid/app/Service;
.source "RequestResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;,
        Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;,
        Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;,
        Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_GET_COUNTRY:I = 0x0

.field private static final MSG_GET_WIFI_RSSI:I = 0x1

.field private static final MSG_OBSERVE_WIFI_START:I = 0x2

.field private static final MSG_OBSERVE_WIFI_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field private mCmMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;

.field private mHandler:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

.field private mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field private mImsMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCmMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->notifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    .line 48
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 49
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;

    .line 52
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 53
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;

    return-void
.end method

.method private notifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V
    .locals 3

    .line 178
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response the country code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string p1, "Failed to notify the country code as the response is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 186
    iget v1, p1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mRequestMsgId:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 188
    :sswitch_0
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrCountryCode;

    invoke-direct {v0, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrCountryCode;-><init>(Ljava/lang/String;)V

    .line 189
    goto :goto_0

    .line 191
    :sswitch_1
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsAttrCountryCode;

    invoke-direct {v0, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsAttrCountryCode;-><init>(Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->addRspAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)V

    .line 196
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->send()V

    .line 197
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x81 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Z)V
    .locals 2

    .line 132
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 133
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->notifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    move-result-object p2

    .line 137
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;

    invoke-direct {v0, p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;)V

    const/16 p1, 0x3a98

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->getCountry(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;I)Z

    .line 153
    nop

    .line 156
    :goto_1
    return-void
.end method

.method getWifiRssi(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;)V
    .locals 4

    .line 159
    if-nez p1, :cond_0

    .line 160
    sget-object p1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->TAG:Ljava/lang/String;

    const-string v0, "Needn\'t get the wifi rssi as response is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 165
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, -0x7f

    if-eq v1, v2, :cond_1

    .line 166
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->addRspAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)V

    .line 167
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->send()V

    .line 168
    return-void

    .line 171
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 172
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 173
    :goto_0
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->addRspAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)V

    .line 174
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->send()V

    .line 175
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 114
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RequestResolver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    invoke-direct {v1, p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    .line 98
    const-string v0, "CMCP_CPAP"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 100
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;

    .line 101
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v2, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->registerRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V

    .line 103
    const-string v0, "IMS"

    invoke-static {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 105
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;

    .line 106
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->registerRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V

    .line 108
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->TAG:Ljava/lang/String;

    const-string v1, "Start request resolver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mCmMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->unregisterRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->mImsMsgReceiver:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->unregisterRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V

    .line 127
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 128
    return-void
.end method
