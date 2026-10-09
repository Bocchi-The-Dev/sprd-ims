.class Lcom/spreadtrum/ims/IwlanDataService$1;
.super Landroid/content/BroadcastReceiver;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanDataService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$1;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$1;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-static {p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanDataService;)V

    .line 132
    return-void
.end method
