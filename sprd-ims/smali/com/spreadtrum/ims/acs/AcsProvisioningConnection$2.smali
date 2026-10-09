.class Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;
.super Landroid/content/BroadcastReceiver;
.source "AcsProvisioningConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->registerWifiDisablingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-static {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->-$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object p1

    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;

    invoke-direct {v0, p0, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->scheduleProvisioningOperation(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method
