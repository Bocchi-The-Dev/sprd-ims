.class Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;
.super Ljava/lang/Object;
.source "AcsProvisioningConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;Landroid/content/Intent;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    const-string v0, "Unable to handle connection event for intent action: "

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network state listener - Received broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->connectionEvent(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    .line 71
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v3, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->isFirstProvisioningAfterBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    const-string v1, "Initial provisioning failed!"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 81
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retry()V

    .line 86
    :cond_0
    :goto_0
    nop

    .line 87
    :goto_1
    return-void
.end method
