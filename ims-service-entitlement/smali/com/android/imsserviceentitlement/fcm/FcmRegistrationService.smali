.class public Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;
.super Landroid/app/job/JobService;
.source "FcmRegistrationService.java"


# instance fields
.field private mApp:Lcom/google/firebase/FirebaseApp;

.field private mFakeInstanceID:Lcom/google/firebase/iid/FirebaseInstanceId;

.field mOngoingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/app/job/JobParameters;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mFakeInstanceID:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 45
    iput-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method

.method public static enqueueJob(Landroid/content/Context;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x1

    .line 55
    invoke-static {p0, v0, v1}, Lcom/android/imsserviceentitlement/job/JobManager;->getInstance(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/imsserviceentitlement/job/JobManager;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/job/JobManager;->registerFcmOnceNetworkReady()V

    return-void
.end method

.method private getFirebaseApp()Lcom/google/firebase/FirebaseApp;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mApp:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mApp:Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IMSSE-FcmRegistrationService"

    const-string v1, "initialize FirebaseApp"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/app/job/JobService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/imsserviceentitlement/R$string;->fcm_app_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Landroid/app/job/JobService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/imsserviceentitlement/R$string;->fcm_project_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Landroid/app/job/JobService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/imsserviceentitlement/R$string;->fcm_api_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mApp:Lcom/google/firebase/FirebaseApp;

    .line 87
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mApp:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private getFirebaseInstanceId()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mFakeInstanceID:Lcom/google/firebase/iid/FirebaseInstanceId;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->getFirebaseApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getTokenForSubId(Lcom/google/firebase/iid/FirebaseInstanceId;I)Ljava/lang/String;
    .locals 0

    .line 146
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getFcmSenderId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "FCM"

    .line 145
    invoke-virtual {p1, p0, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get a new FCM token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IMSSE-FcmRegistrationService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private updateFcmToken(Lcom/google/firebase/iid/FirebaseInstanceId;I)Z
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FcmRegistrationService.updateFcmToken: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-FcmRegistrationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->getTokenForSubId(Lcom/google/firebase/iid/FirebaseInstanceId;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "getToken null"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FCM token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0, p2, p1}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->setToken(Landroid/content/Context;ILjava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onHandleWork(Landroid/app/job/JobParameters;)V
    .locals 4

    .line 114
    invoke-static {p0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSubIdsWithFcmSupported(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->getFirebaseInstanceId()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->updateFcmToken(Lcom/google/firebase/iid/FirebaseInstanceId;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 92
    new-instance v0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;

    invoke-direct {v0, p0}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;-><init>(Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mOngoingTask:Landroid/os/AsyncTask;

    const/4 p0, 0x1

    new-array v1, p0, [Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method setFakeInstanceID(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->mFakeInstanceID:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-void
.end method
