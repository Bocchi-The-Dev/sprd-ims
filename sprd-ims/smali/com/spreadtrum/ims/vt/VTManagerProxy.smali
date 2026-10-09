.class public Lcom/spreadtrum/ims/vt/VTManagerProxy;
.super Ljava/lang/Object;
.source "VTManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;
    }
.end annotation


# static fields
.field private static final EVENT_CONNECTION_AUDIO_QUALITY_CHANGED:I = 0x194

.field private static final EVENT_CONNECTION_LOCAL_VIDEO_CAPABILITY_CHANGED:I = 0x191

.field private static final EVENT_CONNECTION_REMOTE_VIDEO_CAPABILITY_CHANGED:I = 0x192

.field private static final EVENT_CONNECTION_VIDEO_PROVIDER_CHANGED:I = 0x193

.field private static final EVENT_CONNECTION_VIDEO_STATE_CHANGED:I = 0x190

.field private static final EVENT_HANDOVER_STATE_CHANGED:I = 0x67

.field private static final EVENT_IMS_VIDEO_QOS:I = 0x12f

.field public static final EVENT_ON_SET_CAMERA:I = 0xc8

.field public static final EVENT_ON_SET_DEVICE_ORIENTATION:I = 0xcc

.field public static final EVENT_ON_SET_DISPLAY_SURFACE:I = 0xca

.field public static final EVENT_ON_SET_PAUSE_IMAGE:I = 0xcb

.field public static final EVENT_ON_SET_PREVIEW_SURFACE:I = 0xc9

.field public static final EVENT_ON_UPDATE_DEVICE_QUALITY:I = 0xcd

.field public static final EVENT_ON_VT_DISCONNECT:I = 0x259

.field public static final EVENT_ON_VT_ESTABLISH:I = 0x258

.field private static final EVENT_VIDEO_CALL_CODEC:I = 0x12c

.field private static final EVENT_VIDEO_CALL_FALL_BACK:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "ImsVTManagerProxy"

.field private static mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

.field private static final mLock:Ljava/lang/Object;

.field private static final mObj:Ljava/lang/Object;


# instance fields
.field private mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mDisplaySurface:Landroid/view/Surface;

.field public mHandler:Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsVideoQos:I

.field private mPeerHeight:I

.field private mPeerVideoQuality:I

.field private mPeerWidth:I

.field public mPreviewHeight:I

.field private mPreviewSurface:Landroid/view/Surface;

.field public mPreviewWidth:I

.field private mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mRotation:I

.field private mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

.field private mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;


