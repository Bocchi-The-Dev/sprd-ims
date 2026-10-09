.class public final Lcom/android/imsserviceentitlement/EntitlementUtils;
.super Ljava/lang/Object;
.source "EntitlementUtils.java"


# static fields
.field private static sCheckEntitlementFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YL38HwLQKujE07xZAmrQHoWpLuQ(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/EntitlementUtils;->lambda$entitlementCheck$0(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfputsCheckEntitlementFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    sput-object p0, Lcom/android/imsserviceentitlement/EntitlementUtils;->sCheckEntitlementFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static cancelEntitlementCheck()V
    .locals 2

    .line 73
    sget-object v0, Lcom/android/imsserviceentitlement/EntitlementUtils;->sCheckEntitlementFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const-string v0, "IMSSE-EntitlementUtils"

    const-string v1, "cancel entitlement status check."

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/android/imsserviceentitlement/EntitlementUtils;->sCheckEntitlementFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static entitlementCheck(Lcom/android/imsserviceentitlement/ImsEntitlementApi;Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/imsserviceentitlement/EntitlementUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/imsserviceentitlement/EntitlementUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)V

    .line 52
    invoke-static {}, Lcom/android/imsserviceentitlement/utils/Executors;->getAsyncExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sput-object p0, Lcom/android/imsserviceentitlement/EntitlementUtils;->sCheckEntitlementFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 53
    new-instance v0, Lcom/android/imsserviceentitlement/EntitlementUtils$1;

    invoke-direct {v0, p1}, Lcom/android/imsserviceentitlement/EntitlementUtils$1;-><init>(Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V

    .line 68
    invoke-static {}, Lcom/android/imsserviceentitlement/utils/Executors;->getDirectExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 53
    invoke-static {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static getEntitlementStatus(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 2

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->checkEntitlementStatus()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WfcActivationActivity"

    const-string v1, "getEntitlementStatus failed."

    .line 89
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$entitlementCheck$0(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/android/imsserviceentitlement/EntitlementUtils;->getEntitlementStatus(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0
.end method
