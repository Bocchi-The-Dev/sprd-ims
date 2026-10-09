.class Lcom/spreadtrum/ims/ImsRegister$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/ImsRegister;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsRegister;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsRegister;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$1;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$1;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string p2, "ImsRegister>ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$1;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    move-result-object p1

    const/16 p2, 0xcf

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$1;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mhandleCarrierConfigChanged(Lcom/spreadtrum/ims/ImsRegister;Landroid/content/Intent;)V

    .line 104
    :cond_1
    :goto_0
    return-void
.end method
