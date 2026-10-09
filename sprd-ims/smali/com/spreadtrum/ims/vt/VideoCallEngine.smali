.class public Lcom/spreadtrum/ims/vt/VideoCallEngine;
.super Ljava/lang/Object;
.source "VideoCallEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;,
        Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;,
        Lcom/spreadtrum/ims/vt/VideoCallEngine$OnCallEventListener;,
        Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;
    }
.end annotation


# static fields
.field private static final BIND_ACTION_N3AM_VIDEO_STATE_NOTIFY:Ljava/lang/String; = "com.android.ims.internal.IN3AMVideoStateNoitfy"

.field private static final CAMERA_CLOSE_STR:Ljava/lang/String; = "close_:camera_"

.field private static final CAMERA_OPEN_STR:Ljava/lang/String; = "open_:camera_"

.field public static final CODEC_CLOSE:I = 0x2

.field public static final CODEC_OPEN:I = 0x1

.field public static final CODEC_SET_PARAM:I = 0x3

.field public static final GOOGLE_DIALER:I = 0x1

.field public static final GOOGLE_DIALER_PACKAGE:Ljava/lang/String; = "com.google.android.dialer"

.field static final MAX_BUFFER_SIZE:I = 0x40000

.field static final MAX_FRAME_SIZE:I = 0x9480

.field public static final MEDIA_CALLEVENT_CAMERACLOSE:I = 0x64

.field public static final MEDIA_CALLEVENT_CAMERAOPEN:I = 0x65

.field public static final MEDIA_CALLEVENT_CODEC_CLOSE:I = 0x6b

.field public static final MEDIA_CALLEVENT_CODEC_OPEN:I = 0x67

.field public static final MEDIA_CALLEVENT_CODEC_SET_PARAM_DECODER:I = 0x68

.field public static final MEDIA_CALLEVENT_CODEC_SET_PARAM_ENCODER:I = 0x69

.field public static final MEDIA_CALLEVENT_CODEC_START:I = 0x6a

.field public static final MEDIA_CALLEVENT_MEDIA_START:I = 0x6c

.field public static final MEDIA_CALLEVENT_STRING:I = 0x66

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x2

.field private static final PACKAGE_NAME_N3AM_VIDEO_STATE_NOTIFY:Ljava/lang/String; = "com.unisoc.n3am.vowifi.VideoStateNotifyService"

.field public static final SPRD_DIALER:I = 0x0

.field public static final SPRD_DIALER_PACKAGE:Ljava/lang/String; = "com.android.dialer"

.field private static TAG:Ljava/lang/String; = null

.field public static final VCE_EVENT_INIT_COMPLETE:I = 0x3e9

.field public static final VCE_EVENT_NATIVE_SURFACE_NULL:I = 0x3eb

.field public static final VCE_EVENT_NATIVE_SURFACE_READY:I = 0x3ea

.field public static final VCE_EVENT_NONE:I = 0x3e8

.field public static final VCE_EVENT_REMOTE_ROTATE_CHANGE:I = 0x3f3

.field public static final VCE_EVENT_SHUTDOWN:I = 0x3ee

.field public static final VCE_EVENT_STOP_DEC:I = 0x3ed

.field public static final VCE_EVENT_STOP_ENC:I = 0x3ec

.field public static final VCE_EVENT_STRM_RTCP_RR:I = 0x3f8

.field public static final VCE_EVENT_STRM_RTP_BREAK:I = 0x3f6

.field public static final VCE_EVENT_STRM_RTP_FIRST_PKT:I = 0x3f5

.field public static final VCE_EVENT_STRM_RTP_RECVED:I = 0x3f7

.field public static final VC_EVENT_LOCAL_RESOLUTION_CHANGED:I = 0x3f2

.field static final VIDEO_TYPE_H263:I = 0x1

.field static final VIDEO_TYPE_MPEG4:I = 0x2

.field private static gInstance:Lcom/spreadtrum/ims/vt/VideoCallEngine;

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mCameraResolution:I

.field private mCm:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mCodecCount:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCodecType:I

.field private mEventHandler:Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;

.field private mImsConfigImpl:Lcom/spreadtrum/ims/ImsConfigImpl;

.field private mIsInScreenShare:Z

.field private mIsSingleImsStack:Z

.field private mLocalNativeSurfaceTexture:I

.field mLocalSurface:Landroid/view/Surface;

.field private mN3amServiceConn:Landroid/content/ServiceConnection;

