.class Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;
.super Landroid/webkit/WebViewClient;
.source "WfcWebPortalFragment.java"


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

.field final synthetic val$spinner:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;->this$0:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    iput-object p2, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;->val$spinner:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;->val$spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;->val$spinner:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
