.class public Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;
.super Landroid/app/Service;
.source "ImsDozeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;
    }
.end annotation


# static fields
.field private static final MSG_NOTIFY:I = 0x1

.field private static final MSG_NOTIFY_ALL:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final UNISOC_IMS_SERVICE_COMMON_PERMISSION:Ljava/lang/String; = "com.spreadtrum.ims.permisson.IMS_COMMON"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mImsDozeEnabled:Z

.field private mObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ims/internal/IImsDozeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mImsDozeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmObserverList(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mObserverList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterImsDozeObserver(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->registerImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->setImsDozeEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterImsDozeObserver(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->unregisterImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;

    invoke-direct {v0, p0, p0}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;-><init>(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mBinder:Landroid/os/IBinder;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mImsDozeEnabled:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mObserverList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$1;-><init>(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private registerImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 2

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    :cond_0
    return-void
.end method

.method private setImsDozeEnabled(Z)V
    .locals 3

    .line 71
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the doze status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mImsDozeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mImsDozeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 73
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mImsDozeEnabled:Z

    .line 74
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    :cond_0
    return-void
.end method

.method private unregisterImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->mBinder:Landroid/os/IBinder;

    const-string v1, "ims_doze_manager"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "IMS_DOZE_MANAGER add to service manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
