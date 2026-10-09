.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/content/Context;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    .line 584
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 585
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 589
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmWinMana(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 591
    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    .line 592
    const/16 v3, 0x15e

    if-ge p1, v3, :cond_3

    const/16 v3, 0xa

    if-gt p1, v3, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    const/16 v3, 0x50

    if-lt p1, v3, :cond_1

    const/16 v3, 0x64

    if-gt p1, v3, :cond_1

    .line 595
    const/16 v0, 0x5a

    goto :goto_1

    .line 596
    :cond_1
    const/16 v3, 0xaa

    if-lt p1, v3, :cond_2

    const/16 v3, 0xbe

    if-gt p1, v3, :cond_2

    .line 597
    const/16 v0, 0xb4

    goto :goto_1

    .line 598
    :cond_2
    const/16 v3, 0x104

    if-lt p1, v3, :cond_4

    const/16 v3, 0x118

    if-gt p1, v3, :cond_4

    .line 599
    const/16 v0, 0x10e

    goto :goto_1

    .line 593
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 602
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result p1

    if-eq v0, p1, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result p1

    if-eq v1, p1, :cond_7

    .line 605
    :cond_6
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenRotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 607
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 608
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 609
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    :cond_7
    return-void
.end method
