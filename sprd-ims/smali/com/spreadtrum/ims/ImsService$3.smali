.class Lcom/spreadtrum/ims/ImsService$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
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

    .line 4154
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$3;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 4156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 4157
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4158
    const-string p1, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED, update Ims Feature For Data Change."

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 4160
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$3;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4161
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$3;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeatureForDataChange()V

    .line 4162
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$3;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsService;->updateVoWifiLocalAddr()V

    goto :goto_0

    .line 4164
    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4166
    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4167
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4168
    const/4 p1, -0x1

    const-string v0, "phone"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_SIM_STATE_CHANGED, sim card absent.phoneid = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 4171
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$3;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 4172
    if-eqz p1, :cond_1

    .line 4173
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->setUtDisableByNetWork(Z)V

    .line 4177
    :cond_1
    :goto_0
    return-void
.end method
