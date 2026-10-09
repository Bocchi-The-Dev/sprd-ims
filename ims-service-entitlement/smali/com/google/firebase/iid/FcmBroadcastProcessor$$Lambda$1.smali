.class final synthetic Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;->arg$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;->arg$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;->arg$2:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/google/firebase/iid/FcmBroadcastProcessor;->lambda$startMessagingService$0$FcmBroadcastProcessor(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
