.class Lcom/android/imsserviceentitlement/WfcActivationController$1;
.super Landroid/os/CountDownTimer;
.source "WfcActivationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/imsserviceentitlement/WfcActivationController;->postDelay(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(JJLjava/lang/Runnable;)V
    .locals 0

    .line 354
    iput-object p5, p0, Lcom/android/imsserviceentitlement/WfcActivationController$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationController$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
