.class public Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;
.super Landroid/os/Binder;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IwlanDataServiceConnector"
.end annotation


# instance fields
.field final mBase:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanDataService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;Landroid/os/IBinder;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;->mBase:Landroid/os/IBinder;

    .line 590
    return-void
.end method


# virtual methods
.method public getConnector()Landroid/telephony/data/IDataService;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;->mBase:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/telephony/data/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/spreadtrum/ims/IwlanDataService;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    return-object v0
.end method
