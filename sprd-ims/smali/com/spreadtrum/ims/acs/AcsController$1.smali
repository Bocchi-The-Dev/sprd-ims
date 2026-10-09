.class Lcom/spreadtrum/ims/acs/AcsController$1;
.super Landroid/content/BroadcastReceiver;
.source "AcsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/acs/AcsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsController;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/acs/AcsController;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsController;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 42
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/acs/AcsController;->handleSimStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/acs/AcsController;->-$$Nest$mhandleCarrierConfigChanged(Lcom/spreadtrum/ims/acs/AcsController;Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.spreadtrum.ims.acs.AcsController.ACTION_RETRY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsController;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/acs/AcsController;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsController$1;->this$0:Lcom/spreadtrum/ims/acs/AcsController;

    invoke-static {p1}, Lcom/spreadtrum/ims/acs/AcsController;->-$$Nest$fgetmAcsProvisioningManager(Lcom/spreadtrum/ims/acs/AcsController;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->scheduleProvisioningOperation()V

    .line 49
    :cond_2
    :goto_0
    return-void
.end method
