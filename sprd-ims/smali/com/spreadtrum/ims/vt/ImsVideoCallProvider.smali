.class public Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;,
        Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;
    }
.end annotation


# static fields
.field private static final EVENT_MO_CALL_REQUEST_MEDIA_CHANGED_TIMEOUT:J = 0x7530L

.field private static final EVENT_MT_CALL_REQUEST_MEDIA_CHANGED_TIMEOUT:J = 0x2710L

.field private static final EVENT_SRVCC_STATE_CHANGED:I = 0x64

.field private static final EVENT_VOLTE_CALL_REMOTE_REQUEST_MEDIA_CHANGED_TIMEOUT:I = 0x1f4

.field private static final EVENT_VOLTE_CALL_REQUEST_MEDIA_CHANGED_TIMEOUT:I = 0x65

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field private mImsCallSessionImplListner:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;

.field public mIsOrigionVideo:Z

.field private mIsSupportTxRxVideo:Z

.field private mIsVideo:Z

.field public mIsVoiceRingTone:Z

.field private mLocalRequestProfile:Landroid/telecom/VideoProfile;

.field private mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteRequestProfile:Landroid/telecom/VideoProfile;

.field private mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

.field private mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

.field private mVolteMediaDegradeDialog:Landroid/app/AlertDialog;

.field private mVolteMediaUpdateDialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCallSessionImplListner(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImplListner:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVTHandler(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVTManagerProxy(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRemoteRequestProfile(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSrvccStateChanged(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->handleSrvccStateChanged([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 47
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    .line 57
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsOrigionVideo:Z

    .line 158
    invoke-static {}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    .line 159
    iget-object v1, v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mHandler:Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

    iput-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v1, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;-><init>(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    .line 161
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 162
    iput-object p3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 164
    new-instance p2, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;

    invoke-direct {p2, p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;-><init>(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImplListner:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;

    .line 165
    iget-object p3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p3, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    .line 166
    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 170
    const-string p1, "ImsVideoCallProvider mIsOrigionVideo = true"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 171
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsOrigionVideo:Z

    .line 172
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 175
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 176
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 177
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 178
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    const/16 p3, 0x64

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportTxRxVideo:Z

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsSupportTxRxVideo:Z

    .line 185
    return-void
.end method

.method private getVideoCallMediaDirection(I)I
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoCallMediaDirection..state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 427
    const/16 p1, 0x3e8

    return p1

    .line 425
    :pswitch_0
    const/16 p1, 0x3e9

    return p1

    .line 421
    :pswitch_1
    const/16 p1, 0x3eb

    return p1

    .line 423
    :pswitch_2
    const/16 p1, 0x3ea

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSrvccStateChanged([I)V
    .locals 2

    .line 134
    const-string v0, "handleSrvccStateChanged"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    aget p1, p1, v0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSrvccStateChanged..state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mIsVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 150
    return-void

    .line 140
    :pswitch_0
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 144
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showCapabilityChangeToast()V

    .line 153
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 492
    sget-object v0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method private shouldAcceptOfResponseProfile(Landroid/telecom/VideoProfile;)Z
    .locals 7

    .line 431
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v2, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 436
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    .line 437
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v2

    .line 438
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v3

    .line 439
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v4

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remoteVideoState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reponseVideoState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " videoState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 445
    if-eq p1, v0, :cond_3

    .line 446
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v3, :cond_1

    if-nez v4, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_0

    .line 452
    :cond_2
    return v1

    .line 450
    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 432
    :cond_4
    :goto_1
    const-string p1, "mRemoteRequestProfile or responseProfile is null, return false"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 433
    return v1
.end method


# virtual methods
.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 0

    .line 713
    invoke-super {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 714
    return-void
.end method

.method public getMeidaChangeTimeout()J
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v0

    .line 766
    new-instance v1, Landroid/telephony/UniCarrierConfigManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {v1, v0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v1, v0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 769
    const-string v1, "mt_request_media_change_timer"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 768
    return-wide v0

    .line 772
    :cond_0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public handleClearLocalCallProfile(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClearLocalCallProfile mImsCallSessionImpl.getLocalRequestProfile():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallSessionImpl.mImsCallProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 629
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 630
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestAccept()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestReject()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 631
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isRequestUpgrade()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isRequestDowngradeToVoice()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 632
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne p1, v0, :cond_2

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 634
    const-string p1, "handleClearLocalCallProfile->should set mLocalRequestProfile null"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 635
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    .line 637
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    if-eqz p1, :cond_2

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 638
    const-string p1, "handleClearLocalCallProfile remove EVENT_VOLTE_CALL_REQUEST_MEDIA_CHANGED_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->removeMessages(I)V

    .line 644
    :cond_2
    return-void
.end method

.method public handleVolteCallMediaChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 8

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVolteCallMediaChange->session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 648
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 649
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isRequestUpgrade()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 652
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsDriverCall;->getVideoCallMediaDirection()I

    move-result v1

    .line 653
    iget-object v2, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 654
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 659
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 660
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCurrentUserId()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 661
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getIsInLocalConference()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-boolean v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mInLocalCallForward:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 663
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->hasRingingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->rejectMediaChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    const-string p1, "handleVolteCallMediaChange-is cmcc project, has one active adn one hold call reject MediaChange"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 671
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 672
    return-void

    .line 676
    :cond_3
    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsSupportTxRxVideo:Z

    const/16 v3, 0x3e9

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eq v1, v3, :cond_5

    .line 678
    :cond_4
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isGmsVersion()Z

    move-result v2

    const/16 v5, 0x3eb

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-ne v1, v5, :cond_6

    .line 680
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 681
    return-void

    .line 685
    :cond_6
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 686
    const/16 v2, 0x1f4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 687
    iget-object v6, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    iget-object v6, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {v6, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->removeMessages(I)V

    .line 689
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->getMeidaChangeTimeout()J

    move-result-wide v6

    invoke-virtual {v2, v1, v6, v7}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 691
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 692
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v2, "android.phone:WAKEUP"

    invoke-virtual {v1, v6, v7, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 696
    :cond_7
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-ne v1, v3, :cond_8

    .line 697
    new-instance p1, Landroid/telecom/VideoProfile;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 698
    :cond_8
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_9

    .line 699
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 700
    :cond_9
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-ne v1, v5, :cond_a

    .line 701
    new-instance p1, Landroid/telecom/VideoProfile;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    .line 707
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 708
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 709
    return-void

    .line 703
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVolteCallMediaChange->callIdMess.arg1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 704
    return-void

    .line 665
    :cond_b
    :goto_1
    const-string p1, "handleVolteCallMediaChange reject"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 667
    return-void

    .line 649
    :cond_c
    :goto_2
    return-void
.end method

.method public isGmsVersion()Z
    .locals 2

    .line 784
    const-string v0, "ro.com.google.gmsversion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
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

.method public isVideoCall(I)Z
    .locals 1

    .line 735
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .line 478
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 0

    .line 469
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8

    .line 278
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 286
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyRequest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 288
    nop

    .line 289
    nop

    .line 290
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    nop

    .line 292
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    iput v4, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 295
    move v3, v7

    move v5, v3

    goto/16 :goto_0

    .line 296
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 298
    iput v6, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 299
    const/4 v3, 0x2

    move v5, v7

    goto/16 :goto_0

    .line 300
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 302
    iput v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 303
    const/4 v3, 0x3

    move v5, v7

    goto/16 :goto_0

    .line 300
    :cond_4
    move v3, v5

    move v5, v7

    goto/16 :goto_0

    .line 305
    :cond_5
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 306
    nop

    .line 307
    iput v4, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 308
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 310
    move v3, v4

    move v5, v7

    goto/16 :goto_0

    .line 311
    :cond_6
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 313
    move v3, v6

    move v5, v7

    goto/16 :goto_0

    .line 311
    :cond_7
    move v3, v5

    move v5, v7

    goto/16 :goto_0

    .line 315
    :cond_8
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 316
    nop

    .line 317
    iput v7, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 318
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 320
    goto :goto_0

    .line 321
    :cond_9
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 323
    const/4 v3, 0x7

    goto :goto_0

    .line 324
    :cond_a
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 326
    const/16 v3, 0x8

    goto :goto_0

    .line 324
    :cond_b
    move v3, v5

    goto :goto_0

    .line 328
    :cond_c
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 329
    nop

    .line 330
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 332
    iput v6, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 333
    const/16 v3, 0x9

    goto :goto_0

    .line 334
    :cond_d
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 336
    iput v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 337
    move v3, v2

    goto :goto_0

    .line 334
    :cond_e
    move v3, v5

    goto :goto_0

    .line 341
    :cond_f
    move v3, v5

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaRequest = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 342
    if-eqz v3, :cond_13

    .line 344
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsSupportTxRxVideo:Z

    const/4 v1, 0x0

    if-nez p1, :cond_12

    if-eq v3, v2, :cond_10

    if-ne v3, v6, :cond_12

    .line 348
    :cond_10
    if-ne v3, v6, :cond_11

    .line 349
    invoke-virtual {p0, v7, v1, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 352
    :cond_11
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    .line 353
    xor-int/2addr v0, v7

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p2

    .line 352
    xor-int/2addr p2, v7

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateVideoTxRxState(ZZ)V

    .line 354
    return-void

    .line 357
    :cond_12
    iput-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    .line 358
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget p2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 359
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    .line 360
    if-eqz v5, :cond_13

    .line 362
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 364
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_13

    .line 365
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 366
    const/16 p2, 0x65

    iput p2, p1, Landroid/os/Message;->what:I

    .line 367
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->removeMessages(I)V

    .line 369
    iget-object p2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    :cond_13
    return-void

    .line 283
    :cond_14
    :goto_1
    const-string p1, "onSendSessionModifyRequest mImsCallSessionImpl or mImsCallProfile is null, return"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 284
    return-void

    .line 279
    :cond_15
    :goto_2
    const-string p1, "onSendSessionModifyRequest fromProfile or toProfile is null or no change, return"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyResponse->responseProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsDriverCall;->getVideoCallMediaDirection()I

    move-result v1

    .line 391
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 392
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 395
    :cond_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->shouldAcceptOfResponseProfile(Landroid/telecom/VideoProfile;)Z

    move-result v1

    .line 396
    const/4 v2, 0x0

    .line 397
    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    .line 399
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->getVideoCallMediaDirection(I)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 404
    const/4 p1, 0x0

    if-eqz v1, :cond_3

    .line 405
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsSupportTxRxVideo:Z

    if-nez v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 407
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    .line 408
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    .line 406
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateVideoTxRxState(ZZ)V

    goto :goto_0

    .line 411
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 414
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mRemoteRequestProfile:Landroid/telecom/VideoProfile;

    .line 415
    return-void

    .line 383
    :cond_5
    :goto_1
    const-string p1, "mImsCallSessionImpl or mImsDriverCall is null, return"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 489
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method

.method public onSetZoom(F)V
    .locals 0

    .line 267
    return-void
.end method

.method public onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTHandler:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 195
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isForegroundCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v0, :cond_4

    .line 196
    :cond_1
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    .line 198
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 200
    const/4 v2, 0x2

    .line 202
    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v3, v0, :cond_2

    .line 204
    const/4 v2, 0x1

    .line 207
    :cond_2
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 209
    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v2, v3, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 213
    :cond_3
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 217
    :cond_4
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    .line 218
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public onVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    .line 189
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0

    .line 719
    invoke-super {p0, p1, p2, p3}, Landroid/telephony/ims/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 720
    return-void
.end method

.method public rejectMediaChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Z
    .locals 1

    .line 777
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMultiVideoCallDisabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isHasBackgroundCallAndActiveCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 778
    const/4 p1, 0x1

    return p1

    .line 780
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showCapabilityChangeToast()V
    .locals 4

    .line 741
    nop

    .line 742
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 743
    new-instance v1, Landroid/telephony/UniCarrierConfigManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 744
    invoke-virtual {v1, v0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 745
    invoke-virtual {v1, v0}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "show_ims_capability_change_toast"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsVideoCallProvider_mShowCapabilityChangeToast :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_0
    move v0, v3

    .line 751
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_2

    .line 752
    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->cancelVideoDowngradeToastForCVRS:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 756
    :cond_2
    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    const/16 v1, 0xc8

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->notifyImsEventListener(II)V

    .line 760
    :cond_3
    return-void
.end method

.method public showRequestStateToast()V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestAccept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    const/16 v3, 0xca

    invoke-virtual {v0, v2, v3}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->notifyImsEventListener(II)V

    .line 726
    iput-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestReject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mVTManagerProxy:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    const/16 v3, 0xcb

    invoke-virtual {v0, v2, v3}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->notifyImsEventListener(II)V

    .line 730
    iput-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    .line 732
    :cond_1
    :goto_0
    return-void
.end method

.method public updateNegotiatedCallProfile(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 6

    .line 521
    if-nez p1, :cond_0

    .line 522
    const-string p1, "updateNegotiatedCallProfile, session is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 527
    if-nez v0, :cond_1

    .line 528
    const-string p1, "updateNegotiatedCallProfile, imsCallProfile is null!"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 529
    return-void

    .line 532
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNegotiatedCallProfilee->mCallType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsVoiceRingTone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 535
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v4, :cond_4

    .line 538
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 540
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getState()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsOrigionVideo:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-nez v1, :cond_2

    .line 541
    const-string v1, "updateNegotiatedCallProfilee->set mIsVoiceRingTone = true"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 542
    iput-boolean v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v1, :cond_3

    .line 546
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestReject()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 547
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 548
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iget v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v1, v2, :cond_3

    .line 549
    const/4 v1, 0x5

    .line 550
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v2

    .line 551
    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNegotiatedCallProfilee, mLocalRequestProfile = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", responseProfile = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v2, v4}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 558
    :cond_3
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v1, :cond_b

    .line 559
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showRequestStateToast()V

    goto :goto_1

    .line 563
    :cond_4
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v1, :cond_b

    .line 565
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVideo:Z

    if-eqz v1, :cond_a

    .line 566
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsDriverCall;->isRequestUpgrade()Z

    move-result v1

    .line 567
    iget-object v4, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v4, :cond_5

    .line 568
    invoke-virtual {v4}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 569
    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->isReuestReject()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 570
    :goto_0
    iget-object v4, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v4, v5, :cond_8

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    if-nez v2, :cond_8

    .line 573
    :cond_7
    const-string p1, "updateNegotiatedCallProfile, it is upgrading and return, not degrade to audio"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 574
    return-void

    .line 576
    :cond_8
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getConferenceDriverCallUpdated()Z

    move-result v1

    if-nez v1, :cond_9

    .line 578
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showCapabilityChangeToast()V

    .line 580
    :cond_9
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 583
    :cond_a
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mLocalRequestProfile:Landroid/telecom/VideoProfile;

    if-eqz v1, :cond_b

    .line 584
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showRequestStateToast()V

    .line 590
    :cond_b
    :goto_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    if-eqz v1, :cond_c

    .line 592
    const-string v1, "updateNegotiatedCallProfilee->set mIsVoiceRingTone false"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 593
    iput-boolean v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mIsVoiceRingTone:Z

    .line 596
    :cond_c
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getConferenceDriverCallUpdated()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 597
    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateConferenceDriverCallChange(Z)V

    .line 600
    :cond_d
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq p1, v1, :cond_e

    .line 601
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 603
    :cond_e
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq p1, v0, :cond_f

    .line 605
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 608
    :cond_f
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-eq p1, v0, :cond_10

    .line 610
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 613
    :cond_10
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eq p1, v0, :cond_11

    .line 615
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 618
    :cond_11
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-eq p1, v0, :cond_12

    .line 620
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mNegotiatedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 623
    :cond_12
    return-void
.end method

.method public updateVideoQuality(Landroid/telecom/VideoProfile;)V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoQuality->responseProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 457
    if-eqz p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoQuality.updateVideoQuality-> quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 461
    :cond_0
    return-void
.end method
