.class public Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;,
        Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final MODIFY_REQUEST_TIMEOUT:I = 0x3a98

.field private static final MSG_REJECT_MODIFY_REQUEST:I = 0xc

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_ROTATE:I = 0x0

.field private static final MSG_SEND_MODIFY_REQUEST:I = 0x9

.field private static final MSG_SEND_MODIFY_RESPONSE:I = 0xa

.field private static final MSG_SEND_MODIFY_SUCCESS_RESPONSE:I = 0xb

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0x8

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x5

.field private static final MSG_START_CAMERA:I = 0x1

.field private static final MSG_STOP_CAMERA:I = 0x2

.field private static final MSG_STOP_REMOTE_RENDER:I = 0x7

.field private static final MSG_SWITCH_CAMERA:I = 0x3

.field private static final PROP_KEY_SUPPORT_TXRX_UPDATE:Ljava/lang/String; = "persist.sys.txrx_vt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAngle:I

.field private mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplaySurface:Landroid/view/Surface;

.field private mFromProfile:Landroid/telecom/VideoProfile;

.field private mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

.field private mOrientationListener:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

.field private mPreCameraId:Ljava/lang/String;

.field private mPreDisplaySurface:Landroid/view/Surface;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mScreenRotation:I

.field private mToProfile:Landroid/telecom/VideoProfile;

.field private mVideoProfile:Landroid/telecom/VideoProfile;

.field private mVideoQualityLevel:I

.field private mWaitForModifyRequest:Z

