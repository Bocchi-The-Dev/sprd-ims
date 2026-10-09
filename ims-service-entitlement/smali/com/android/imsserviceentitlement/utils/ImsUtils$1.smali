.class Lcom/android/imsserviceentitlement/utils/ImsUtils$1;
.super Landroid/os/AsyncTask;
.source "ImsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/imsserviceentitlement/utils/ImsUtils;->turnOffWfc(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/imsserviceentitlement/utils/ImsUtils;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/utils/ImsUtils;Ljava/lang/Runnable;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->this$0:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    iput-object p2, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->this$0:Lcom/android/imsserviceentitlement/utils/ImsUtils;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/utils/ImsUtils;->disableAndResetVoWiFiImsSettings()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/imsserviceentitlement/utils/ImsUtils$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