# direct methods
.method static bridge synthetic -$$Nest$mhandleDisconnect(Lcom/spreadtrum/ims/vt/VTManagerProxy;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleDisconnect(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsQosReport(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleImsQosReport(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCamera(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetCamera(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetDeviceOrientation(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetDeviceOrientation(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetDisplaySurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetDisplaySurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetPauseImage(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetPauseImage(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetPreviewSurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateVideoQuality(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleUpdateVideoQuality(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerVideoQuality:I

    .line 84
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    .line 85
    const/16 v2, 0x280

    iput v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    .line 86
    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    .line 87
    iput v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    .line 88
    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    .line 95
    iput-object p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 96
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    .line 97
    new-instance p1, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;-><init>(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mHandler:Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

    .line 98
    return-void
.end method

.method public static getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 2

    .line 110
    sget-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDisconnect(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDisconnect->imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 194
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 196
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getAliveVideoCallSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    .line 197
    if-eqz p1, :cond_0

    .line 198
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 199
    const-string p1, "has other active video call, NO disconnected!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->getIsInScreenShare()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 202
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->putSurfaceExtra(Landroid/view/Surface;)V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->onVTConnectionDisconnected()V

    .line 207
    :cond_2
    :goto_0
    return-void
.end method

.method private handleImsQosReport(Landroid/os/AsyncResult;)V
    .locals 3

    .line 352
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 358
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 359
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsVideoQos:I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsQosReport : qos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsVideoQos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsQosReport : result.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mVideoCallEngine:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 363
    return-void

    .line 353
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsQosReport : ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ar.result= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private handleSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetCamera->cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez v0, :cond_0

    .line 235
    const-string p1, "handleSetCamera mVideoCallCameraManager is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 236
    return-void

    .line 238
    :cond_0
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->handleSetCamera(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private handleSetDeviceOrientation(Ljava/lang/Integer;)V
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDeviceOrientation->rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez v0, :cond_0

    .line 293
    const-string p1, "handleSetDeviceOrientation-->mVideoCallCameraManager is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 294
    return-void

    .line 296
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    .line 298
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->onSetDeviceRotation(I)V

    .line 300
    :cond_1
    return-void
.end method

.method private handleSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDisplaySurface->Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 281
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mDisplaySurface:Landroid/view/Surface;

    .line 282
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsRemoteSurface(Landroid/view/Surface;)V

    .line 285
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    iget p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPeerDimensions(II)V

    .line 288
    :cond_1
    return-void
.end method

.method private handleSetPauseImage(Landroid/net/Uri;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetPauseImage->uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsPauseImage(Landroid/net/Uri;)V

    .line 370
    :cond_0
    return-void
.end method

.method private handleSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetPreviewSurface->Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewSurface:Landroid/view/Surface;

    .line 261
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsLocalSurface(Landroid/view/Surface;)V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez p1, :cond_1

    .line 271
    const-string p1, "handleSetPreviewSurface-->mVideoCallCameraManager is null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 272
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->handleSetCameraPreSurface(Landroid/view/Surface;)V

    .line 277
    return-void
.end method

.method private handleUpdateVideoQuality(Ljava/lang/Integer;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateVideoQuality->quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerVideoQuality:I

    .line 305
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updateVideoQuality(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 2

    .line 101
    sget-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;

    invoke-direct {v1, p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)V

    sput-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    .line 105
    :cond_0
    sget-object p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    monitor-exit v0

    return-object p0

    .line 106
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isVideoCall()Z
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 373
    const-string v0, "ImsVTManagerProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private updateSessionModificationState()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "updateSessionModificationState mActiveImsCallSessionImpl is null!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 246
    return-void

    .line 248
    :cond_0
    nop

    .line 249
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    const-string v1, "updateSessionModificationState receiveSessionModifyResponse"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 255
    :cond_1
    return-void
.end method


# virtual methods
.method public handleVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VTConnectionEstablished->imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_1

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleVTConnectionEstablished->Don\'t create VTManager cause : isVideoCallAlive()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 171
    return-void

    .line 173
    :cond_2
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 174
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 175
    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 176
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-nez v1, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    .line 178
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 179
    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 180
    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;Lcom/spreadtrum/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 181
    new-instance p1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;-><init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/content/Context;Lcom/spreadtrum/ims/vt/VTManagerProxy;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    .line 182
    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerVideoQuality:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 183
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updateVideoQuality(I)V

    .line 186
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleVTConnectionEstablished mVideoCallEngine and mVideoCallCameraManager have been created mVideoCallEngine: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 190
    :cond_4
    return-void
.end method

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 381
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isImsCallAlive()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyImsEventListener(II)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 378
    return-void
.end method

.method public onVTConnectionDisconnected()V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "No active video call!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->releaseVideocallEngine()V

    .line 216
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->releaseVideoCamera()V

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    .line 220
    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 221
    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerVideoQuality:I

    .line 223
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    .line 224
    const/16 v2, 0x280

    iput v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    .line 225
    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    .line 226
    iput v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    .line 227
    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    .line 228
    const-string v0, "onVTConnectionDisconnected::"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 230
    :cond_2
    return-void
.end method

.method public putSurfaceExtra(Landroid/view/Surface;)V
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSurfaceExtra surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->putScreenSurfaceExtra(Landroid/view/Surface;)V

    .line 426
    :cond_0
    return-void
.end method

.method public requestDownToAudio()V
    .locals 6

    .line 392
    nop

    .line 393
    new-instance v0, Landroid/telephony/UniCarrierConfigManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDownToAudio-> isVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isVideoCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 397
    nop

    .line 398
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 399
    nop

    .line 400
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    array-length v5, v1

    if-lt v5, v2, :cond_0

    .line 401
    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 404
    const-string v1, "carrier_downgrade_to_voice_when_rtp_timeout"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 407
    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

    if-eqz v0, :cond_2

    .line 408
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    .line 411
    :cond_2
    return-void
.end method

.method public setPeerDimensions(II)V
    .locals 3

    .line 338
    iput p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    .line 339
    iput p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    .line 340
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 341
    nop

    .line 342
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPeerDimensions->width="

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

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->changePeerDimensions(II)V

    .line 348
    :cond_0
    return-void
.end method

.method public setPreviewSize()V
    .locals 2

    .line 334
    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize(II)V

    .line 335
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2

    .line 316
    nop

    .line 317
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_2

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize->width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    .line 321
    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    if-eq v1, p2, :cond_1

    .line 322
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    .line 323
    iput p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    .line 325
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 330
    :cond_2
    return-void
.end method
