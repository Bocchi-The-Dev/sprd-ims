.class public final Lcom/android/imsserviceentitlement/fcm/FcmUtils;
.super Ljava/lang/Object;
.source "FcmUtils.java"


# direct methods
.method public static synthetic $r8$lambda$zvgtBhuIPQxu7uTWK4FRGCTFir4(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/imsserviceentitlement/fcm/FcmUtils;->lambda$fetchFcmToken$0(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchFcmToken(Landroid/content/Context;I)V
    .locals 5

    .line 40
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->hasToken(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "IMSSE-FcmUtils"

    if-eqz v0, :cond_0

    const-string p0, "FCM token available."

    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "FCM token unavailable. Try to update..."

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 47
    new-instance v2, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V

    .line 54
    invoke-static {p0, v2}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->registerTokenUpdateListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 57
    invoke-static {p0}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->enqueueJob(Landroid/content/Context;)V

    const-wide/16 v3, 0x19

    .line 62
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FCM token updated."

    .line 63
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "FCM token update failed."

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FCM token update interrupted."

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-static {p0, v2}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->unregisterTokenUpdateListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$fetchFcmToken$0(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p3, "IMSSE-FcmUtils"

    const-string p4, "FCM preference changed."

    .line 49
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->hasToken(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