.field private mN3amVideoStateNoitfy:Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

.field private mOnCallEventListener:Lcom/spreadtrum/ims/vt/VideoCallEngine$OnCallEventListener;

.field private mRemoteNativeSurfaceTexture:I

.field mRemoteSurface:Landroid/view/Surface;

.field private mStrmRtpBreakTimes:I

.field private mVideoState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsSingleImsStack:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mN3amVideoStateNoitfy:Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mStrmRtpBreakTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;Lcom/android/ims/internal/IN3AMVideoStateNoitfy;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mN3amVideoStateNoitfy:Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrmRtpBreakTimes(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mStrmRtpBreakTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoState(Lcom/spreadtrum/ims/vt/VideoCallEngine;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/vt/VideoCallEngine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "ImsVideoCallEngine"

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->gInstance:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 110
    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 134
    const-string v0, "video_call_engine_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;Lcom/spreadtrum/ims/ImsConfigImpl;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mN3amVideoStateNoitfy:Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsSingleImsStack:Z

    .line 58
    iput-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsInScreenShare:Z

    .line 107
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCodecCount:I

    .line 108
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCurrentCodecType:I

    .line 109
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mStrmRtpBreakTimes:I

    .line 138
    new-instance v3, Lcom/spreadtrum/ims/vt/VideoCallEngine$1;

    invoke-direct {v3, p0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$1;-><init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mN3amServiceConn:Landroid/content/ServiceConnection;

    .line 540
    iput v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    .line 154
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCm:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 155
    iput-object p2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mContext:Landroid/content/Context;

    .line 156
    iput-object p3, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mImsConfigImpl:Lcom/spreadtrum/ims/ImsConfigImpl;

    .line 158
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsSingleImsStack:Z

    .line 159
    if-eqz p1, :cond_0

    .line 160
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 161
    const-string p3, "com.unisoc.n3am.vowifi.VideoStateNotifyService"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string p3, "com.android.ims.internal.IN3AMVideoStateNoitfy"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object p3, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mN3amServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p3, p1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 167
    :cond_0
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->initContext(Landroid/content/Context;)V

    .line 168
    sput-object p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->gInstance:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 169
    sget-object p1, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    const-string p2, "VideoCallEngine create."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->init()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 172
    :catch_0
    move-exception p1

    .line 173
    sget-object p2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init() fail:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 176
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v2, v2, v2, v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 178
    :try_start_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setup(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    goto :goto_1

    .line 179
    :catch_1
    move-exception p1

    .line 180
    sget-object p2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setup() fail:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 184
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->getDefaultDialer()I

    move-result p1

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setDialerType(I)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    goto :goto_2

    .line 185
    :catch_2
    move-exception p1

    .line 186
    sget-object p2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDialerType() fail:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 189
    :goto_2
    return-void
.end method

.method private checkSupportedDialer()V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 314
    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 319
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    sget-object v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSupportedDialer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_0

    .line 322
    :cond_3
    return-void

    .line 317
    :cond_4
    :goto_1
    return-void
.end method

.method private getDefaultDialer()I
    .locals 5

    .line 325
    nop

    .line 335
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    sget-object v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 341
    sget-object v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDialer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz v0, :cond_2

    const-string v2, "com.google.android.dialer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 353
    :cond_2
    return v1

    .line 338
    :cond_3
    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/spreadtrum/ims/vt/VideoCallEngine;
    .locals 1

    .line 192
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->gInstance:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    return-object v0
.end method

.method public static native getNativeSurface()Landroid/view/Surface;
.end method

.method public static native hideLocalImage(ZLjava/lang/String;)V
.end method

.method public static native init()V
.end method

.method private initContext(Landroid/content/Context;)V
    .locals 1

    .line 196
    const-string v0, "initContext() E"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;-><init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mEventHandler:Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;

    .line 198
    const/4 p1, 0x0

    iput p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    .line 199
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->initCameraResolution()V

    .line 200
    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->checkSupportedDialer()V

    .line 201
    const-string p1, "initContext() X"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static native jfinalize()V
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 537
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method private final native native_closePipe()I
.end method

.method private final native native_waitRequestForAT()I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    .line 216
    if-nez p0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    add-int/lit16 p1, p1, 0x3e8

    .line 220
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;

    .line 223
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mEventHandler:Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 225
    iget-object p0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mEventHandler:Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :cond_1
    return-void
.end method

.method public static native prepare()V
.end method

.method public static native release()V
.end method

.method public static native reset()V
.end method

.method public static native selectRecordFileFormat(I)V
.end method

.method public static native selectRecordSource(I)V
.end method

.method public static native setCamera(Ljava/lang/Object;I)V
.end method

.method public static native setCameraId(I)I
.end method

.method public static native setCaptureSurfaceSize(II)I
.end method

.method public static native setDialerType(I)V
.end method

.method public static native setLocalSurface(Ljava/lang/Object;)V
.end method

.method public static native setPreviewDisplayOrientation(III)V
.end method

.method public static native setRecordFileFD(Ljava/lang/Object;JJ)V
.end method

.method public static native setRecordMaxFileSize(J)V
.end method

.method public static native setRemoteSurface(Ljava/lang/Object;)V
.end method

.method public static native setUplinkImageFileFD(Ljava/lang/Object;JJ)V
.end method

.method public static native setup(Ljava/lang/Object;)V
.end method

.method public static native startDownlink()V
.end method

.method public static native startRecord()V
.end method

.method public static native startUplink()V
.end method

.method public static native stopDownlink()V
.end method

.method public static native stopRecord()V
.end method

.method public static native stopUplink()V
.end method


# virtual methods
.method public getCameraResolution()I
    .locals 3

    .line 210
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraResolution():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    return v0
.end method

.method public getIsInScreenShare()Z
    .locals 3

    .line 362
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsInScreenShare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsInScreenShare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsInScreenShare:Z

    return v0
.end method

.method public initCameraResolution()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mImsConfigImpl:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getVideoQualityFromPreference()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    .line 206
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraResolution():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public releaseVideocallEngine()V
    .locals 4

    .line 230
    const-string v0, "release() E"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    .line 232
    iput v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mStrmRtpBreakTimes:I

    .line 234
    :try_start_0
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->release()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    sget-object v1, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseVideocallEngine fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 239
    :goto_0
    const-string v0, "release() X"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setImsCamera(Landroid/hardware/Camera;)V
    .locals 1

    .line 286
    if-nez p1, :cond_0

    .line 287
    const-string p1, "setImsRemoteSurface() setCameraId as -1, local surface set to null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 289
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsCameraId(I)I

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mCameraResolution:I

    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsCamera(Landroid/hardware/Camera;I)V

    .line 293
    :goto_0
    return-void
.end method

.method public setImsCamera(Landroid/hardware/Camera;I)V
    .locals 2

    .line 277
    :try_start_0
    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setCamera(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 278
    :catch_0
    move-exception p1

    .line 279
    sget-object p2, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsCamera() fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 282
    :goto_0
    return-void
.end method

.method public setImsCameraId(I)I
    .locals 3

    .line 267
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setCameraId(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 268
    :catch_0
    move-exception p1

    .line 269
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraId() fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 271
    const/4 p1, -0x1

    return p1
.end method

.method public setImsLocalSurface(Landroid/view/Surface;)V
    .locals 3

    .line 243
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsLocalSurface->sf is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mLocalSurface:Landroid/view/Surface;

    .line 246
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setLocalSurface(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_1

    .line 247
    :catch_0
    move-exception p1

    .line 248
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalSurface() fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 251
    :goto_1
    return-void
.end method

.method public setImsPauseImage(Landroid/net/Uri;)V
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsPauseImage() uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 297
    nop

    .line 298
    nop

    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 301
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_0
    const/4 v0, 0x0

    const-string p1, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsPauseImage() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uriString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 305
    :try_start_0
    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->hideLocalImage(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_1

    .line 306
    :catch_0
    move-exception p1

    .line 307
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsPauseImage() fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 310
    :goto_1
    return-void
.end method

.method public setImsRemoteSurface(Landroid/view/Surface;)V
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsRemoteSurface() Surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mRemoteSurface:Landroid/view/Surface;

    .line 257
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setRemoteSurface(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 258
    :catch_0
    move-exception p1

    .line 259
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsRemoteSurface fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 262
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRemoteSurface() mVideoState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mVideoState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setIsInScreenShare(Ljava/lang/Boolean;)V
    .locals 3

    .line 357
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsInScreenShare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mIsInScreenShare:Z

    .line 359
    return-void
.end method

.method public setOnCallEventListener(Lcom/spreadtrum/ims/vt/VideoCallEngine$OnCallEventListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine;->mOnCallEventListener:Lcom/spreadtrum/ims/vt/VideoCallEngine$OnCallEventListener;

    .line 393
    return-void
.end method
