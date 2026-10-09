.class public Lcom/android/imsserviceentitlement/utils/ImsUtils;
.super Ljava/lang/Object;
.source "ImsUtils.java"


# static fields
.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/imsserviceentitlement/utils/ImsUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarrierConfigs:Landroid/os/PersistableBundle;

.field private final mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private final mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->sInstances:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 67
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 69
    invoke-static {p2}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 70
    invoke-static {p2}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p2

    .line 67
    invoke-direct {p0, p1, v0, p2}, Lcom/android/imsserviceentitlement/utils/ImsUtils;-><init>(Landroid/os/PersistableBundle;Landroid/telephony/ims/ImsMmTelManager;Landroid/telephony/ims/ProvisioningManager;)V

    return-void
.end method

.method constructor <init>(Landroid/os/PersistableBundle;Landroid/telephony/ims/ImsMmTelManager;Landroid/telephony/ims/ProvisioningManager;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mCarrierConfigs:Landroid/os/PersistableBundle;

    .line 79
    iput-object p2, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 80
    iput-object p3, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    return-void
.end method

.method private static getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 2

    .line 172
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 174
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get ImsMmTelManager, IllegalArgumentException: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IMSSE-ImsUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/utils/ImsUtils;
    .locals 2

    const-class v0, Lcom/android/imsserviceentitlement/utils/ImsUtils;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/android/imsserviceentitlement/utils/ImsUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/imsserviceentitlement/utils/ImsUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 87
    monitor-exit v0

    return-object v1

    .line 90
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-direct {v1, p0, p1}, Lcom/android/imsserviceentitlement/utils/ImsUtils;-><init>(Landroid/content/Context;I)V

    .line 91
    sget-object p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;
    .locals 2

    .line 187
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 189
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get ProvisioningManager, IllegalArgumentException: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IMSSE-ImsUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setWfcSetting(Z)V
    .locals 0

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method disableAndResetVoWiFiImsSettings()V
    .locals 3

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->disableWfc()V

    .line 151
    iget-object v0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mCarrierConfigs:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    const-string v2, "carrier_default_wfc_ims_mode_int"

    .line 153
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiModeSetting(I)V

    .line 155
    iget-object v0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mCarrierConfigs:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    .line 156
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 155
    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiRoamingModeSetting(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public disableWfc()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setWfcSetting(Z)V

    return-void
.end method

.method public isWfcEnabledByUser()Z
    .locals 0

    .line 197
    :try_start_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSmsoipProvisioned(Z)V
    .locals 1

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    const/16 v0, 0xe

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVolteProvisioned(Z)V
    .locals 1

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVowifiProvisioned(Z)V
    .locals 1

    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    const/16 v0, 0x1c

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public turnOffWfc(Ljava/lang/Runnable;)V
    .locals 1

    .line 207
    new-instance v0, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;-><init>(Lcom/android/imsserviceentitlement/utils/ImsUtils;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 218
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
