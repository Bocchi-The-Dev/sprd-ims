.class Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;
.super Ljava/lang/Object;
.source "AcsProvisioningConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;Landroid/content/Intent;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi disabling listener - Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->val$intent:Landroid/content/Intent;

    .line 128
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->val$intent:Landroid/content/Intent;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->resetCounters()V

    .line 132
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->registerNetworkStateListener()V

    .line 133
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterWifiDisablingListener()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    iget-object v1, v1, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to handle wifi state change event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void
.end method
