.class Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;
.super Landroid/database/ContentObserver;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationObserver"
.end annotation


# instance fields
.field mIsStartObserver:Z

.field mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Handler;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    .line 696
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 697
    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 698
    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 706
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 709
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 713
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmVideoCallEngine(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallEngine;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 714
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result p1

    if-nez p1, :cond_0

    .line 715
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 716
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OrientationSettingClosed(0), force change mScreenRotation to 0"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmWinMana(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V

    .line 720
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrientationSettingChanged->setPreviewDisplayOrientation,mDeviceRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOrientationSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmVideoCallEngine(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->this$0:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$fgetmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setPreviewDisplayOrientation(III)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_1

    .line 726
    :catch_0
    move-exception p1

    .line 727
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewDisplayOrientation is fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 731
    :cond_1
    :goto_1
    return-void
.end method

.method public startObserver()V
    .locals 3

    .line 734
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObserver mResolver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsStartObserver ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    if-nez v1, :cond_0

    .line 736
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    .line 737
    nop

    .line 738
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 737
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 741
    :cond_0
    return-void
.end method

.method public stopObserver()V
    .locals 3

    .line 744
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObserver mIsStartObserver ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->mIsStartObserver:Z

    .line 749
    :cond_0
    return-void
.end method
