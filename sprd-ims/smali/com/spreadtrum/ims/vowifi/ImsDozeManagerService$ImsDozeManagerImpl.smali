.class Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;
.super Lcom/android/ims/internal/IImsDozeManager$Stub;
.source "ImsDozeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsDozeManagerImpl"
.end annotation


# instance fields
.field private mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsDozeManager$Stub;-><init>()V

    .line 92
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    .line 95
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    .line 96
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->this$0:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    const-string v1, "com.spreadtrum.ims.permisson.IMS_COMMON"

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 102
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IImsDozeManager-> permission denied !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsDozeManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public registerImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$mregisterImsDozeObserver(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/android/ims/internal/IImsDozeObserver;)V

    .line 117
    return-void
.end method

.method public setImsDozeEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$msetImsDozeEnabled(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Z)V

    .line 112
    return-void
.end method

.method public unregisterImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService$ImsDozeManagerImpl;->mService:Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;->-$$Nest$munregisterImsDozeObserver(Lcom/spreadtrum/ims/vowifi/ImsDozeManagerService;Lcom/android/ims/internal/IImsDozeObserver;)V

    .line 122
    return-void
.end method
