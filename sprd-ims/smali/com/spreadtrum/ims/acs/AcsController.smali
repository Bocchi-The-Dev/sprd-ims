.class public Lcom/spreadtrum/ims/acs/AcsController;
.super Ljava/lang/Object;
.source "AcsController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AcsController"


# instance fields
.field private mAcsProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

.field private mCarrierConfigLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimLoaded:Z

.field private mSimSwap:Z

.field private mSupportAcs:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAcsProvisioningManager(Lcom/spreadtrum/ims/acs/AcsController;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mAcsProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/acs/AcsController;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleCarrierConfigChanged(Lcom/spreadtrum/ims/acs/AcsController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsController;->handleCarrierConfigChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsController$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsController$1;-><init>(Lcom/spreadtrum/ims/acs/AcsController;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput p2, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    .line 54
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;-><init>(Landroid/content/Context;ILcom/spreadtrum/ims/acs/AcsController;Z)V

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mAcsProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    .line 57
    invoke-virtual {v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->initialize()V

    .line 58
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.spreadtrum.ims.acs.AcsController.ACTION_RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method private getProvisioningIfNecessary(Z)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProvisioningIfNecessary mCarrierConfigLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and mSimLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and reconfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and mSupportAcs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSupportAcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSupportAcs:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mCarrierConfigLoaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimSwap:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mAcsProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->scheduleProvisioningOperation()V

    .line 195
    :cond_2
    return-void

    .line 190
    :cond_3
    :goto_0
    return-void
.end method

.method private handleCarrierConfigChanged(Landroid/content/Intent;)V
    .locals 3

    .line 66
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    if-eq v2, v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    const-string v2, "android.telephony.extra.REBROADCAST_ON_UNLOCK"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    return-void

    .line 75
    :cond_1
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 77
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsController;->updateCarrierConfig()V

    .line 80
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsController;->getServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AcsController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public static startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V
    .locals 2

    .line 210
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 212
    return-void
.end method

.method private updateCarrierConfig()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsController;->isCarrierConfigApplied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mCarrierConfigLoaded:Z

    .line 159
    const-string v0, "use_acs_for_rcs_bool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/acs/AcsController;->getCarrierConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSupportAcs:Z

    .line 160
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsController;->getProvisioningIfNecessary(Z)V

    .line 161
    return-void
.end method


# virtual methods
.method public cancelRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    .line 201
    const-string v0, "Stop retry configuration update"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 202
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 203
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 204
    return-void
.end method

.method public getCarrierConfigBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 164
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string p1, "unable to get SubId"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 167
    return p2

    .line 169
    :cond_0
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 170
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mContext:Landroid/content/Context;

    .line 171
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 172
    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 178
    :cond_1
    return p2
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 110
    iget v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public handleSimStateChanged(Landroid/content/Intent;)V
    .locals 3

    .line 83
    const-string v0, "handleSimStateChanged"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 84
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 87
    iget v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    if-eq v1, v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 93
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSupportAcs:Z

    .line 95
    iput-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimLoaded:Z

    .line 96
    iput-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mCarrierConfigLoaded:Z

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 98
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimLoaded:Z

    .line 99
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsController;->isIccCardChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iput-boolean p1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimSwap:Z

    .line 101
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsController;->getProvisioningIfNecessary(Z)V

    goto :goto_0

    .line 103
    :cond_2
    iput-boolean v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mSimSwap:Z

    .line 106
    :cond_3
    :goto_0
    return-void
.end method

.method public isCarrierConfigApplied()Z
    .locals 4

    .line 136
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "unable to get SubId"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 139
    return v2

    .line 141
    :cond_0
    aget v0, v0, v2

    .line 142
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsController;->mContext:Landroid/content/Context;

    .line 143
    const-string v3, "carrier_config"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 144
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0

    .line 151
    :cond_1
    return v2
.end method

.method public isIccCardChanged()Z
    .locals 7

    .line 118
    nop

    .line 119
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsController;->mContext:Landroid/content/Context;

    const-string v1, "acs.preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icc_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsController;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleIccCardChanged] lastIccId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newIccId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/spreadtrum/ims/acs/AcsController;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    const/4 v2, 0x1

    .line 129
    :cond_0
    return v2
.end method

.method public triggerReconfiguration()V
    .locals 1

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsController;->getProvisioningIfNecessary(Z)V

    .line 183
    return-void
.end method
