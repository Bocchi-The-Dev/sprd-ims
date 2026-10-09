.class Lcom/spreadtrum/ims/ImsServiceCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$fputmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)V

    .line 108
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive mCurrentUserId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$fgetmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method
