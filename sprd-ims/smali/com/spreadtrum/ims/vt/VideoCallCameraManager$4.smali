.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;
.super Ljava/lang/Object;
.source "VideoCallCameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updateVideoCameraQuality()V
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

    .line 675
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 678
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mcloseCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 679
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mopenCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 680
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V

    .line 681
    return-void
.end method
