.class Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WFCStateMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

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

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->checkWFCState(IZ)V

    .line 44
    :cond_0
    return-void
.end method