.field private mWaitForModifyResponse:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationListener(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mOrientationListener:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraCapabilities(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mScreenRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitForModifyRequest(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitForModifyResponse(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyResponse:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcalculateAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->calculateAngle(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcameraCapabilitiesEquals(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/telecom/VideoProfile$CameraCapabilities;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->cameraCapabilitiesEquals(Landroid/telecom/VideoProfile$CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCameraCapabilities(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVideoQualityLevel(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)F
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->getVideoQualityLevel()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLandscape(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 44
    const/4 p2, -0x1

    iput p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    .line 45
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mScreenRotation:I

    .line 46
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    .line 47
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    .line 48
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyResponse:Z

    .line 49
    iput-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyRequest:Z

    .line 51
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplay:Landroid/view/Display;

    .line 53
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    .line 54
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 55
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    .line 56
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoProfile:Landroid/telecom/VideoProfile;

    .line 57
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mFromProfile:Landroid/telecom/VideoProfile;

    .line 58
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mToProfile:Landroid/telecom/VideoProfile;

    .line 59
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 60
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 61
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mOrientationListener:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    .line 64
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreCameraId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    .line 294
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    .line 295
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 296
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;-><init>(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mOrientationListener:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    .line 297
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 299
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 300
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplay:Landroid/view/Display;

    .line 302
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VideoCall"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 304
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 305
    new-instance p2, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    .line 306
    return-void
.end method

.method private calculateAngle(I)V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 740
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mScreenRotation:I

    if-ne v0, v1, :cond_0

    .line 743
    return-void

    .line 748
    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation changed, deviceOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    .line 753
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mScreenRotation:I

    .line 754
    rsub-int p1, p1, 0x168

    mul-int/lit8 v0, v0, 0x5a

    rsub-int v0, v0, 0x168

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the new angle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", and the old angle is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    if-eq v0, p1, :cond_1

    .line 758
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    .line 759
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Send the rotate message for new angle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mAngle:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_1
    return-void
.end method

.method private cameraCapabilitiesEquals(Landroid/telecom/VideoProfile$CameraCapabilities;)Z
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-ne v0, p1, :cond_2

    .line 703
    :cond_1
    return v1

    .line 704
    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 705
    return v2

    .line 706
    :cond_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 707
    return v2

    .line 709
    :cond_4
    invoke-virtual {v0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 710
    invoke-virtual {v0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 711
    invoke-virtual {v0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    move-result v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 712
    invoke-virtual {v0}, Landroid/telecom/VideoProfile$CameraCapabilities;->isZoomSupported()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->isZoomSupported()Z

    move-result p1

    if-ne v0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    .line 709
    :goto_0
    return v1
.end method

.method private getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 3

    .line 729
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->getVideoQualityLevel()F

    move-result v0

    .line 730
    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->findVideoQuality(F)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object v0

    .line 731
    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getDefaultVideoQuality(Landroid/content/SharedPreferences;)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object v0

    .line 735
    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_width:I

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_height:I

    invoke-direct {v1, v2, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    return-object v1
.end method

.method private getVideoQualityLevel()F
    .locals 2

    .line 717
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    if-gez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getDefaultVideoLevel()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    .line 719
    if-gez v0, :cond_0

    .line 720
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Can not get the default video level, set it as default."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getDefaultVideoQuality(Landroid/content/SharedPreferences;)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_level:I

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    .line 725
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    int-to-float v0, v0

    return v0
.end method

.method private isLandscape()Z
    .locals 2

    .line 693
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSupportTXRXUpdate()Z
    .locals 2

    .line 697
    const-string v0, "persist.sys.txrx_vt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 312
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 319
    :cond_0
    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    return-object v0
.end method

.method public getCurImsVideoQuality()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    sparse-switch v0, :sswitch_data_0

    .line 689
    const/4 v0, 0x0

    return v0

    .line 672
    :sswitch_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/16 v0, 0x8

    return v0

    .line 675
    :cond_0
    const/16 v0, 0x10

    return v0

    .line 680
    :sswitch_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/4 v0, 0x2

    return v0

    .line 683
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 686
    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0x16 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public getDisplaySurface()Landroid/view/Surface;
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    monitor-exit v0

    return-object v1

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    monitor-exit v0

    return-object v1

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVideoProfile()Landroid/telecom/VideoProfile;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoProfile:Landroid/telecom/VideoProfile;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoProfile:Landroid/telecom/VideoProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isWaitForModifyRequest()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyRequest:Z

    return v0
.end method

.method public isWaitForModifyResponse()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyResponse:Z

    return v0
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 355
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "On request call data usage. Do not handle now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 360
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "On request camera capabilities."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 362
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 7

    .line 367
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On send session modify request. From profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string p1, "As there is a modify request in porcess, ignore this new request."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 379
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    .line 380
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    .line 381
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasPaused:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPaused:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eq v1, v2, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 385
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isSupportTXRXUpdate()Z

    move-result v3

    if-nez v3, :cond_3

    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 388
    const-string p1, "As do not support TXRX update, handle as pause state change action."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p1

    .line 391
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    .line 392
    if-ne p1, v1, :cond_1

    .line 395
    const-string p1, "The fromProfile is same as the toProfile\'s trans. It\'s abnormal."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string p1, "Ignore this abnormal, change the status as toProfile."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    const/16 p1, 0xb

    if-eqz v1, :cond_2

    .line 404
    const-string v1, "Start the video transmission successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    .line 406
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 405
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 410
    :cond_2
    const-string v1, "Stop the video transmission successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    .line 412
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 411
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    :goto_0
    goto :goto_1

    .line 416
    :cond_3
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mFromProfile:Landroid/telecom/VideoProfile;

    .line 417
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mToProfile:Landroid/telecom/VideoProfile;

    .line 419
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(Landroid/telecom/VideoProfile;)I

    move-result p1

    .line 420
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 421
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 422
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    goto :goto_1

    .line 424
    :cond_4
    if-eq v3, v4, :cond_5

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The new video paused state changed to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", DO NOT HANDLE!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    :cond_5
    const-string p1, "There isn\'t any update for the video profile. Please check!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_1
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4

    .line 435
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On send session modify response. response profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string p1, "As there is a modify response in process, ignore this response."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(Landroid/telecom/VideoProfile;)I

    move-result p1

    .line 446
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->removeMessages(I)V

    .line 447
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 449
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 460
    :pswitch_0
    const-string p1, "Response as normal video call, do nothing."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopTransmission()V

    .line 455
    goto :goto_0

    .line 457
    :pswitch_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopReception()V

    .line 458
    goto :goto_0

    .line 451
    :pswitch_3
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 452
    nop

    .line 463
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 6

    .line 467
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 469
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On set the camera from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 476
    :cond_0
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {v1, v4, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 486
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set the camera to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", but the old camera is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    .line 487
    invoke-static {v5}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez p1, :cond_3

    .line 492
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->removeMessages(I)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->removeMessages(I)V

    .line 500
    :goto_0
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1

    .line 507
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDeviceOrientation:I

    if-gez v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->calculateAngle(I)V

    .line 510
    :cond_0
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 515
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On set the display surface to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-nez p1, :cond_0

    .line 517
    const-string p1, "Set the display surface to null, ignore this request."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit v0

    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 523
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 3

    .line 535
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On set the pause image to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 542
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On set the preview surface as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string p1, "Set the preview surface to null, ignore this request."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    monitor-exit v0

    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSetZoom(F)V
    .locals 3

    .line 554
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On set the zoom to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3

    .line 323
    invoke-super {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 325
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyRequest:Z

    .line 330
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/16 v0, 0xc

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1

    .line 336
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 338
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mToProfile:Landroid/telecom/VideoProfile;

    .line 339
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mFromProfile:Landroid/telecom/VideoProfile;

    .line 341
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/telephony/ims/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 343
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mWaitForModifyResponse:Z

    .line 344
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoProfile:Landroid/telecom/VideoProfile;

    .line 345
    return-void
.end method

.method public resumeAll()V
    .locals 4

    .line 629
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to resume the video with the pre camera and surface."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 633
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->onSetCamera(Ljava/lang/String;)V

    .line 635
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreCameraId:Ljava/lang/String;

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    if-nez v3, :cond_1

    .line 640
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->onSetDisplaySurface(Landroid/view/Surface;)V

    .line 642
    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    .line 644
    :cond_1
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAll()V
    .locals 2

    .line 619
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Stop all the video action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreCameraId:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mPreDisplaySurface:Landroid/view/Surface;

    .line 624
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopReception()V

    .line 625
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopTransmission()V

    .line 626
    return-void
.end method

.method public stopReception()V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 602
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "Stop the reception."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mDisplaySurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 606
    :cond_0
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopTransmission()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 611
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "Stop the transmission."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 615
    :cond_0
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateVideoProfile(Landroid/telecom/VideoProfile;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoProfile:Landroid/telecom/VideoProfile;

    .line 586
    return-void
.end method

.method public updateVideoQualityLevel(I)V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 649
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update the video quality level from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-lez p1, :cond_1

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    if-eq p1, v1, :cond_1

    .line 652
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mVideoQualityLevel:I

    .line 654
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mCameraId:Ljava/lang/String;

    .line 655
    if-eqz p1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 660
    :cond_0
    if-eqz p1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    :cond_1
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
