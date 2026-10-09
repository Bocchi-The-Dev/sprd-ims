.class public Lcom/spreadtrum/ims/IMSLogController;
.super Ljava/lang/Object;
.source "IMSLogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;
    }
.end annotation


# static fields
.field public static CALL_DEBUG:Z = false

.field public static IMS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IMSLogController"


# instance fields
.field private CALL_DEBUG_INT:I

.field private IMS_DEBUG_INT:I

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTelephonyLogFlag:I

.field private mTelephonyLogFlagObserver:Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/spreadtrum/ims/IMSLogController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IMSLogController;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyLogFlag(Lcom/spreadtrum/ims/IMSLogController;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/IMSLogController;->mTelephonyLogFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyLogFlag(Lcom/spreadtrum/ims/IMSLogController;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/IMSLogController;->mTelephonyLogFlag:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mmatchResult(Lcom/spreadtrum/ims/IMSLogController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IMSLogController;->matchResult(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    .line 22
    sput-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/IMSLogController;->mTelephonyLogFlag:I

    .line 20
    const/16 v0, 0x40

    iput v0, p0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG_INT:I

    .line 23
    const/16 v0, 0x80

    iput v0, p0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG_INT:I

    .line 29
    const-string v0, "IMSLogController"

    const-string v1, "IMSLogController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lcom/spreadtrum/ims/IMSLogController;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/IMSLogController;->mResolver:Landroid/content/ContentResolver;

    .line 32
    new-instance p1, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;-><init>(Lcom/spreadtrum/ims/IMSLogController;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/IMSLogController;->mTelephonyLogFlagObserver:Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;

    .line 33
    invoke-virtual {p1}, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->register()V

    .line 34
    invoke-direct {p0}, Lcom/spreadtrum/ims/IMSLogController;->updateDebugState()V

    .line 35
    return-void
.end method

.method private matchResult(I)V
    .locals 4

    .line 48
    iget v0, p0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG_INT:I

    and-int v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    .line 49
    iget v0, p0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG_INT:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CALL_DEBUG = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",IMS_DEBUG = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMSLogController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method private updateDebugState()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/spreadtrum/ims/IMSLogController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "telephony_activity_debug_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IMSLogController;->matchResult(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public unRegister()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/spreadtrum/ims/IMSLogController;->mTelephonyLogFlagObserver:Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->unregister()V

    .line 39
    return-void
.end method
