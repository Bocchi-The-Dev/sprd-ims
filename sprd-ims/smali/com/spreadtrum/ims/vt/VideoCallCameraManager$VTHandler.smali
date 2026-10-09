.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;
.super Landroid/os/Handler;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 103
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 123
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->excuteSetCamera(Ljava/lang/String;)V

    .line 121
    goto :goto_0

    .line 109
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$mhandleOrientationChange(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    .line 110
    goto :goto_0

    .line 106
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->initCameraAndStartPreview()V

    .line 107
    goto :goto_0

    .line 113
    :sswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmVTManagerProxy(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    const/16 v0, 0xc8

    const/16 v1, 0xcd

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->notifyImsEventListener(II)V

    .line 115
    nop

    .line 126
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x3e7 -> :sswitch_2
        0x3e8 -> :sswitch_1
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method
