.class Lcom/spreadtrum/ims/ImsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;-><init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 509
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_5

    .line 510
    const-string p1, "phone"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 512
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 513
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsServiceImpl iccReceiver->phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsServiceImpl;)I

    move-result v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsRegister(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsRegister;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->sendIccCardChangeEvent()V

    .line 518
    const-string p1, "LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsHandler(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 520
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsRegister(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsRegister;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->sendRecordsLoadedEvent()V

    .line 523
    :cond_1
    const-string p1, "ABSENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 524
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fputmPAU(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 527
    :cond_2
    const-string p1, "READY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 528
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsRegister(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsRegister;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->sendRecordsReadyEvent()V

    .line 531
    :cond_3
    const-string p1, "UNKNOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsServiceState(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    if-eqz p1, :cond_8

    .line 533
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsServiceState(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceState;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 534
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fputmIsVoltePdnActive(Lcom/spreadtrum/ims/ImsServiceImpl;Z)V

    .line 535
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fputmIsVoWifiAttached(Lcom/spreadtrum/ims/ImsServiceImpl;Z)V

    .line 536
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fputmLatestTransport(Lcom/spreadtrum/ims/ImsServiceImpl;I)V

    .line 537
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fputmImsRegisterRat(Lcom/spreadtrum/ims/ImsServiceImpl;I)V

    .line 538
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mupdateImsRegisterState(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    goto :goto_2

    .line 515
    :cond_4
    :goto_0
    return-void

    .line 540
    :cond_5
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 541
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, "ACTION_SERVICE_STATE"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 542
    const-string p1, "slot"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 544
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsServiceImpl;)I

    move-result v0

    if-eq p1, v0, :cond_6

    goto :goto_1

    .line 547
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    .line 548
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsServiceImpl$1;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleServiceStateChange(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/telephony/ServiceState;)V

    goto :goto_3

    .line 545
    :cond_7
    :goto_1
    return-void

    .line 540
    :cond_8
    :goto_2
    nop

    .line 550
    :goto_3
    return-void
.end method
