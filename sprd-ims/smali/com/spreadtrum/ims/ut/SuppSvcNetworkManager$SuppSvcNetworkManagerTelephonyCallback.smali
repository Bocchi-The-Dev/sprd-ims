.class Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SuppSvcNetworkManager.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppSvcNetworkManagerTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;-><init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onActiveDataSubscriptionIdChanged : subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubIdForSS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSubIdForSS(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppSvcNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmSubIdForSS(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$SuppSvcNetworkManagerTelephonyCallback;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    :cond_1
    return-void
.end method
