.class public Lcom/android/imsserviceentitlement/utils/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# instance fields
.field private mPurpose:I

.field private mStartTime:J

.field private final mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;


# direct methods
.method public constructor <init>(Lcom/android/imsserviceentitlement/utils/TelephonyUtils;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mPurpose:I

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mStartTime:J

    .line 34
    iput-object p1, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mStartTime:J

    .line 40
    iput p1, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mPurpose:I

    return-void
.end method

.method public write(II)V
    .locals 11

    .line 45
    iget-object v0, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 47
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getCarrierId()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mTelephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

    .line 48
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getSpecificCarrierId()I

    move-result v0

    int-to-long v4, v0

    iget v6, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mPurpose:I

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/android/imsserviceentitlement/utils/MetricsLogger;->mStartTime:J

    sub-long v9, v0, v7

    const/16 v1, 0x14b

    move v7, p1

    move v8, p2

    .line 45
    invoke-static/range {v1 .. v10}, Lcom/android/imsserviceentitlement/ImsServiceEntitlementStatsLog;->write(IJJIIIJ)V

    return-void
.end method
