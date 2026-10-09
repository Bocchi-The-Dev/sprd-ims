.class Lcom/spreadtrum/ims/ImsService$1;
.super Landroid/telephony/PhoneStateListener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/ImsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged->state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 630
    nop

    .line 631
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;I)V

    .line 632
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 633
    nop

    .line 634
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/ImsService;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 635
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmTelephonyManager(Lcom/spreadtrum/ims/ImsService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 636
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4, v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;I)V

    .line 638
    goto :goto_1

    .line 634
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;)I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 642
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 643
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 644
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 645
    if-eqz v4, :cond_2

    .line 646
    invoke-virtual {v4, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifyWifiCalling(Z)V

    .line 642
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 658
    :cond_3
    move v3, v0

    goto :goto_3

    .line 653
    :cond_4
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;)I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 654
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;I)V

    .line 658
    :cond_5
    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 659
    if-nez p1, :cond_8

    .line 660
    move p1, v2

    :goto_4
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 661
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 662
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getSrvccState()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 663
    const-string v3, "onCallStateChanged->setSrvccState for call end"

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->setSrvccState(I)V

    .line 660
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 667
    :cond_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/ImsService;->updateWifiCallingState(Z)V

    .line 669
    :cond_8
    return-void

    .line 673
    :cond_9
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    .line 674
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsWifiCalling(Lcom/spreadtrum/ims/ImsService;)Z

    move-result p2

    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    if-eqz v3, :cond_a

    .line 675
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsEmergencyCallonIms(Lcom/spreadtrum/ims/ImsService;Z)V

    goto :goto_5

    .line 677
    :cond_a
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsEmergencyCallonIms(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 679
    :goto_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCallStateChanged->isInCall:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mIsWifiCalling:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsWifiCalling(Lcom/spreadtrum/ims/ImsService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " inCallPhoneId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallPhoneId(Lcom/spreadtrum/ims/ImsService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mIsEmergencyCallonIms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$1;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsEmergencyCallonIms(Lcom/spreadtrum/ims/ImsService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 683
    return-void
.end method
