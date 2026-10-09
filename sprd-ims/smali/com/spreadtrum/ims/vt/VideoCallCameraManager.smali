.class public Lcom/spreadtrum/ims/vt/VideoCallCameraManager;
.super Ljava/lang/Object;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;,
        Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;,
        Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;,
        Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_CONTRAST_ERROR:I = -0x1

.field public static final CAMERA_PARAMETERS_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final CAMERA_PARAMETERS_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final EVENT_CAMERA_FAIL:I = 0x64

.field private static final EVENT_CHANGE_ORIENTATION:I = 0x3e8

.field private static final EVENT_DELAYED_CREATE_CAMERA:I = 0x3e7

.field private static final EVENT_HANDLE_SET_CAMERA:I = 0x2711

.field private static final OPERATION_SUCCESS:S = 0x0s

.field private static final ORIENTATION_SETTING_OFF:I = 0x0

.field private static final ORIENTATION_SETTING_ON:I = 0x1

.field private static final START_CAMERA_TIMES:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final UNISOC_DISPLAY_ORIENTATION:Ljava/lang/String; = "uniosc_display_orientation"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mCameraLock:Ljava/lang/Object;

.field private mCameraNumbers:I

.field private mCameraTimes:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeviceRotation:I

.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

.field public mHeight:I

.field private mIsFirstInit:Z

.field private mIsOpened:Z

.field private mIsPreviewing:Z

.field private mIsRecording:Z

.field private mIsSurfacePreviewFailed:Z

.field private mIsVideoQualityReceived:Z

.field private mOperateCameraThread:Ljava/lang/Thread;

.field private mOrientationListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;

.field private mOrientationSetting:I

.field private mOrientationSettingListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mRotationValueObserver:Landroid/database/ContentObserver;

.field private mScreenRotation:I

.field private mThreadLock:Ljava/lang/Object;

.field private mThreadRunning:Z

.field private mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

.field private mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

.field private mVideoQuality:I

.field public mWidth:I

