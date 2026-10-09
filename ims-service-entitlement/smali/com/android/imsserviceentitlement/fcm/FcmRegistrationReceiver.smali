.class public Lcom/android/imsserviceentitlement/fcm/FcmRegistrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmRegistrationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-static {p1}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->enqueueJob(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
