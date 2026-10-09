.class public Lcom/android/imsserviceentitlement/fcm/FcmService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmService.java"


# instance fields
.field private mJobManager:Lcom/android/imsserviceentitlement/job/JobManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private getJobManager(I)Lcom/android/imsserviceentitlement/job/JobManager;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmService;->mJobManager:Lcom/android/imsserviceentitlement/job/JobManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {p0, v0, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->getInstance(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/imsserviceentitlement/job/JobManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static isTs43EntitlementsChangeEvent(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The payload data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSSE-FcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "app"

    .line 101
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "timestamp"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "ap2004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p0, "data format error"

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private scheduleEntitlementStatusCheckForSubIdAssociatedWithSenderId(Ljava/lang/String;)V
    .locals 4

    .line 127
    invoke-static {p0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSubIdsWithFcmSupported(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    invoke-static {p0, v1}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getFcmSenderId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check entitlement status for subscription id("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMSSE-FcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/fcm/FcmService;->getJobManager(I)Lcom/android/imsserviceentitlement/job/JobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/imsserviceentitlement/job/JobManager;->queryEntitlementStatusOnceNetworkReady()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmService;->onMessageReceived(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onMessageReceived(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageReceived, SenderId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-FcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p2}, Lcom/android/imsserviceentitlement/fcm/FcmService;->isTs43EntitlementsChangeEvent(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "Ignore message not related to entitlements change."

    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmService;->scheduleEntitlementStatusCheckForSubIdAssociatedWithSenderId(Ljava/lang/String;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMSSE-FcmService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p0}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->enqueueJob(Landroid/content/Context;)V

    return-void
.end method

.method setMockJobManager(Lcom/android/imsserviceentitlement/job/JobManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/imsserviceentitlement/fcm/FcmService;->mJobManager:Lcom/android/imsserviceentitlement/job/JobManager;

    return-void
.end method
