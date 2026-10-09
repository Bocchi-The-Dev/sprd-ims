.class Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$1;
.super Landroid/content/BroadcastReceiver;
.source "IwlanQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$1;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$1;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    invoke-static {p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V

    .line 120
    return-void
.end method
