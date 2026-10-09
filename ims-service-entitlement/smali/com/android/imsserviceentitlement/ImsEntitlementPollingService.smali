.class public Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;
.super Landroid/app/job/JobService;
.source "ImsEntitlementPollingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field private mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

.field mOngoingTask:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsEntitlementApi(Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;)Lcom/android/imsserviceentitlement/ImsEntitlementApi;
    .locals 0

    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smenqueueJobWithDelay(Landroid/content/Context;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->enqueueJobWithDelay(Landroid/content/Context;IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.imsserviceentitlement/.ImsEntitlementPollingService"

    .line 63
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mTasks:Landroid/util/SparseArray;

    return-void
.end method

.method private static enqueueJobWithDelay(Landroid/content/Context;IJ)V
    .locals 1

    .line 99
    sget-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {p0, v0, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->getInstance(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/imsserviceentitlement/job/JobManager;

    move-result-object p0

    .line 103
    invoke-static {p2, p3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->queryEntitlementStatusOnceNetworkReady(ILjava/time/Duration;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method injectImsEntitlementApi(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 108
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v2, -0x1

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMSSE-ImsEntitlementPollingService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->isValidJob(Landroid/content/Context;Landroid/app/job/JobParameters;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Stop for invalid job! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 125
    :cond_0
    new-instance v2, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;-><init>(Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;Landroid/app/job/JobParameters;I)V

    iput-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mOngoingTask:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;

    .line 126
    iget-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mOngoingTask:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;

    new-array p1, v4, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopJob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-ImsEntitlementPollingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 138
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return v1
.end method
