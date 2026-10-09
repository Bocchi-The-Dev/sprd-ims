.class public final Lcom/android/imsserviceentitlement/utils/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static final ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static sUseDirectExecutorForTest:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/imsserviceentitlement/utils/Executors;->ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 31
    new-instance v0, Lcom/android/imsserviceentitlement/utils/Executors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/utils/Executors$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/imsserviceentitlement/utils/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getAsyncExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/imsserviceentitlement/utils/Executors;->sUseDirectExecutorForTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/imsserviceentitlement/utils/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/imsserviceentitlement/utils/Executors;->ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_0
    return-object v0
.end method

.method public static getDirectExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/imsserviceentitlement/utils/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
