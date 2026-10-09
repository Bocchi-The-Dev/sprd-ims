.class Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;
.super Ljava/lang/Object;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimCardAttr"
.end annotation


# instance fields
.field public final mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field public mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

.field public final mPhoneId:I

.field public mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

.field public mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

.field public mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

.field public mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

.field public mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/content/Context;I)V
    .locals 3

    .line 723
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput p3, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mPhoneId:I

    .line 725
    const/4 p1, 0x1

    .line 740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 725
    const/4 v1, 0x0

    .line 737
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 725
    if-nez p3, :cond_0

    .line 726
    const-string p1, "CMCP_CPAP_SIM1"

    invoke-static {p2, p1, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    goto :goto_0

    .line 728
    :cond_0
    if-ne p3, p1, :cond_1

    .line 729
    const-string p1, "CMCP_CPAP_SIM2"

    invoke-static {p2, p1, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    goto :goto_0

    .line 732
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Do not support TSTS now!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 737
    :goto_0
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-direct {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    .line 738
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    invoke-direct {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    .line 739
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    invoke-direct {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    .line 740
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    .line 741
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    const/4 p2, 0x2

    .line 742
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    .line 743
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    .line 744
    return-void
.end method

.method private notifyState(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    if-nez v0, :cond_0

    .line 790
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify sim relate state as channel is null. Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 791
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$fgetmSupportDualVoWifi(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mPhoneId:I

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$fgetmPrimaryCardId(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 797
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support dual vowifi, needn\'t notify the phone["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] state."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    return-void
.end method


# virtual methods
.method public notifyAllState()V
    .locals 2

    .line 747
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;-><init>()V

    .line 748
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 749
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 750
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 751
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 752
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 753
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 754
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 757
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyState(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 758
    return-void
.end method

.method public notifyVoLTEEnabledState()V
    .locals 2

    .line 780
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVoLTEEnabled;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVoLTEEnabled;-><init>()V

    .line 781
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVoLTEEnabled;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 782
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVoLTEEnabled;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 785
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyState(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 786
    return-void
.end method

.method public notifyWFCEnabledState()V
    .locals 2

    .line 761
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCEnabled;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCEnabled;-><init>()V

    .line 762
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCEnabled;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 763
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCEnabled;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 766
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyState(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 767
    return-void
.end method

.method public notifyWFCPrefModeState()V
    .locals 2

    .line 770
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;-><init>()V

    .line 771
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mCmSimChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;->setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 772
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 773
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 776
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->notifyState(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 777
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimCardAttr[PhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SimReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mSimReady:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;

    .line 809
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsPrimaryCard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mIsPrimaryCard:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;

    .line 810
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WFCEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;

    .line 811
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WFCPreferredMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefMode:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;

    .line 812
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WFCPreferredModeRoaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mWFCPrefModeRoaming:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;

    .line 813
    invoke-virtual {v1}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VoLTEEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SimCardAttr;->mVoLTEEnabled:Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    return-object v0
.end method
