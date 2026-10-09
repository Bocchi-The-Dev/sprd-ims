.class Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;
.super Ljava/lang/Object;
.source "SrmiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->rebindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 664
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 665
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$fgetmIntent(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;->this$0:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$fgetmConnection(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 666
    return-void
.end method
