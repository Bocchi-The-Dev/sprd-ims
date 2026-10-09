.class public Lcom/android/imsserviceentitlement/WfcWebPortalFragment;
.super Landroidx/fragment/app/Fragment;
.source "WfcWebPortalFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;
    }
.end annotation


# instance fields
.field private mFinishFlow:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFinishFlow(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mFinishFlow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFinishFlow(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mFinishFlow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mFinishFlow:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/imsserviceentitlement/WfcWebPortalFragment;
    .locals 3

    .line 54
    new-instance v0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "post_data"

    .line 58
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    sget p3, Lcom/android/imsserviceentitlement/R$layout;->fragment_webview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Webview arguments: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "IMSSE-WfcWebPortalFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "url"

    const-string v0, ""

    .line 71
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "post_data"

    .line 72
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    sget v0, Lcom/android/imsserviceentitlement/R$id;->loadingbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 75
    sget v1, Lcom/android/imsserviceentitlement/R$id;->webview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    .line 76
    new-instance v2, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$1;-><init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;

    invoke-direct {v1, p0}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$2;-><init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment$JsInterface;-><init>(Lcom/android/imsserviceentitlement/WfcWebPortalFragment;Landroid/app/Activity;)V

    const-string v2, "VoWiFiWebServiceFlow"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :goto_0
    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    .line 132
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".pdf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
