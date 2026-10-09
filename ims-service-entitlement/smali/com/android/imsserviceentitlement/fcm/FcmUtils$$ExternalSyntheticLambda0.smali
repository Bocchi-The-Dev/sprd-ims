.class public final synthetic Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/imsserviceentitlement/fcm/FcmUtils$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/imsserviceentitlement/fcm/FcmUtils;->$r8$lambda$zvgtBhuIPQxu7uTWK4FRGCTFir4(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
