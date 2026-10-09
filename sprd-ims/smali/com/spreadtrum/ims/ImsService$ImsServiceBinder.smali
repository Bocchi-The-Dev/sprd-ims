.class public Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;
.super Landroid/os/Binder;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/spreadtrum/ims/ImsService;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$ImsServiceBinder;->this$0:Lcom/spreadtrum/ims/ImsService;

    return-object v0
.end method
