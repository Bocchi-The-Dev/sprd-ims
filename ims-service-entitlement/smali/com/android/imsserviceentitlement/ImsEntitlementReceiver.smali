.class public Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsEntitlementReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$_Hg5P8l-fOZLJI9HwkvQVXYGJMQ(Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->lambda$onReceive$0(Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getAndSetSubId(Landroid/content/Context;II)I
    .locals 2

    const-string p0, "PREFERENCE_ACTIVATION_INFO"

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last_sub_id_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p1
.end method

.method private handleCarrierConfigChanged(Landroid/content/Context;IILcom/android/imsserviceentitlement/job/JobManager;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 5

    .line 99
    invoke-virtual {p0, p1, p3}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->isBootUp(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "IMSSE-ImsEntitlementReceiver"

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;-><init>(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->entitlementValidation()Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    move-result-object v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device boot up, clientBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v3, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_DURING_VALIDITY:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_WITHOUT_DURATION:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->getAndSetSubId(Landroid/content/Context;II)I

    move-result p0

    if-eq p2, p0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId for slot "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " changed: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " -> "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 116
    new-instance p2, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-direct {p2, p1, p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->reset()V

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {p4}, Lcom/android/imsserviceentitlement/job/JobManager;->queryEntitlementStatusOnceNetworkReady()V

    :cond_4
    if-eqz p5, :cond_5

    .line 126
    invoke-virtual {p5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 6

    .line 83
    iget-object v4, p4, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->jobManager:Lcom/android/imsserviceentitlement/job/JobManager;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->handleCarrierConfigChanged(Landroid/content/Context;IILcom/android/imsserviceentitlement/job/JobManager;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method


# virtual methods
.method createDependency(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;
    .locals 1

    .line 160
    new-instance p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;-><init>()V

    .line 161
    new-instance v0, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    invoke-direct {v0, p1, p2}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->telephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 162
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->userManager:Landroid/os/UserManager;

    .line 163
    sget-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 164
    invoke-static {p1, v0, p2}, Lcom/android/imsserviceentitlement/job/JobManager;->getInstance(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/imsserviceentitlement/job/JobManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->jobManager:Lcom/android/imsserviceentitlement/job/JobManager;

    return-object p0
.end method

.method isBootUp(Landroid/content/Context;I)Z
    .locals 5

    const-string p0, "PREFERENCE_ACTIVATION_INFO"

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_boot_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "boot_count"

    const/4 v4, -0x1

    .line 140
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 142
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 71
    invoke-virtual {p0, p1, v5}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->createDependency(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;

    move-result-object v7

    .line 72
    iget-object v0, v7, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;->telephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 74
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSimApplicationState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 75
    invoke-static {p1, v5}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isImsProvisioningRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    .line 82
    invoke-static {}, Lcom/android/imsserviceentitlement/utils/Executors;->getAsyncExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
