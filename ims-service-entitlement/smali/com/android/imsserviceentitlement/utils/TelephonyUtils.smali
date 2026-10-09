.class public Lcom/android/imsserviceentitlement/utils/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 49
    :cond_0
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    :goto_0
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private static getConfigForSubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 1

    .line 115
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "IMSSE-TelephonyUtils"

    const-string p1, "getDefaultConfig"

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getEntitlementServerUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getConfigForSubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "imsserviceentitlement.entitlement_server_url_string"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFcmSenderId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getConfigForSubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "imsserviceentitlement.fcm_sender_id_string"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlotId(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "telephony_subscription_service"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 105
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find actived subscription for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IMSSE-TelephonyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getSubIdsWithFcmSupported(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 161
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 168
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 169
    invoke-static {p0, v2}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isFcmPushNotificationSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static isActivedSubId(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "telephony_subscription_service"

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 93
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFcmPushNotificationSupported(Landroid/content/Context;I)Z
    .locals 0

    .line 177
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getFcmSenderId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isImsProvisioningRequired(Landroid/content/Context;I)Z
    .locals 1

    .line 151
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getConfigForSubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "imsserviceentitlement.ims_provisioning_bool"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCarrierId()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result p0

    return p0
.end method

.method public getSimApplicationState()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    move-result p0

    return p0
.end method

.method public getSpecificCarrierId()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSpecificCarrierId()I

    move-result p0

    return p0
.end method

.method public isNetworkConnected()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
