.class public Lcom/android/imsserviceentitlement/job/JobManager;
.super Ljava/lang/Object;
.source "JobManager.java"


# static fields
.field private static final sInstances:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/imsserviceentitlement/job/JobManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;

.field private final mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/imsserviceentitlement/job/JobManager;->sInstances:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mComponentName:Landroid/content/ComponentName;

    .line 61
    const-class p2, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 62
    iput p3, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mSubId:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/imsserviceentitlement/job/JobManager;
    .locals 4

    const-class v0, Lcom/android/imsserviceentitlement/job/JobManager;

    monitor-enter v0

    .line 68
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/android/imsserviceentitlement/job/JobManager;->sInstances:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/imsserviceentitlement/job/JobManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 71
    monitor-exit v0

    return-object v3

    .line 74
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/imsserviceentitlement/job/JobManager;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/imsserviceentitlement/job/JobManager;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 75
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getJobIdWithSubId(I)I
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget p0, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mSubId:I

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public static getPureJobId(I)I
    .locals 0

    .line 105
    rem-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static isValidJob(Landroid/content/Context;Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 158
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "SLOT_ID"

    .line 163
    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 166
    invoke-static {p0, v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isActivedSubId(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "IMSSE-JobManager"

    if-nez v1, :cond_0

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Stop reason: SUBID("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") not point to active SIM."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 173
    :cond_0
    invoke-static {p0, v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSlotId(Landroid/content/Context;I)I

    move-result p0

    if-eq p0, p1, :cond_1

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stop reason: SLOTID("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") not matched."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private newJobInfoBuilder(I)Landroid/app/job/JobInfo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/imsserviceentitlement/job/JobManager;->newJobInfoBuilder(II)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method private newJobInfoBuilder(II)Landroid/app/job/JobInfo$Builder;
    .locals 2

    .line 84
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->getJobIdWithSubId(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 85
    invoke-direct {p0, v0, p2}, Lcom/android/imsserviceentitlement/job/JobManager;->putSubIdAndRetryExtra(Landroid/app/job/JobInfo$Builder;I)V

    return-object v0
.end method

.method private putSubIdAndRetryExtra(Landroid/app/job/JobInfo$Builder;I)V
    .locals 3

    .line 109
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 110
    iget v1, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mSubId:I

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mSubId:I

    invoke-static {v1, p0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSlotId(Landroid/content/Context;I)I

    move-result p0

    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "RETRY_COUNT"

    .line 112
    invoke-virtual {v0, p0, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    return-void
.end method


# virtual methods
.method public queryEntitlementStatusOnceNetworkReady()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 118
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/imsserviceentitlement/job/JobManager;->queryEntitlementStatusOnceNetworkReady(ILjava/time/Duration;)V

    return-void
.end method

.method public queryEntitlementStatusOnceNetworkReady(ILjava/time/Duration;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule QUERY_ENTITLEMENT_STATUS_JOB_ID once has network connection, retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-JobManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/android/imsserviceentitlement/job/JobManager;->newJobInfoBuilder(II)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 140
    iget-object p0, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public registerFcmOnceNetworkReady()V
    .locals 2

    const-string v0, "IMSSE-JobManager"

    const-string v1, "Schedule REGISTER_FCM_JOB_ID once has network connection."

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 147
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/job/JobManager;->newJobInfoBuilder(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/android/imsserviceentitlement/job/JobManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
