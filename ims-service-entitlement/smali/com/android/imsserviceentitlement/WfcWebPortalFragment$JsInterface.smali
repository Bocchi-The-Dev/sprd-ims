.class Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;
.super Ljava/lang/Object;
.source "WfcWebPortalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/WfcWebPortalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsInterface"
.end annotation


# instance fields
.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

.field final synthetic this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;


# direct methods
.method public static synthetic $r8$lambda$MFPnIj-it6G0j0RdVl-E5jjz-4o(Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->lambda$entitlementChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Landroid/app/Activity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object p1, p2

    check-cast p1, Lcom/android/imsserviceentitlement/WfcActivationUi;

    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->mUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    .line 147
    invoke-virtual {p2}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$entitlementChanged$0()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->mUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    invoke-interface {p0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->getController()Lcom/android/imsserviceentitlement/WfcActivationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->finishFlow()V

    return-void
.end method


# virtual methods
.method public dismissFlow()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "IMSSE-WfcWebPortalFragment"

    const-string v1, "#dismissFlow"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->mUi:Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    return-void
.end method

.method public entitlementChanged()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "IMSSE-WfcWebPortalFragment"

    const-string v1, "#entitlementChanged"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->-$$Nest$fputmFinishFlow(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Z)V

    .line 158
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
