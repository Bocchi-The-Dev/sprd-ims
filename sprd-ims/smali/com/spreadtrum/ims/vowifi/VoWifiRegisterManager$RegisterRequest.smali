.class Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;
.super Ljava/lang/Object;
.source "VoWifiRegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisterRequest"
.end annotation


# static fields
.field private static final RETRY_BASE_TIME:I = 0x1e

.field private static final RETRY_MAX_TIME:I = 0x708


# instance fields
.field public mIsSOS:Z

.field public mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

.field public mNeedCNI:Z

.field public mNeedPLCI:Z

.field public mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

.field public mRegPAssociatedUri:Ljava/lang/String;

.field public mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

.field public mRetryCount:I

.field public mRetryMaxCount:I

.field public mState:I

.field public mWaitForCNIResponse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;)V
    .locals 2

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    .line 478
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    .line 479
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mWaitForCNIResponse:Z

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegPAssociatedUri:Ljava/lang/String;

    .line 481
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    .line 485
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    .line 486
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryMaxCount:I

    .line 489
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegisterConfig:Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    .line 490
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    .line 492
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getRegRetryMaxCount(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryMaxCount:I

    .line 493
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isRegRequestPLCI(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedPLCI:Z

    .line 494
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isRegRequestCNI(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mNeedCNI:Z

    .line 495
    return-void
.end method


# virtual methods
.method public calcRetryAfter()I
    .locals 6

    .line 498
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryMaxCount:I

    if-lt v0, v1, :cond_0

    .line 499
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times as the max count."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    nop

    .line 504
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 505
    const/4 v0, 0x5

    goto :goto_0

    .line 507
    :cond_1
    const/16 v1, 0x708

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    int-to-double v4, v0

    .line 508
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    .line 507
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 509
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    .line 510
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    .line 511
    add-double/2addr v1, v3

    .line 513
    :cond_2
    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 516
    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    .line 517
    return v0
.end method

.method public successed()V
    .locals 1

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRetryCount:I

    .line 522
    return-void
.end method
