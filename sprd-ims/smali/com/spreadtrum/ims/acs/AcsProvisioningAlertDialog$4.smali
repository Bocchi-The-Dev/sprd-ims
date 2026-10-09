.class Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;
.super Landroid/os/CountDownTimer;
.source "AcsProvisioningAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;JJ)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    const-string v1, "MSISDN dialog has expired!"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->responseReceived(Lcom/spreadtrum/ims/acs/ContactId;)V

    .line 114
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$fputmCountDownTimer(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Landroid/os/CountDownTimer;)V

    .line 115
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->finish()V

    .line 116
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 109
    return-void
.end method
