.class Lcom/android/imsserviceentitlement/EntitlementUtils$1;
.super Ljava/lang/Object;
.source "EntitlementUtils.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/imsserviceentitlement/EntitlementUtils;->entitlementCheck(Lcom/android/imsserviceentitlement/ImsEntitlementApi;Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/imsserviceentitlement/EntitlementUtils$1;->val$callback:Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "IMSSE-EntitlementUtils"

    const-string v0, "get entitlement status failed."

    .line 64
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 65
    invoke-static {p0}, Lcom/android/imsserviceentitlement/EntitlementUtils;->-$$Nest$sfputsCheckEntitlementFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public onSuccess(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/imsserviceentitlement/EntitlementUtils$1;->val$callback:Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;

    invoke-interface {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationController$EntitlementResultCallback;->onEntitlementResult(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    const/4 p0, 0x0

    .line 59
    invoke-static {p0}, Lcom/android/imsserviceentitlement/EntitlementUtils;->-$$Nest$sfputsCheckEntitlementFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/EntitlementUtils$1;->onSuccess(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;)V

    return-void
.end method
