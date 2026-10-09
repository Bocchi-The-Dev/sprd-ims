.class Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;
.super Ljava/lang/Object;
.source "AcsProvisioningManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->scheduleProvisioningOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->updateConfig()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v0

    .line 818
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to handle connection event, Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->isFirstProvisioningAfterBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    const-string v1, "Initial provisioning failed!"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 823
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retry()V

    goto :goto_1

    .line 815
    :catch_1
    move-exception v0

    .line 816
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update configuration!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Ljava/lang/String;)V

    .line 825
    :goto_0
    nop

    .line 826
    :cond_0
    :goto_1
    return-void
.end method
