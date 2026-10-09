.class Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;
.super Landroid/database/ContentObserver;
.source "SuppSvcNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;Landroid/os/Handler;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 332
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Landroid/content/Context;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 332
    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "airplaneModeOn:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuppSvcNetworkManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmPendingMessages(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$fgetmPendingMessages(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 338
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$mclearPendingMessages(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    .line 339
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$1;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;->-$$Nest$monReleaseNetworkRequest(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;)V

    .line 341
    :cond_1
    return-void
.end method
