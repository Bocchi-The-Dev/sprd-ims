.class public final synthetic Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;

.field public final synthetic f$5:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;

    iput-object p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$4:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;

    iput-object p6, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$5:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;

    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$4:Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;

    iget-object v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$$ExternalSyntheticLambda0;->f$5:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static/range {v0 .. v5}, Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;->$r8$lambda$_Hg5P8l-fOZLJI9HwkvQVXYGJMQ(Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;Landroid/content/Context;IILcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
