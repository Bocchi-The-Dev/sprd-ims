.class Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;
.super Landroid/os/AsyncTask;
.source "ImsEntitlementPollingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntitlementPollingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

.field private final mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

.field private final mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

.field private final mNeedsImsProvisioning:Z

.field private final mParams:Landroid/app/job/JobParameters;

.field private mPurpose:I

.field private mSmsoipResult:I

.field private final mSubid:I

.field private final mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

.field private mVolteResult:I

.field private mVowifiResult:I

.field final synthetic this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;Landroid/app/job/JobParameters;I)V
    .locals 1

    .line 162
    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mPurpose:I

    .line 158
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 159
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    .line 160
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    .line 163
    iput-object p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mParams:Landroid/app/job/JobParameters;

    .line 164
    invoke-static {p1, p3}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->getInstance(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/utils/ImsUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    .line 165
    new-instance p2, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    invoke-direct {p2, p1, p3}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 166
    iput p3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSubid:I

    .line 167
    invoke-static {p1, p3}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isImsProvisioningRequired(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mNeedsImsProvisioning:Z

    .line 169
    invoke-static {p1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->-$$Nest$fgetmImsEntitlementApi(Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;)Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->-$$Nest$fgetmImsEntitlementApi(Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;)Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    invoke-direct {v0, p1, p3}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    .line 172
    new-instance p1, Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    invoke-direct {p1, p2}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;-><init>(Lcom/android/imsserviceentitlement/utils/TelephonyUtils;)V

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    return-void
.end method

.method private checkVersValidity()V
    .locals 4

    .line 299
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;

    iget v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSubid:I

    invoke-direct {v0, v1, v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;-><init>(Landroid/content/Context;I)V

    .line 301
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->entitlementValidation()Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    move-result-object v1

    sget-object v2, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_DURING_VALIDITY:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-ne v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;

    iget p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSubid:I

    .line 306
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getVersValidity()J

    move-result-wide v2

    .line 303
    invoke-static {v1, p0, v2, v3}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->-$$Nest$smenqueueJobWithDelay(Landroid/content/Context;IJ)V

    :cond_0
    return-void
.end method

.method private doEntitlementCheck()V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mNeedsImsProvisioning:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->doImsEntitlementCheck()V

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->doWfcEntitlementCheck()V

    :goto_0
    return-void
.end method

.method private doImsEntitlementCheck()V
    .locals 6

    const-string v0, "IMSSE-ImsEntitlementPollingService"

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    invoke-virtual {v1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->checkEntitlementStatus()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entitlement result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->performRetryIfNeeded(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->shouldTurnOffWfc(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v2, v4}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setVowifiProvisioned(Z)V

    .line 222
    iput v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v2, v5}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setVowifiProvisioned(Z)V

    .line 225
    iput v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 228
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->shouldTurnOffVolte(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v2, v4}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setVolteProvisioned(Z)V

    .line 230
    iput v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    goto :goto_1

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v2, v5}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setVolteProvisioned(Z)V

    .line 233
    iput v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    .line 236
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->shouldTurnOffSMSoIP(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v1, v4}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setSmsoipProvisioned(Z)V

    .line 238
    iput v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    goto :goto_2

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v1, v5}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->setSmsoipProvisioned(Z)V

    .line 241
    iput v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    .line 244
    iput v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 245
    iput v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    .line 246
    iput v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    const-string v2, "checkEntitlementStatus failed."

    .line 247
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :goto_2
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->checkVersValidity()V

    return-void
.end method

.method private doWfcEntitlementCheck()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->isWfcEnabledByUser()Z

    move-result v0

    const-string v1, "IMSSE-ImsEntitlementPollingService"

    if-nez v0, :cond_0

    const-string p0, "WFC not turned on; checkEntitlementStatus not needed this time."

    .line 255
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->checkEntitlementStatus()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object v0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entitlement result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->performRetryIfNeeded(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 266
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->shouldTurnOffWfc(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 267
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 268
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->disableWfc()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 270
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    .line 273
    iput v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    const-string p0, "checkEntitlementStatus failed."

    .line 274
    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private performRetryIfNeeded(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getRetryAfterSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 286
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 287
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;

    iget p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSubid:I

    .line 290
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getRetryAfterSeconds()J

    move-result-wide v1

    .line 287
    invoke-static {v0, p0, v1, v2}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;->-$$Nest$smenqueueJobWithDelay(Landroid/content/Context;IJ)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendStatsLogToMetrics()V
    .locals 4

    .line 348
    iget v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    const/4 v1, 0x7

    if-nez v0, :cond_0

    .line 349
    iput v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVowifiResult:I

    invoke-virtual {v0, v2, v3}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->write(II)V

    .line 354
    iget-boolean v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mNeedsImsProvisioning:Z

    if-eqz v0, :cond_3

    .line 355
    iget v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    if-nez v0, :cond_1

    .line 356
    iput v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    .line 358
    :cond_1
    iget v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    if-nez v0, :cond_2

    .line 359
    iput v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mVolteResult:I

    invoke-virtual {v0, v1, v2}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->write(II)V

    .line 363
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v1, 0x3

    iget p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mSmsoipResult:I

    invoke-virtual {v0, v1, p0}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->write(II)V

    :cond_3
    return-void
.end method

.method private shouldTurnOffSMSoIP(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "IMSSE-ImsEntitlementPollingService"

    const-string p1, "Entitlement API failed to return a result; don\'t turn off SMSoIP."

    .line 338
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getSmsoveripStatus()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->isActive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private shouldTurnOffVolte(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "IMSSE-ImsEntitlementPollingService"

    const-string p1, "Entitlement API failed to return a result; don\'t turn off VoLTE."

    .line 328
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 333
    :cond_0
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVolteStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;->isActive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private shouldTurnOffWfc(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "IMSSE-ImsEntitlementPollingService"

    const-string v0, "Entitlement API failed to return a result; don\'t turn off WFC."

    .line 316
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->serverDataMissing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->inProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->incompatible()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Lcom/android/imsserviceentitlement/job/JobManager;->getPureJobId(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->start(I)V

    .line 181
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->doEntitlementCheck()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->sendStatsLogToMetrics()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JobId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "- Task done."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMSSE-ImsEntitlementPollingService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->sendStatsLogToMetrics()V

    .line 193
    iget-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->this$0:Lcom/android/imsserviceentitlement/ImsEntitlementPollingService;

    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementPollingService$EntitlementPollingTask;->mParams:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
