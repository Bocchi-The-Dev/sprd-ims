.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;
.super Landroid/database/ContentObserver;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;-><init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/content/Context;Lcom/spreadtrum/ims/vt/VTManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Handler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmContentResolver(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uniosc_display_orientation"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 143
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenRotation():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mupdateCameraPara(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 145
    return-void
.end method
