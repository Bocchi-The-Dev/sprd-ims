.class Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;
.super Ljava/lang/Object;
.source "AcsProvisioningAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    const-string v0, "User cancelled the MSISDN dialog!"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->responseReceived(Lcom/spreadtrum/ims/acs/ContactId;)V

    .line 76
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->finish()V

    .line 77
    return-void
.end method
