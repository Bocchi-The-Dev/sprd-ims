.class public Lcom/android/imsserviceentitlement/ImsEntitlementReceiver$Dependencies;
.super Ljava/lang/Object;
.source "ImsEntitlementReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/ImsEntitlementReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Dependencies"
.end annotation


# instance fields
.field public jobManager:Lcom/android/imsserviceentitlement/job/JobManager;

.field public telephonyUtils:Lcom/android/imsserviceentitlement/utils/TelephonyUtils;

.field public userManager:Landroid/os/UserManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
