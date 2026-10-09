.class Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;
.super Ljava/lang/Object;
.source "WfcWebPortalFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string p1, "IMSSE-WfcWebPortalFragment"

    const-string v0, "#onViewDetachedFromWindow"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    invoke-static {p1}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->-$$Nest$fgetmFinishFlow(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/imsserviceentitlement/WfcActivationUi;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    :cond_0
    return-void
.end method
