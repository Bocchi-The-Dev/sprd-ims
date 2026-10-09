.class Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;
.super Landroid/content/BroadcastReceiver;
.source "AcsProvisioningSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->registerSmsProvisioningReceiver(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

.field final synthetic val$requestUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->val$requestUri:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-static {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object p1

    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;

    invoke-direct {v0, p0, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->scheduleProvisioningOperation(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
