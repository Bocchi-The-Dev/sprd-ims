.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;
.super Ljava/lang/Object;
.source "VideoCallCameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->initCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmVideoCallEngine(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmThreadLock(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 231
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 233
    :cond_0
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mOperateCameraThread start. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mopenCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 235
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmVideoCallEngine(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmThreadLock(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 238
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 240
    :cond_1
    :goto_1
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mOperateCameraThread end. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method
