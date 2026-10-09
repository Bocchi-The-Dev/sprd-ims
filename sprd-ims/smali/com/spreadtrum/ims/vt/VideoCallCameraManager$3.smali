.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;
.super Ljava/lang/Object;
.source "VideoCallCameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->operateCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

.field final synthetic val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    iput-object p2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 501
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operateCamera() E, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 503
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_OPEN:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_SWITCH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    if-ne v0, v1, :cond_3

    .line 510
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mcloseCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 511
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mopenCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    goto :goto_1

    .line 504
    :cond_1
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    if-ne v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mcloseCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    goto :goto_1

    .line 506
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_OPEN:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->val$type:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    if-ne v0, v1, :cond_3

    .line 507
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mopenCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 513
    :cond_3
    :goto_1
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeOrSwitchCamera() X"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 515
    return-void
.end method
