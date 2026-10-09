.class public Lcom/android/imsserviceentitlement/WfcActivationController;
.super Ljava/lang/Object;
.source "WfcActivationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;
    }
.end annotation


# static fields
.field private static final ENTITLEMENT_STATUS_UPDATE_RETRY_INTERVAL_MS:J


# instance fields
.field private final mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

.field private mAppResult:I

.field private mEvaluateTimes:I

.field private final mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

.field private final mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

.field private final mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

.field private final mStartIntent:Landroid/content/Intent;

.field private final mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;


# direct methods
.method public static synthetic $r8$lambda$2Z5o_zacxi8U6ysET5rSCGP48qo(Lcom/android/imsserviceentitlement/WfcActivationController;Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->lambda$reevaluateEntitlementStatus$1(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4V9gr7n3Z46IiLAnW0a_1LP8dhY(Lcom/android/imsserviceentitlement/WfcActivationController;Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->lambda$evaluateEntitlementStatus$0(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtmFyxBtTvm4iS8zUi3GDcgpruc(Lcom/android/imsserviceentitlement/WfcActivationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->lambda$handleEntitlementStatusAfterUpdating$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jyvLzvIBGPkBPtKUCQ0LGOHGZdA(Lcom/android/imsserviceentitlement/WfcActivationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->lambda$handleEntitlementStatusForUpdating$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 63
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/imsserviceentitlement/WfcActivationController;->ENTITLEMENT_STATUS_UPDATE_RETRY_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/imsserviceentitlement/WfcActivationUi;Lcom/android/imsserviceentitlement/ImsEntitlementApi;Landroid/content/Intent;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mEvaluateTimes:I

    .line 75
    iput v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    .line 83
    iput-object p4, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    .line 84
    iput-object p2, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 85
    iput-object p3, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    .line 86
    new-instance p2, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getSubId()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 87
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getSubId()I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->getInstance(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/utils/ImsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    .line 88
    new-instance p1, Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    invoke-direct {p1, p2}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;-><init>(Lcom/android/imsserviceentitlement/utils/TelephonyUtils;)V

    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/imsserviceentitlement/WfcActivationUi;Lcom/android/imsserviceentitlement/ImsEntitlementApi;Landroid/content/Intent;Lcom/android/imsserviceentitlement/utils/ImsUtils;Lcom/android/imsserviceentitlement/utils/MetricsLogger;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mEvaluateTimes:I

    .line 75
    iput v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    .line 99
    iput-object p4, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    .line 100
    iput-object p2, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 101
    iput-object p3, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    .line 102
    new-instance p2, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getSubId()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 103
    iput-object p5, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    .line 104
    iput-object p6, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    return-void
.end method

.method private finishStatsLog(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    return-void
.end method

.method private getEntitlementStatusUpdateRetryIntervalMs()J
    .locals 2

    .line 329
    sget-wide v0, Lcom/android/imsserviceentitlement/WfcActivationController;->ENTITLEMENT_STATUS_UPDATE_RETRY_INTERVAL_MS:J

    return-wide v0
.end method

.method private getGeneralErrorText()I
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ActivityConstants;->getLaunchIntention(Landroid/content/Intent;)I

    move-result p0

    if-nez p0, :cond_0

    .line 195
    sget p0, Lcom/android/imsserviceentitlement/R$string;->wfc_activation_error:I

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 197
    sget p0, Lcom/android/imsserviceentitlement/R$string;->show_terms_and_condition_error:I

    return p0

    .line 200
    :cond_1
    sget p0, Lcom/android/imsserviceentitlement/R$string;->address_update_error:I

    return p0
.end method

.method private getSubId()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ActivityConstants;->getSubId(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method private getUiTitle()I
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ActivityConstants;->getLaunchIntention(Landroid/content/Intent;)I

    move-result p0

    if-nez p0, :cond_0

    .line 181
    sget p0, Lcom/android/imsserviceentitlement/R$string;->activate_title:I

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 184
    sget p0, Lcom/android/imsserviceentitlement/R$string;->tos_title:I

    return p0

    .line 187
    :cond_1
    sget p0, Lcom/android/imsserviceentitlement/R$string;->e911_title:I

    return p0
.end method

.method private handleEntitlementStatusAfterActivation(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 2

    .line 302
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->vowifiEntitled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    const/4 p1, 0x5

    .line 305
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->serverDataMissing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    iget p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mEvaluateTimes:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 310
    iput p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mEvaluateTimes:I

    .line 312
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getEntitlementStatusUpdateRetryIntervalMs()J

    move-result-wide v0

    new-instance p1, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController;)V

    .line 311
    invoke-static {v0, v1, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->postDelay(JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mEvaluateTimes:I

    .line 316
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    const/16 p1, 0x8

    .line 317
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    goto :goto_0

    :cond_2
    const-string p1, "IMSSE-WfcActivationController"

    const-string v0, "Unexpected status. Show error UI."

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    const/16 p1, 0x9

    .line 323
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    :goto_0
    return-void
.end method

.method private handleEntitlementStatusAfterUpdating(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 1

    .line 334
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->vowifiEntitled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    const/4 p1, 0x5

    .line 337
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->serverDataMissing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    new-instance v0, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController;)V

    invoke-virtual {p1, v0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->turnOffWfc(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "IMSSE-WfcActivationController"

    const-string v0, "Unexpected status. Show error UI."

    .line 346
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    const/16 p1, 0x9

    .line 348
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    :goto_0
    return-void
.end method

.method private handleEntitlementStatusForActivation(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 2

    .line 233
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->vowifiEntitled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x5

    .line 235
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    .line 236
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->serverDataMissing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getTermsAndConditionsWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 241
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getTermsAndConditionsWebUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 240
    invoke-interface {p0, p1, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showWebview(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 243
    :cond_1
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 244
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebUrl()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebData()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-interface {p0, v0, p1}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showWebview(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->incompatible()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 248
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    .line 249
    sget p1, Lcom/android/imsserviceentitlement/R$string;->failure_contact_carrier:I

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->showErrorUi(I)V

    goto :goto_0

    :cond_3
    const-string p1, "IMSSE-WfcActivationController"

    const-string v0, "Unexpected status. Show error UI."

    .line 251
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    .line 252
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    :goto_0
    return-void
.end method

.method private handleEntitlementStatusForUpdating(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 2

    .line 260
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->vowifiEntitled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/imsserviceentitlement/ActivityConstants;->getLaunchIntention(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 264
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 265
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getTermsAndConditionsWebUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 264
    invoke-interface {p0, p1, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showWebview(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 268
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebData()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-interface {p0, v0, p1}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showWebview(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->incompatible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    sget p1, Lcom/android/imsserviceentitlement/R$string;->failure_contact_carrier:I

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->showErrorUi(I)V

    .line 273
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsUtils:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    new-instance v0, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController;)V

    invoke-virtual {p1, v0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->turnOffWfc(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string p1, "IMSSE-WfcActivationController"

    const-string v0, "Unexpected status. Show error UI."

    .line 278
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    .line 279
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    :goto_0
    return-void
.end method

.method private handleInitialEntitlementStatus(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial entitlement result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-WfcActivationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    const/4 p1, 0x6

    .line 221
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    return-void

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->isActivationFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleEntitlementStatusForActivation(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleEntitlementStatusForUpdating(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    :goto_0
    return-void
.end method

.method private handleReevaluationEntitlementStatus(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reevaluation entitlement result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-WfcActivationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralErrorUi()V

    const/4 p1, 0x6

    .line 290
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->isActivationFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleEntitlementStatusAfterActivation(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleEntitlementStatusAfterUpdating(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    :goto_0
    return-void
.end method

.method private isActivationFlow()Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mStartIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ActivityConstants;->isActivationFlow(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$evaluateEntitlementStatus$0(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleInitialEntitlementStatus(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void
.end method

.method private synthetic lambda$handleEntitlementStatusAfterUpdating$3()V
    .locals 1

    const/4 v0, 0x2

    .line 342
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    .line 343
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    return-void
.end method

.method private synthetic lambda$handleEntitlementStatusForUpdating$2()V
    .locals 1

    const/4 v0, 0x3

    .line 274
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishStatsLog(I)V

    return-void
.end method

.method private synthetic lambda$reevaluateEntitlementStatus$1(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleReevaluationEntitlementStatus(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void
.end method

.method private static postDelay(JLjava/lang/Runnable;)V
    .locals 7

    .line 354
    new-instance v6, Lcom/android/imsserviceentitlement/WfcActivationController$1;

    const-wide/16 v0, 0x64

    add-long v3, p0, v0

    move-object v0, v6

    move-wide v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/imsserviceentitlement/WfcActivationController$1;-><init>(JJLjava/lang/Runnable;)V

    .line 365
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showErrorUi(I)V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 205
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getUiTitle()I

    move-result v1

    sget v4, Lcom/android/imsserviceentitlement/R$string;->ok:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, p1

    .line 204
    invoke-interface/range {v0 .. v6}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showActivationUi(IIZIII)Z

    return-void
.end method

.method private showGeneralErrorUi()V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getGeneralErrorText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showErrorUi(I)V

    return-void
.end method

.method private showGeneralWaitingUi()V
    .locals 7

    .line 213
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mActivationUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->getUiTitle()I

    move-result v1

    sget v2, Lcom/android/imsserviceentitlement/R$string;->progress_text:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/imsserviceentitlement/WfcActivationUi;->showActivationUi(IIZIII)Z

    return-void
.end method


# virtual methods
.method public evaluateEntitlementStatus()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationController;->handleInitialEntitlementStatus(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    new-instance v1, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController;)V

    invoke-static {v0, v1}, Lcom/android/imsserviceentitlement/EntitlementUtils;->entitlementCheck(Lcom/android/imsserviceentitlement/ImsEntitlementApi;Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/android/imsserviceentitlement/EntitlementUtils;->cancelEntitlementCheck()V

    .line 158
    iget v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 159
    iput v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mAppResult:I

    invoke-virtual {v0, v1, p0}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->write(II)V

    return-void
.end method

.method public finishFlow()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralWaitingUi()V

    .line 137
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->reevaluateEntitlementStatus()V

    return-void
.end method

.method public reevaluateEntitlementStatus()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mImsEntitlementApi:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    new-instance v1, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/imsserviceentitlement/WfcActivationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController;)V

    invoke-static {v0, v1}, Lcom/android/imsserviceentitlement/EntitlementUtils;->entitlementCheck(Lcom/android/imsserviceentitlement/ImsEntitlementApi;Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V

    return-void
.end method

.method public startFlow()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->showGeneralWaitingUi()V

    .line 111
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->evaluateEntitlementStatus()V

    .line 112
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->isActivationFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->start(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController;->mMetricsLogger:Lcom/android/imsserviceentitlement/utils/MetricsLogger;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->start(I)V

    :goto_0
    return-void
.end method