.field private mWinMana:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreadLock(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVTManagerProxy(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoCallEngine(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Lcom/spreadtrum/ims/vt/VideoCallEngine;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWinMana(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWinMana:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientationSetting(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThreadRunning(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mThreadRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->closeCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOrientationChange(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->handleOrientationChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->openCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCameraPara(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updateCameraPara()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/content/Context;Lcom/spreadtrum/ims/vt/VTManagerProxy;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mThreadLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraTimes:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraNumbers:I

    .line 76
    const/16 v1, 0xb0

    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 77
    const/16 v1, 0x90

    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 78
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    .line 80
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsSurfacePreviewFailed:Z

    .line 82
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsVideoQualityReceived:Z

    .line 91
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    .line 93
    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    .line 130
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 131
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->initializeCameraList(Landroid/content/Context;)V

    .line 132
    iput-object p3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    .line 133
    new-instance p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;

    .line 134
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->enable()V

    .line 135
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->getCameraResolution()I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    .line 136
    iput-object p2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 138
    new-instance p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p3}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$1;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRotationValueObserver:Landroid/database/ContentObserver;

    .line 147
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 148
    const-string p3, "uniosc_display_orientation"

    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRotationValueObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-virtual {p1, p3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    new-instance p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    .line 151
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWinMana:Landroid/view/WindowManager;

    .line 153
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accelerometer_rotation"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    .line 156
    new-instance p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSettingListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;

    .line 157
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->startObserver()V

    .line 160
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .line 373
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsCameraId(I)I

    .line 379
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    goto :goto_0

    .line 383
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 380
    :catch_0
    move-exception v1

    .line 381
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :goto_0
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getCamerID()Ljava/lang/String;
    .locals 3

    .line 166
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCamerID(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method private getSensorRotation(Ljava/lang/String;)I
    .locals 4

    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    add-int/lit8 v0, v0, 0x5a

    goto :goto_0

    .line 194
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    const/16 v1, 0x10e

    if-lt v0, v1, :cond_1

    .line 195
    add-int/2addr v0, v1

    goto :goto_0

    .line 197
    :cond_1
    rsub-int v0, v0, 0x10e

    .line 200
    :goto_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSensorRotation()->cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " cameraRotation:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mDeviceRotation:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v0
.end method

.method private handleOrientationChange()V
    .locals 3

    .line 615
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOrientationChange->mDeviceRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->isGmsVersion()Z

    move-result v0

    if-nez v0, :cond_3

    .line 618
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 622
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    iput v1, v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    .line 623
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    iput v1, v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    goto :goto_1

    .line 619
    :cond_2
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    iput v1, v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    .line 620
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    iput v1, v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    .line 626
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updateCameraPara()V

    .line 627
    return-void
.end method

.method private initializeCameraList(Landroid/content/Context;)V
    .locals 7

    .line 528
    const-string v0, "initializeCameraList fail: "

    if-nez p1, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    nop

    .line 534
    :try_start_0
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 539
    nop

    .line 541
    if-nez p1, :cond_1

    .line 542
    return-void

    .line 545
    :cond_1
    nop

    .line 547
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 552
    nop

    .line 554
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 555
    const/4 v3, 0x0

    .line 557
    :try_start_2
    aget-object v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 564
    :goto_1
    goto :goto_2

    .line 561
    :catch_0
    move-exception v4

    .line 563
    sget-object v5, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 558
    :catch_1
    move-exception v4

    .line 560
    sget-object v5, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    :goto_2
    if-eqz v3, :cond_4

    .line 566
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 567
    if-nez v3, :cond_2

    .line 568
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeCameraList facingCharacteristic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    goto :goto_4

    .line 571
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    .line 572
    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    goto :goto_3

    .line 573
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 574
    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    .line 554
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_5
    :goto_4
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeCameraList->mFrontFacingCameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mRearFacingCameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void

    .line 548
    :catch_2
    move-exception p1

    .line 549
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 536
    :catch_3
    move-exception p1

    .line 537
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not get camera service."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method private isThreadRunning()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mThreadRunning:Z

    return v0
.end method

.method private openCamera()V
    .locals 5

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :try_start_1
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera(), mIsOpened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    if-nez v1, :cond_6

    .line 257
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->getCamerID()Ljava/lang/String;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_4

    .line 259
    const-string v2, "screenshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWinMana:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWinMana:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWinMana:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 263
    invoke-static {v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setCaptureSurfaceSize(II)I

    .line 265
    :cond_0
    monitor-exit v0

    return-void

    .line 266
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 267
    monitor-exit v0

    return-void

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsCameraId(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 272
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_3
    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    iget v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    iget v4, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    invoke-static {v2, v3, v4}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setPreviewDisplayOrientation(III)V

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mLocalSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    .line 283
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object v3, v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mLocalSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsLocalSurface(Landroid/view/Surface;)V

    .line 286
    :cond_5
    sget-object v2, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera(), cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   mVideoCallEngine="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    .line 290
    :cond_6
    monitor-exit v0

    .line 294
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open Camera Fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->closeCamera()V

    .line 295
    :goto_0
    return-void
.end method

.method private declared-synchronized operateCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V
    .locals 4

    monitor-enter p0

    .line 484
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mThreadRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 491
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v1, "operateCamera(), CODEC is closed or work task locked! operateCamera join"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoCameraQuality.quit() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;

    invoke-direct {v1, p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$3;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    .line 519
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperateCameraThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 483
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setPreviewSurfaceSize(I)V
    .locals 4

    .line 298
    nop

    .line 299
    iget p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    const/16 v0, 0x140

    const/16 v1, 0xf0

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 346
    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 347
    goto :goto_0

    .line 340
    :pswitch_1
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 341
    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 342
    nop

    .line 343
    goto :goto_0

    .line 336
    :pswitch_2
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 337
    iput v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 338
    goto :goto_0

    .line 331
    :pswitch_3
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 332
    iput v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 333
    nop

    .line 334
    goto :goto_0

    .line 327
    :pswitch_4
    const/16 p1, 0xb0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 328
    const/16 p1, 0x90

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 329
    goto :goto_0

    .line 323
    :pswitch_5
    const/16 p1, 0x160

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 324
    const/16 p1, 0x120

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 325
    goto :goto_0

    .line 319
    :pswitch_6
    iput v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 320
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 321
    goto :goto_0

    .line 314
    :pswitch_7
    iput v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 315
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 316
    nop

    .line 317
    goto :goto_0

    .line 310
    :pswitch_8
    iput v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 311
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 312
    goto :goto_0

    .line 305
    :pswitch_9
    iput v3, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 306
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 307
    nop

    .line 308
    goto :goto_0

    .line 301
    :pswitch_a
    const/16 p1, 0x500

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    .line 302
    const/16 p1, 0x2d0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    .line 303
    nop

    .line 352
    :goto_0
    iget p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setPreviewSize(II)V

    .line 353
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurfaceSize, mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mVideoQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryReopenCamera()V
    .locals 4

    .line 356
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    if-eqz v0, :cond_1

    .line 357
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraTimes:I

    const/16 v1, 0x3e7

    if-ltz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraTimes:I

    .line 361
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Camera start progrom exit."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 367
    :cond_1
    :goto_0
    return-void
.end method

.method private updateCameraPara()V
    .locals 4

    .line 631
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mDeviceRotation:I

    iget v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mScreenRotation:I

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSetting:I

    invoke-static {v0, v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setPreviewDisplayOrientation(III)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewDisplayOrientation is fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 637
    :goto_0
    return-void
.end method


# virtual methods
.method public closeVideoCamera()V
    .locals 1

    .line 428
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->operateCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V

    .line 429
    return-void
.end method

.method public excuteSetCamera(Ljava/lang/String;)V
    .locals 3

    .line 445
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excuteSetCamera()->isFirstInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->closeVideoCamera()V

    .line 449
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setCameraID(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setCameraID(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->initCameraAndStartPreview()V

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->isSameCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->onSetSameCameraId()V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setCameraID(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->openVideoCamera()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setCameraID(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->switchVideoCamera()V

    .line 466
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mRotationValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 757
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterContentObserver: mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_0
    return-void
.end method

.method public handleSetCamera(Ljava/lang/String;)V
    .locals 3

    .line 432
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCamera()->isFirstInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsFirstInit:Z

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mHandler:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$VTHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 439
    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->excuteSetCamera(Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void
.end method

.method public handleSetCameraPreSurface(Landroid/view/Surface;)V
    .locals 3

    .line 387
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCameraPreSurface surface is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " mIsOpened:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 391
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->openVideoCamera()V

    .line 395
    :cond_0
    return-void
.end method

.method public initCameraAndStartPreview()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOperateCameraThread.quit() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$2;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    return-void
.end method

.method public isGmsVersion()Z
    .locals 2

    .line 640
    nop

    .line 641
    const-string v0, "ro.com.google.gmsversion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameCamera(Ljava/lang/String;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    const/4 p1, 0x1

    return p1

    .line 178
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSetDeviceRotation(I)V
    .locals 0

    .line 478
    return-void
.end method

.method public onSetSameCameraId()V
    .locals 3

    .line 469
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetSameCameraId->mIsPreviewing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsOpened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->openVideoCamera()V

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize()V

    .line 475
    :goto_0
    return-void
.end method

.method public openVideoCamera()V
    .locals 1

    .line 403
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_OPEN:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->operateCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V

    .line 404
    return-void
.end method

.method public releaseVideoCamera()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$MyOrientationEventListener;->disable()V

    .line 413
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOrientationSettingListener:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$RotationObserver;->stopObserver()V

    .line 415
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 418
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera-> wait for mOperateCameraThread done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOperateCameraThread.quit() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->closeCamera()V

    .line 425
    return-void
.end method

.method public setCameraID(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 398
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize-> width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize(II)V

    .line 400
    return-void
.end method

.method public switchVideoCamera()V
    .locals 1

    .line 407
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_SWITCH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->operateCamera(Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;)V

    .line 408
    return-void
.end method

.method public updateVideoCameraQuality()V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoCameraQuality.quit() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$4;-><init>(Lcom/spreadtrum/ims/vt/VideoCallCameraManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    .line 685
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoCameraQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mOperateCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 687
    return-void
.end method

.method public updateVideoQuality(I)V
    .locals 3

    .line 646
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->getCameraResolution()I

    move-result p1

    .line 650
    :cond_1
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsVideoQualityReceived:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 651
    :goto_1
    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    .line 652
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsVideoQualityReceived:Z

    .line 653
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoQuality->qualityChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLocalSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mLocalSurface:Landroid/view/Surface;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mCameraId:Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 657
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mIsOpened:Z

    if-nez p1, :cond_5

    .line 658
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->openVideoCamera()V

    goto :goto_3

    .line 660
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz p1, :cond_6

    .line 661
    iget p1, p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->mVideoQuality:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->setPreviewSurfaceSize(I)V

    .line 665
    :cond_6
    :goto_3
    return-void
.end method
