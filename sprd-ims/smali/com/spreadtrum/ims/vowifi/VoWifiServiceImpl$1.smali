.class Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 433
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive the carrier config changed intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$minit(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    .line 437
    :cond_0
    return-void
.end method
