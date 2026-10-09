.class Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;
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

    .line 55
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-static {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$fgetmMsisdn(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->getValidPhoneNumberFromAndroid(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User entered a wrong MSISDN \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-static {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$mshowErrorCase(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User entered MSISDN "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-static {v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)Landroid/content/Context;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/acs/ContactUtil;->createContactIdFromValidatedData(Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->responseReceived(Lcom/spreadtrum/ims/acs/ContactId;)V

    .line 67
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->finish()V

    .line 69
    :goto_0
    return-void
.end method
