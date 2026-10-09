.class public Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;,
        Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG_EMPTY_CONF_PARTICIPANT0:Ljava/lang/String; = "00000000"

.field private static final DBG_EMPTY_CONF_PARTICIPANT1:Ljava/lang/String; = "11111111"

.field private static final DBG_EMPTY_CONF_PARTICIPANT2:Ljava/lang/String; = "22222222"

.field private static final MERGE_TIMEOUT:I = 0x3a98

.field private static final MSG_ACCEPT:I = 0x4

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_HOLD_FAILED:I = 0x17

.field private static final MSG_INVITE_PARTICIPANT:I = 0xb

.field private static final MSG_MERGE:I = 0x9

.field private static final MSG_MERGE_FAILED:I = 0x15

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_RESUME:I = 0x8

.field private static final MSG_SEND_DTMF_FINISHED:I = 0x16

.field private static final MSG_SET_MUTE:I = 0x1

.field private static final MSG_START:I = 0x2

.field private static final MSG_START_CONF:I = 0x3

.field private static final MSG_START_FAIL:I = 0x14

.field private static final MSG_TERMINATE:I = 0x6

.field private static final MSG_UPDATE:I = 0xa

.field private static final PROP_KEY_COULD_UPDATE:Ljava/lang/String; = "persist.vowifi.could.update"

.field private static final PROP_KEY_FORCE_SOS_CALL:Ljava/lang/String; = "persist.vowifi.force.soscall"

.field private static final PROP_KEY_SUPPORT_START_CONFERENCE:Ljava/lang/String; = "persist.vowifi.start.conf"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioStart:Z

.field private mCallId:I

.field private mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

.field private mConfCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

.field private mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

.field private mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

.field private mHostCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mICall:Lcom/android/ims/internal/IVoWifiCall;

.field private mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

.field private mImsRetryDowngrade:Z

.field private mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

.field private mInvitedParticipants:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/spreadtrum/ims/vowifi/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlive:Z

.field private mIsConfHost:Z

.field private mIsEmergency:Z

.field private mIsFocus:Z

.field private mIsForwarded:Z

.field private mIsIncomingNotify:Z

.field private mIsRequiredImsRetry:Z

.field private mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMaxParticipantsCount:I

.field private mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

.field private mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/vowifi/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryCallee:Ljava/lang/String;

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRequiredCNI:Z

.field private mRetryDelParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/vowifi/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryCallee:Ljava/lang/String;

.field private mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

.field private mWaitForInvite:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/spreadtrum/ims/vowifi/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallManager(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmICall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/android/ims/internal/IVoWifiCall;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/android/ims/internal/IImsServiceEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmICall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/android/ims/internal/IVoWifiCall;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    return-void
.end method

.method static bridge synthetic -$$Nest$macceptInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->acceptInternal(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMergeActionFailed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mholdInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->holdInternal(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minviteParticipantsInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->inviteParticipantsInternal(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mergeInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrejectInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->rejectInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresumeInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->resumeInternal(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMuteInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setMuteInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConferenceInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startConferenceInternal([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startInternal(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mterminateInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateInternal(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;IIZ)V
    .locals 5

    .line 276
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mMaxParticipantsCount:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRequiredCNI:Z

    .line 87
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 88
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsFocus:Z

    .line 89
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsConfHost:Z

    .line 90
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mAudioStart:Z

    .line 91
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    .line 92
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsForwarded:Z

    .line 93
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsIncomingNotify:Z

    .line 94
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsRequiredImsRetry:Z

    .line 95
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsRetryDowngrade:Z

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mPrimaryCallee:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mSecondaryCallee:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    .line 107
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 109
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 110
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 112
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 113
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mConfCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 114
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHostCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    .line 117
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    .line 118
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRetryDelParticipants:Ljava/util/HashMap;

    .line 122
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 124
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 145
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    .line 258
    new-instance v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;-><init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    .line 277
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 278
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallCursor()Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    .line 279
    new-instance p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-direct {p1, v0, p6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;-><init>(II)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    .line 280
    iput-boolean p8, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRequiredCNI:Z

    .line 281
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 282
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 283
    iput-object p4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 284
    iput-object p5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 285
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    .line 286
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    if-nez p1, :cond_0

    .line 288
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2, p0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 290
    :cond_0
    new-instance p1, Landroid/telecom/VideoProfile;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 291
    move v0, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-direct {p1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 292
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->updateVideoProfile(Landroid/telecom/VideoProfile;)V

    .line 295
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CallRadioTech"

    invoke-virtual {p1, p3, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->registerCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z

    .line 300
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CallSession"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 302
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 303
    new-instance p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    .line 304
    return-void
.end method

.method private acceptInternal(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez p2, :cond_0

    goto :goto_2

    .line 610
    :cond_0
    nop

    .line 611
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 612
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->confAcceptInvite(I)I

    move-result p1

    goto :goto_0

    .line 614
    :cond_1
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result p1

    .line 615
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2, v0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessAnswer(ILjava/lang/String;ZZ)I

    move-result p1

    .line 618
    :goto_0
    if-ne p1, v0, :cond_2

    .line 619
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 620
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startAudio()V

    .line 623
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    goto :goto_1

    .line 626
    :cond_2
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native accept the incoming call failed, res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string p1, "Native accept the incoming call failed."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 629
    :goto_1
    return-void

    .line 605
    :cond_3
    :goto_2
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "Try to accept an incoming call, but the media profile is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string p1, "Can not accept the call as the media profile is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private buildCookieString(IILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2578
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2579
    const-string v1, "clir_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2580
    const-string p1, "cni_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2581
    const-string p1, "cni_info"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2582
    const-string p1, "cni_age"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2583
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2584
    :catch_0
    move-exception p1

    .line 2585
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to build the cookie json as catch the ex: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const-string p1, ""

    return-object p1
.end method

.method private buildKickParticipants(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2866
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 2870
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2871
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2872
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2873
    if-nez v3, :cond_1

    goto :goto_0

    .line 2875
    :cond_1
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getSecondaryCallee()Ljava/lang/String;

    move-result-object v4

    .line 2876
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2877
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getEndPointForConfState()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2881
    :cond_2
    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRetryDelParticipants:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2885
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    :cond_3
    goto :goto_0

    .line 2889
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v2, :cond_5

    return-object v0

    .line 2891
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 2892
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2893
    return-object p1

    .line 2867
    :cond_6
    :goto_2
    return-object v0
.end method

.method private findNeedRemoveUser([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2849
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 2851
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getParticipantsCount()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2855
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2856
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 2857
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2858
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2856
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2862
    :cond_2
    return-object v0

    .line 2852
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCallCursor()Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;
    .locals 7

    .line 2429
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2430
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2431
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2433
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 2434
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2435
    return-object v1

    .line 2438
    :cond_1
    new-instance v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    invoke-direct {v1, v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method private getConfParticipantsState()Landroid/telephony/ims/ImsConferenceState;
    .locals 6

    .line 2827
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 2828
    iget-object v1, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2830
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2831
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2832
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2833
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2834
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2835
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v4

    .line 2836
    const-string v5, "connected"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2837
    const-string v5, "on-hold"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2839
    :cond_0
    nop

    .line 2840
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getUserForConfState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getConfStateBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 2839
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    :cond_1
    goto :goto_0

    .line 2844
    :cond_2
    iget-object v2, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2845
    return-object v0
.end method

.method private getDtmfType(C)I
    .locals 0

    .line 2770
    nop

    .line 2771
    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2818
    :sswitch_0
    const/16 p1, 0xf

    .line 2819
    goto :goto_0

    .line 2815
    :sswitch_1
    const/16 p1, 0xe

    .line 2816
    goto :goto_0

    .line 2812
    :sswitch_2
    const/16 p1, 0xd

    .line 2813
    goto :goto_0

    .line 2809
    :sswitch_3
    const/16 p1, 0xc

    .line 2810
    goto :goto_0

    .line 2800
    :sswitch_4
    const/16 p1, 0x9

    .line 2801
    goto :goto_0

    .line 2797
    :sswitch_5
    const/16 p1, 0x8

    .line 2798
    goto :goto_0

    .line 2794
    :sswitch_6
    const/4 p1, 0x7

    .line 2795
    goto :goto_0

    .line 2791
    :sswitch_7
    const/4 p1, 0x6

    .line 2792
    goto :goto_0

    .line 2788
    :sswitch_8
    const/4 p1, 0x5

    .line 2789
    goto :goto_0

    .line 2785
    :sswitch_9
    const/4 p1, 0x4

    .line 2786
    goto :goto_0

    .line 2782
    :sswitch_a
    const/4 p1, 0x3

    .line 2783
    goto :goto_0

    .line 2779
    :sswitch_b
    const/4 p1, 0x2

    .line 2780
    goto :goto_0

    .line 2776
    :sswitch_c
    const/4 p1, 0x1

    .line 2777
    goto :goto_0

    .line 2773
    :sswitch_d
    const/4 p1, 0x0

    .line 2774
    goto :goto_0

    .line 2803
    :sswitch_e
    const/16 p1, 0xa

    .line 2804
    goto :goto_0

    .line 2806
    :sswitch_f
    const/16 p1, 0xb

    .line 2807
    nop

    .line 2823
    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_f
        0x2a -> :sswitch_e
        0x30 -> :sswitch_d
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x36 -> :sswitch_7
        0x37 -> :sswitch_6
        0x38 -> :sswitch_5
        0x39 -> :sswitch_4
        0x41 -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method private getSRVCCCallType()I
    .locals 1

    .line 2897
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    if-eqz v0, :cond_0

    .line 2898
    const/4 v0, 0x1

    return v0

    .line 2901
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleHoldActionFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 778
    return-void
.end method

.method private handleInviteParticipantsFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 1008
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1011
    :cond_0
    return-void
.end method

.method private handleMergeActionFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 903
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 908
    :cond_0
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    if-eqz p1, :cond_1

    .line 909
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 913
    :cond_2
    :goto_0
    return-void
.end method

.method private handleRemoveParticipantsFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v1, 0xc8

    const/16 v2, 0xd4

    invoke-static {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1097
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 1098
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1101
    :cond_0
    return-void
.end method

.method private handleResumeActionFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 820
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 823
    :cond_0
    return-void
.end method

.method private handleStartActionFailed(IILjava/lang/String;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 667
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 668
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 669
    return-void
.end method

.method private handleStartActionFailed(Ljava/lang/String;)V
    .locals 2

    .line 654
    const/16 v0, 0x153

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(IILjava/lang/String;)V

    .line 658
    return-void
.end method

.method private handleUpdateActionFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 948
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 951
    :cond_0
    return-void
.end method

.method private holdInternal(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    goto :goto_2

    .line 755
    :cond_0
    nop

    .line 756
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->confHold(I)I

    move-result v0

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->sessHold(I)I

    move-result v0

    .line 762
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 764
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 767
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    goto :goto_1

    .line 770
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native hold the call failed, res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleHoldActionFailed(Ljava/lang/String;)V

    .line 772
    :goto_1
    return-void

    .line 751
    :cond_3
    :goto_2
    const-string p1, "Hold the call failed, the media profile is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleHoldActionFailed(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private inviteCallToConference(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2615
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to invite this call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to the conference call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2616
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2615
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v1, :cond_0

    .line 2620
    const-string p1, "Failed ot invite the call to conference as mICall is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    return-void

    .line 2624
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2626
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-direct {v0, v3, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;-><init>(I[Ljava/lang/Object;)V

    .line 2628
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setNextAction(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)V

    .line 2629
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2630
    return-void

    .line 2634
    :cond_1
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2635
    new-instance v4, Lcom/spreadtrum/ims/vowifi/Participant;

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2636
    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 2637
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v3, [I

    aput v1, v7, v2

    .line 2636
    const/4 v1, 0x0

    invoke-interface {v5, v6, v1, v7}, Lcom/android/ims/internal/IVoWifiCall;->confAddMembers(I[Ljava/lang/String;[I)I

    move-result v5

    .line 2638
    if-ne v5, v3, :cond_4

    .line 2640
    const-string v0, "dialing-out"

    invoke-virtual {v4, v0}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 2641
    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setInInviteParticipant(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2644
    if-eqz p3, :cond_2

    .line 2647
    invoke-interface {p3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 2650
    :cond_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p3

    .line 2651
    if-eqz p3, :cond_3

    .line 2653
    invoke-interface {p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V

    .line 2656
    :cond_3
    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setConfCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2659
    invoke-virtual {p2, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAliveState(Z)V

    .line 2660
    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2661
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 2664
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 2665
    goto :goto_0

    .line 2667
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to invite this call "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to conference."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 p2, 0xc8

    const/16 p3, 0xd3

    invoke-static {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 2672
    :goto_0
    return-void
.end method

.method private inviteParticipantsInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 984
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 989
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/Participant;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 990
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "pending"

    invoke-direct {v0, v2, v4, v5}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 991
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/ims/internal/IVoWifiCall;->confAddMembers(I[Ljava/lang/String;[I)I

    move-result v0

    .line 992
    if-ne v0, v1, :cond_1

    .line 993
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 994
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 995
    new-instance v0, Lcom/spreadtrum/ims/vowifi/Participant;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invite participant["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] failed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleInviteParticipantsFailed(Ljava/lang/String;)V

    .line 1003
    :cond_2
    return-void

    .line 985
    :cond_3
    :goto_1
    const-string p1, "The participant to invite is null or empty."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleInviteParticipantsFailed(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method private isDebugEmptyConf([Ljava/lang/String;)Z
    .locals 5

    .line 2906
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2910
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "00000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "11111111"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    aget-object v1, p1, v4

    .line 2911
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2912
    return v4

    .line 2913
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object p1, p1, v4

    .line 2914
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2915
    return v4

    .line 2917
    :cond_2
    return v0

    .line 2907
    :cond_3
    :goto_0
    return v0
.end method

.method private isDebugEmptyVideoConf([Ljava/lang/String;)Z
    .locals 5

    .line 2922
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2926
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "11111111"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "22222222"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    aget-object v1, p1, v4

    .line 2927
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2928
    return v4

    .line 2929
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object p1, p1, v4

    .line 2930
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2931
    return v4

    .line 2933
    :cond_2
    return v0

    .line 2923
    :cond_3
    :goto_0
    return v0
.end method

.method private mergeInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 838
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v0

    .line 842
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of active & hold call is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Can not merge!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    .line 845
    return-void

    .line 850
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 851
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 852
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMaxParticipantsCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt v3, v4, :cond_3

    .line 856
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v2, 0xc8

    const/16 v3, 0xd7

    invoke-static {v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not invite as it already contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMaxParticipantsCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    .line 862
    return-void

    .line 866
    :cond_3
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 870
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;-><init>(I[Ljava/lang/Object;)V

    .line 871
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setNextAction(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)V

    .line 874
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 875
    return-void

    .line 879
    :cond_4
    if-eqz v0, :cond_7

    .line 880
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 882
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-direct {p0, v0, p0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->inviteCallToConference(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    goto :goto_2

    .line 884
    :cond_5
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCouldInviteCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 885
    if-nez v1, :cond_6

    .line 887
    const-string v0, "There isn\'t could invite call."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 889
    :cond_6
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->inviteCallToConference(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 891
    :goto_1
    goto :goto_2

    .line 894
    :cond_7
    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startConfCall(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 895
    const-string v0, "Start conference call failed for merge."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    .line 898
    :cond_8
    :goto_2
    return-void
.end method

.method private rejectInternal(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    nop

    .line 684
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->confTerm(II)I

    move-result v0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessTerm(II)I

    move-result v0

    .line 690
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 692
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    .line 695
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 696
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 699
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {p1, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    goto :goto_1

    .line 702
    :cond_2
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native reject the incoming call failed, res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_1
    return-void
.end method

.method private resumeInternal(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    goto :goto_2

    .line 798
    :cond_0
    nop

    .line 799
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->confResume(I)I

    move-result v0

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->sessResume(I)I

    move-result v0

    .line 805
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 807
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 810
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    goto :goto_1

    .line 813
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native resume the call failed, res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleResumeActionFailed(Ljava/lang/String;)V

    .line 815
    :goto_1
    return-void

    .line 794
    :cond_3
    :goto_2
    const-string p1, "Resume the call failed, the media profile is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleResumeActionFailed(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method private varargs sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2

    .line 2442
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2443
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2444
    new-instance v1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    invoke-direct {v1, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2445
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2446
    return-void
.end method

.method private setMuteInternal(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    nop

    .line 441
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->confSetMute(IZ)I

    move-result p1

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessSetMicMute(IZ)I

    move-result p1

    .line 447
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 449
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native set mute failed, res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    return-void
.end method

.method private startCall(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCall(Ljava/lang/String;ZZ)V

    .line 2479
    return-void
.end method

.method private startCall(Ljava/lang/String;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2484
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start the call with the callee: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->isCallFunEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2488
    const-string p1, "Start the call failed. Call function disabled."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 2492
    return-void

    .line 2495
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isUssdCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2497
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startUssdCall(Ljava/lang/String;)V

    .line 2498
    return-void

    .line 2514
    :cond_1
    nop

    .line 2515
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    if-eqz v1, :cond_4

    .line 2516
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v1

    .line 2517
    nop

    .line 2518
    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/Utilities$EMUtils;->isValidCategory(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2519
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2522
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "AdditionalCallInfo"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2525
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2526
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/spreadtrum/ims/vowifi/Utilities$EMUtils;->getUrnWithPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2528
    :cond_3
    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/Utilities$EMUtils;->getEmergencyCallUrn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2530
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start an emergency call with urn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    goto :goto_2

    .line 2515
    :cond_4
    move-object v3, p1

    .line 2533
    :goto_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oir"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p1

    .line 2535
    const/4 v9, -0x1

    const-string v4, ""

    invoke-direct {p0, p1, v9, v4, v9}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->buildCookieString(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2536
    if-eqz p3, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result p1

    move v6, p1

    .line 2537
    :goto_3
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    invoke-interface/range {v2 .. v8}, Lcom/android/ims/internal/IVoWifiCall;->sessCall(Ljava/lang/String;Ljava/lang/String;ZZZZ)I

    move-result p1

    .line 2538
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start a call, and get the call id: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    if-ne p1, v9, :cond_6

    .line 2540
    const-string p1, "Native start the call failed."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    goto :goto_4

    .line 2542
    :cond_6
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    .line 2543
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 2547
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x2

    invoke-virtual {p3, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2549
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2550
    if-nez p2, :cond_7

    .line 2552
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startAudio()V

    .line 2556
    :cond_7
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    .line 2558
    :goto_4
    return-void
.end method

.method private startConfCall(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2675
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to create the conference call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->isConfAlignWithVideo()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2678
    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v3

    .line 2679
    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    .line 2680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create the conference call as current call is video: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and align with video: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    if-eqz v3, :cond_2

    .line 2686
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 2687
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getActivatedAudioCallSessions()Ljava/util/ArrayList;

    move-result-object v1

    .line 2688
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2689
    nop

    .line 2690
    const-string v1, "As there is audio call, and need align with audio. Create the conference call as audio conference."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2693
    :cond_1
    goto :goto_1

    .line 2696
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 2697
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getActivatedVideoCallSessions()Ljava/util/ArrayList;

    move-result-object v1

    .line 2698
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2699
    nop

    .line 2700
    const-string v1, "As there is video call, and need align with video. Create the conference call as video conference."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 2707
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-interface {v1, v3}, Lcom/android/ims/internal/IVoWifiCall;->confInit(Z)I

    move-result v1

    .line 2708
    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    .line 2709
    const-string p1, "Init the conference failed."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    return v4

    .line 2713
    :cond_4
    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/ims/internal/IVoWifiCall;->confSetup(ILjava/lang/String;)I

    move-result v5

    .line 2714
    if-nez v5, :cond_5

    .line 2715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setup the conference call with the conference id: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    return v4

    .line 2718
    :cond_5
    const-string v0, "android.telephony.ims.extra.CONFERENCE"

    if-eqz p1, :cond_8

    .line 2721
    const/4 p1, 0x2

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_2

    .line 2722
    :cond_6
    move v3, p1

    .line 2723
    :goto_2
    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v5, v5, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-direct {v4, v5, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2725
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object v5

    const-string v7, "oi"

    invoke-virtual {v4, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const-string v5, "cna"

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    const-string v5, "cnap"

    invoke-virtual {v4, v5, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2730
    const-string v5, "oir"

    invoke-virtual {v4, v5, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2732
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 2733
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallRatType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2732
    const-string v5, "CallRadioTech"

    invoke-virtual {v4, v5, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v4, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2736
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 2737
    invoke-virtual {p1, v4, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->createMOCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 2738
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iput v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2739
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iput v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2740
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setCallId(I)V

    .line 2741
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2742
    invoke-virtual {p1, p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setHostCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2743
    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2744
    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAsConfHost(Z)V

    .line 2745
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startAudio()V

    .line 2747
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_7

    .line 2748
    invoke-interface {v0, p1, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2750
    :cond_7
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v0, 0x15

    const-wide/16 v3, 0x3a98

    invoke-virtual {p1, v0, v3, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2751
    goto :goto_3

    .line 2752
    :cond_8
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    .line 2753
    iput-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 2754
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2755
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAsConfHost(Z)V

    .line 2756
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2757
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startAudio()V

    .line 2759
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_9

    .line 2760
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2765
    :cond_9
    :goto_3
    return v2
.end method

.method private startConferenceInternal([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    const-string v0, "persist.vowifi.start.conf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const-string p1, "Do not support this action now."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 p2, 0xc8

    const/16 v0, 0xd6

    invoke-static {p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 543
    return-void

    .line 546
    :cond_0
    if-nez p1, :cond_1

    .line 547
    const-string p1, "Start the conference failed, the participants is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_2

    goto :goto_2

    .line 556
    :cond_2
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 557
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 558
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallRatType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v2, "CallRadioTech"

    invoke-virtual {p2, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isDebugEmptyConf([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 562
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "Only create a empty conference call without any participant."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 563
    :cond_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isDebugEmptyVideoConf([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 565
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "Only create a empty video conference call without any participant."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x4

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 570
    :cond_4
    array-length p2, p1

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_5

    aget-object v2, p1, v0

    .line 571
    new-instance v3, Lcom/spreadtrum/ims/vowifi/Participant;

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startConfCall(Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 577
    const-string p1, "Native failed to start the conference call."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 579
    :cond_6
    return-void

    .line 552
    :cond_7
    :goto_2
    const-string p1, "Start the conference failed. Check the parts or profile."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private startEmergencyCall(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to start the emergency call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    .line 2454
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sosAsNormalCall()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2455
    :goto_0
    nop

    .line 2456
    if-eqz v2, :cond_1

    .line 2458
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCall(Ljava/lang/String;)V

    goto :goto_2

    .line 2461
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sosNeedRemoveOldS2b()Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 2462
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get the need remove old s2b as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    if-nez p1, :cond_3

    .line 2464
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isSupportSOSSingleProcess(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2467
    goto :goto_2

    .line 2471
    :cond_3
    move v1, p1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start the emergency call. sosAsNormal = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", needRemoveOldS2b = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    invoke-static {p0, v2, v1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->get(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ZZ)Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 2474
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->enterECBMWithCallSession(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V

    .line 2475
    return-void
.end method

.method private startInternal(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setCallee(Ljava/lang/String;)Landroid/telephony/ims/ImsCallProfile;

    .line 479
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 480
    const-string v0, "oi"

    invoke-virtual {p2, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cna"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cnap"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 484
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 485
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallRatType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    const-string v4, "CallRadioTech"

    invoke-virtual {v0, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v0

    .line 489
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result p2

    .line 490
    if-ne v0, v3, :cond_1

    if-eq p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "AdditionalCallInfo"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    const-string v1, "persist.vowifi.force.soscall"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 496
    if-nez p2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 499
    :cond_2
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCall(Ljava/lang/String;)V

    goto :goto_2

    .line 497
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startEmergencyCall(Ljava/lang/String;)V

    .line 501
    :goto_2
    return-void

    .line 471
    :cond_4
    :goto_3
    const-string p1, "Start the call failed. Check the callee or profile."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private startUssdCall(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2596
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start as the ussd call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/ims/internal/IVoWifiCall;->sessCall(Ljava/lang/String;Ljava/lang/String;ZZZZ)I

    move-result p1

    .line 2599
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2600
    const-string p1, "Native start the ussd call failed."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2602
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    .line 2603
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2604
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 2607
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    .line 2609
    :goto_0
    return-void
.end method

.method private terminateInternal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 720
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateChildCalls(I)V

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 729
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 730
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 735
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 736
    return-void
.end method

.method private updateInternal(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    goto :goto_1

    .line 936
    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessUpdate(II)I

    move-result p1

    .line 937
    if-nez p1, :cond_1

    .line 938
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Native update result is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleUpdateActionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object p2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 943
    :goto_0
    return-void

    .line 932
    :cond_2
    :goto_1
    const-string p1, "This session\'s old call type is same as the new."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleUpdateActionFailed(Ljava/lang/String;)V

    .line 933
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4

    .line 590
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept an incoming call with call type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const-string p1, "accept"

    invoke-direct {p0, p1, v0, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 600
    return-void

    .line 594
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to accept an incoming call, but the call type is invalid, ignore this call type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method public addAsInvited(Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 1

    .line 1710
    if-eqz p1, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1713
    :cond_0
    return-void
.end method

.method public addAsWaitForInvite(Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 1

    .line 1691
    if-eqz p1, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1694
    :cond_0
    return-void
.end method

.method public addParticipant(Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 3

    .line 1716
    if-nez p1, :cond_0

    .line 1717
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add this participant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return-void

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getUserForConfState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    return-void
.end method

.method public autoAnswer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2345
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2346
    return-void
.end method

.method public close()V
    .locals 3

    .line 326
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call session("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") will be closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->isInSRVCC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "In SRVCC process, this call session will be closed after SRVCC success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 335
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->close()V

    .line 338
    :cond_1
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    .line 651
    return-void
.end method

.method public couldUpgradeOrDowngrade()Z
    .locals 3

    .line 1507
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current audio dir is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const-string v0, "persist.vowifi.could.update"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1513
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0

    .line 514
    return-void
.end method

.method public dialEmergencyCall()V
    .locals 4

    .line 2236
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to dial this emergency call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mPrimaryCallee:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    goto :goto_0

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dial the emergency call as catch the RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :goto_0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extends this call to conference call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", do not support."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unregisterCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z

    .line 309
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 310
    return-void
.end method

.method public findParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;
    .locals 4

    .line 1269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1274
    if-eqz v0, :cond_1

    .line 1276
    return-object v0

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1280
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1283
    invoke-virtual {v2, p1, p2}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1284
    return-object v2

    .line 1286
    :cond_2
    goto :goto_0

    .line 1290
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    if-eqz v0, :cond_4

    .line 1291
    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1292
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    return-object p1

    .line 1296
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1297
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1298
    invoke-virtual {v2, p1, p2}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1299
    return-object v2

    .line 1301
    :cond_5
    goto :goto_1

    .line 1304
    :cond_6
    return-object v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    .line 345
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the call id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 355
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the call profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallStateTracker()Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mPrimaryCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mConfCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0
.end method

.method public getDefaultVideoLevel()I
    .locals 5

    .line 1859
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to get the default video level for call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1863
    const-string v1, "Can not start the camera as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    return v2

    .line 1868
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiCall;->getDefaultVideoLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not get the camera capabilities as catch the RemoteException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v2
.end method

.method public getHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1758
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1760
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1761
    return-object v0

    .line 1764
    :cond_0
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1765
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1766
    const/4 v1, 0x2

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1768
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1769
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1772
    :cond_1
    return-object v0
.end method

.method public getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHostCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0
.end method

.method public getInInviteParticipant()Lcom/spreadtrum/ims/vowifi/Participant;
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    return-object v0
.end method

.method public getJitter()I
    .locals 5

    .line 2202
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the jitter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2204
    const-string v1, "Can not get the jitter as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return v2

    .line 2209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v0

    .line 2210
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v4

    invoke-interface {v1, v3, v4, v0}, Lcom/android/ims/internal/IVoWifiCall;->getMediaJitter(IZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when get the media jitter, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    return v2
.end method

.method public getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 365
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the local call profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMaxParticipantsCount()I
    .locals 1

    .line 1588
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mMaxParticipantsCount:I

    return v0
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public getNeedInviteCall()Lcom/spreadtrum/ims/vowifi/Participant;
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/Participant;

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1698
    return-object v0
.end method

.method public getPacketLose()I
    .locals 5

    .line 2185
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the packet lose."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2187
    const-string v1, "Can not get the packet lose as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v2

    .line 2192
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v0

    .line 2193
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v4

    invoke-interface {v1, v3, v4, v0}, Lcom/android/ims/internal/IVoWifiCall;->getMediaLostRatio(IZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when get the media lose, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return v2
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Participant;

    return-object p1
.end method

.method public getParticipantsCount()I
    .locals 4

    .line 1565
    nop

    .line 1566
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1567
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1568
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1569
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v2

    .line 1570
    const-string v3, "disconnected"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1571
    const-string v3, "disconnecting"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1573
    goto :goto_0

    .line 1576
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1577
    goto :goto_0

    .line 1579
    :cond_2
    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 385
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the property by this name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 375
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the remote call profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1776
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1778
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1779
    return-object v0

    .line 1782
    :cond_0
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1783
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1784
    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1786
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1787
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1790
    :cond_1
    return-object v0
.end method

.method public getRetryDelParticipants()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/vowifi/Participant;",
            ">;"
        }
    .end annotation

    .line 2425
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRetryDelParticipants:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRtt()I
    .locals 5

    .line 2219
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the rtt."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2221
    const-string v1, "Can not get the rtt as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    return v2

    .line 2226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v0

    .line 2227
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v4

    invoke-interface {v1, v3, v4, v0}, Lcom/android/ims/internal/IVoWifiCall;->getMediaRtt(IZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when get the media rtt, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return v2
.end method

.method public getSecondaryCallee()Ljava/lang/String;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mSecondaryCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getCallState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    .line 1204
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the video call provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getWaitForInviteCount()I
    .locals 4

    .line 1592
    nop

    .line 1593
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1594
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v2

    .line 1595
    const-string v3, "disconnected"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1596
    const-string v3, "disconnecting"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    goto :goto_0

    .line 1601
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1602
    goto :goto_0

    .line 1604
    :cond_2
    return v1
.end method

.method public handleNextAction(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    if-nez v0, :cond_0

    .line 2354
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "There isn\'t next action, do nothing."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return-void

    .line 2358
    :cond_0
    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->-$$Nest$fget_flag(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2370
    :pswitch_0
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    .line 2371
    if-eqz p1, :cond_1

    .line 2372
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->merge()V

    goto :goto_0

    .line 2375
    :cond_1
    const-string p1, "Merge failed as pre-action failed or call term."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2361
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->-$$Nest$fget_params(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 2362
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->-$$Nest$fget_params(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 2363
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->-$$Nest$fget_params(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    .line 2364
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 2366
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    .line 2367
    invoke-direct {p0, p1, v0, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->inviteCallToConference(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 2368
    nop

    .line 2379
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hold a call with the media profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "hold"

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method public incomingNotified()V
    .locals 1

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsIncomingNotify:Z

    .line 2297
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 3

    .line 974
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invite participants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getStringFromArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "invitePart"

    const/16 v1, 0xb

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 978
    return-void
.end method

.method public isActivated()Z
    .locals 2

    .line 1503
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1495
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    return v0
.end method

.method public isAudioStart()Z
    .locals 1

    .line 1526
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mAudioStart:Z

    return v0
.end method

.method public isCallForwarded()Z
    .locals 1

    .line 1552
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsForwarded:Z

    return v0
.end method

.method public isConfInvitedWaitNotify()Z
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->isConfInvitedWaitNotify()Z

    move-result v0

    return v0
.end method

.method public isConferenceCall()Z
    .locals 3

    .line 1556
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsConfHost:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1557
    :cond_0
    const-string v2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 1556
    :goto_1
    return v1
.end method

.method public isEmergencyCall()Z
    .locals 1

    .line 1530
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 1544
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsFocus:Z

    return v0
.end method

.method public isHeld()Z
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInCall()Z
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 406
    return v1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    .line 410
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isMatched(Ljava/lang/String;)Z
    .locals 1

    .line 2416
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mPrimaryCallee:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isSameCallee(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mSecondaryCallee:Ljava/lang/String;

    .line 2417
    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isSameCallee(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2416
    :goto_1
    return p1
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1214
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    const-string v2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1214
    :goto_0
    return v1
.end method

.method public declared-synchronized isRequiredImsRetry()Z
    .locals 1

    monitor-enter p0

    .line 2300
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsRequiredImsRetry:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUserAcknowledge()Z
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isMOCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsIncomingNotify:Z

    if-eqz v0, :cond_0

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

.method public isUssdCall()Z
    .locals 2

    .line 2411
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "dialstring"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 2412
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kickOffMembers(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    .line 1081
    const-string p1, "The call interface is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleRemoveParticipantsFailed(Ljava/lang/String;)V

    .line 1082
    return-void

    .line 1085
    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/ims/internal/IVoWifiCall;->confKickMembers(I[Ljava/lang/String;)I

    move-result v0

    .line 1086
    if-nez v0, :cond_1

    .line 1087
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kick off the member["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] native failed."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    return-void
.end method

.method public localRenderRotate(Ljava/lang/String;II)I
    .locals 3

    .line 2074
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to rotate local render for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2077
    const-string p1, "Can not rotate local render as call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return v2

    .line 2082
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IVoWifiCall;->localRenderRotate(ZII)I

    move-result p1

    .line 2083
    if-nez p1, :cond_1

    .line 2084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not rotate local render for the call: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2086
    :cond_1
    return p1

    .line 2087
    :catch_0
    move-exception p1

    .line 2088
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to rotate local render as catch RemoteException e: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    return v2
.end method

.method public merge()V
    .locals 3

    .line 831
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Merge the active & hold call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "merge"

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 833
    return-void
.end method

.method public notifyConferenceStateUpdate()V
    .locals 3

    .line 1645
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsConfHost:Z

    if-nez v0, :cond_0

    .line 1646
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not the conference host, needn\'t notify."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return-void

    .line 1651
    :cond_0
    const/4 v0, 0x0

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    if-eqz v1, :cond_2

    .line 1653
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v1

    .line 1654
    const-string v2, "pending"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dialing-out"

    .line 1655
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1657
    :cond_1
    const/4 v0, 0x1

    .line 1661
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getWaitForInviteCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1663
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfParticipantsState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :cond_3
    goto :goto_0

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to notify the conference state update."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :goto_0
    return-void
.end method

.method public onMergeFailed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->removeMessages(I)V

    .line 1611
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleMergeActionFailed(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method public onParticipantDisconnected(Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 3

    .line 1615
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participant update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    if-nez p1, :cond_0

    return-void

    .line 1618
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnected"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1620
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    .line 1621
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getUserForConfState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1624
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1625
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the participant from the wait for invite list, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getParticipantsCount()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getWaitForInviteCount()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 1634
    const-string p1, "There isn\'t any participant, terminate this conference call."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const/16 p1, 0x1f5

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 1638
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v0, 0xc8

    const/16 v1, 0xd5

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1642
    :cond_2
    return-void
.end method

.method public prepareSRVCCSyncInfo(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1725
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare the SRVCC sync info for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    if-nez p1, :cond_0

    return-void

    .line 1729
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1731
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1732
    nop

    .line 1733
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1735
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1736
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isHeld()Z

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/spreadtrum/ims/vowifi/Participant;->prepareSRVCCSyncInfo(Ljava/util/ArrayList;IZ)V

    .line 1737
    add-int/lit8 v2, v2, 0x1

    .line 1738
    goto :goto_0

    .line 1739
    :cond_1
    goto :goto_1

    .line 1741
    :cond_2
    new-instance v1, Lcom/android/ims/internal/ImsSrvccCallInfo;

    invoke-direct {v1}, Lcom/android/ims/internal/ImsSrvccCallInfo;-><init>()V

    .line 1743
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallId:I

    .line 1744
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getSRVCCCallDirection()I

    move-result v3

    iput v3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mDir:I

    .line 1745
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getSRVCCCallState()I

    move-result v3

    iput v3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallState:I

    .line 1746
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getSRVCCCallHoldState()I

    move-result v3

    iput v3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mHoldState:I

    .line 1747
    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mMptyState:I

    .line 1748
    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mMptyOrder:I

    .line 1749
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getSRVCCCallType()I

    move-result v2

    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallType:I

    .line 1750
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mNumType:I

    .line 1751
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mNumber:Ljava/lang/String;

    .line 1752
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to prepare the call\'s info: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :goto_1
    return-void
.end method

.method public processNoResponseAction()V
    .locals 4

    .line 2314
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Process no response action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v0, :cond_0

    return-void

    .line 2319
    :cond_0
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x95

    const/4 v2, 0x0

    const-string v3, "No response when SRVCC"

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2324
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getSRVCCNoResponseAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2336
    :pswitch_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2333
    :pswitch_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2334
    goto :goto_0

    .line 2330
    :pswitch_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2331
    goto :goto_0

    .line 2326
    :pswitch_3
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    nop

    .line 2341
    :goto_0
    goto :goto_1

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process the no response action as catch the exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reject(I)V
    .locals 3

    .line 678
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject an incoming call as the reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "reject"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 680
    return-void
.end method

.method public releaseCall()I
    .locals 5

    .line 1794
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to release the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1797
    const-string v1, "Can not release the call as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    return v2

    .line 1802
    :cond_0
    nop

    .line 1803
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1804
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3}, Lcom/android/ims/internal/IVoWifiCall;->confRelease(I)I

    move-result v1

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3}, Lcom/android/ims/internal/IVoWifiCall;->sessRelease(I)I

    move-result v1

    .line 1809
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 1810
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v3

    .line 1811
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    if-eqz v3, :cond_2

    .line 1812
    const-string v3, "Need to stop all the video as SRVCC success."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 1816
    :cond_2
    goto :goto_1

    .line 1817
    :cond_3
    const-string v3, "Native failed to release the call."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1822
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    return v1

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not release as catch the RemoteException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return v2
.end method

.method public remoteRenderRotate(I)I
    .locals 5

    .line 2094
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to rotate remote render for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2097
    const-string p1, "Can not rotate remote render as call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return v2

    .line 2102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, v4, p1}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderRotate(ZII)I

    move-result p1

    .line 2103
    if-nez p1, :cond_1

    .line 2104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not rotate remote render for the call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    :cond_1
    return p1

    .line 2107
    :catch_0
    move-exception p1

    .line 2108
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rotate remote render as catch RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return v2
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the participants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getStringFromArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    if-eqz p1, :cond_9

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    monitor-enter v1

    .line 1030
    :try_start_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->findNeedRemoveUser([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1031
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto/16 :goto_2

    .line 1036
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getParticipantsCount()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v3, v4, :cond_2

    .line 1037
    const-string p1, "All the user will be removed from the conference call."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v0, 0xd5

    invoke-static {p1, v5, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1045
    const/16 p1, 0x1f5

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 1046
    monitor-exit v1

    return-void

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_3

    .line 1050
    const-string p1, "The call interface is null."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleRemoveParticipantsFailed(Ljava/lang/String;)V

    .line 1051
    monitor-exit v1

    return-void

    .line 1054
    :cond_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->buildKickParticipants(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    .line 1055
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v3, v4, v0}, Lcom/android/ims/internal/IVoWifiCall;->confKickMembers(I[Ljava/lang/String;)I

    move-result v0

    .line 1056
    if-ne v0, v2, :cond_6

    .line 1058
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1059
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1060
    if-eqz v0, :cond_4

    .line 1061
    const-string v2, "disconnecting"

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 1064
    :cond_4
    goto :goto_0

    .line 1067
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_7

    .line 1068
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfParticipantsState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_1

    .line 1070
    :cond_6
    if-nez v0, :cond_7

    .line 1071
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v0, 0xd4

    invoke-static {p1, v5, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1074
    const-string p1, "Native failed to remove the participants."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleRemoveParticipantsFailed(Ljava/lang/String;)V

    .line 1076
    :cond_7
    :goto_1
    monitor-exit v1

    .line 1077
    return-void

    .line 1032
    :cond_8
    :goto_2
    const-string p1, "There isn\'t any participant need remove."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    monitor-exit v1

    return-void

    .line 1076
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1025
    :cond_9
    :goto_3
    const-string p1, "The participants need to removed is null or empty."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleRemoveParticipantsFailed(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public declared-synchronized requiredImsRetry(Z)V
    .locals 1

    monitor-enter p0

    .line 2304
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsRequiredImsRetry:Z

    .line 2305
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsRetryDowngrade:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    monitor-exit p0

    return-void

    .line 2303
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continues a call with the media profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "resume"

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 790
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getDtmfType(C)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->confDtmf(II)I

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getDtmfType(C)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessDtmf(II)I

    .line 1124
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1125
    const/16 v0, 0x16

    iput v0, p1, Landroid/os/Message;->what:I

    .line 1126
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1127
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1128
    return-void
.end method

.method public sendModifyRequest(I)I
    .locals 4

    .line 2115
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to send the modify request, new video type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->couldUpgradeOrDowngrade()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2119
    const-string p1, "Can not upgrade or downgrade, needn\'t send the request."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    return v2

    .line 2123
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v1, :cond_1

    .line 2124
    const-string p1, "Can not send the modify request as call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    return v2

    .line 2129
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sendSessionModifyRequest(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2130
    :catch_0
    move-exception p1

    .line 2131
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send the modify request as catch RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    return v2
.end method

.method public sendModifyResponse(I)I
    .locals 4

    .line 2138
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send session modify response as video type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2142
    const-string p1, "Can not send session modify response as call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return v2

    .line 2147
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v0, p1}, Lcom/android/ims/internal/IVoWifiCall;->sendSessionModifyResponse(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2148
    :catch_0
    move-exception p1

    .line 2149
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send the modify response. e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return v2
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1221
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 0

    .line 1179
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    .line 1187
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 0

    .line 1195
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send an USSD message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_0

    .line 1169
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sendUSSDMessage(ILjava/lang/String;)I

    .line 1171
    :cond_0
    return-void
.end method

.method public setCallId(I)V
    .locals 0

    .line 1396
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    .line 1397
    return-void
.end method

.method public setCallee(Ljava/lang/String;)Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 1258
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mPrimaryCallee:Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oi"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p1
.end method

.method public setConfCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 1

    .line 1675
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mConfCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 1676
    if-eqz p1, :cond_0

    .line 1678
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->removeMessages(I)V

    .line 1680
    :cond_0
    return-void
.end method

.method public setHostCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mHostCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 1688
    return-void
.end method

.method public setInInviteParticipant(Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1703
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 423
    return-void
.end method

.method public setMaxParticipantsCount(I)V
    .locals 2

    .line 1583
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mMaxParticipantsCount:I

    .line 1584
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxParticipantsCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mMaxParticipantsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    .line 433
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutes("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") the mic for the active call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setMute"

    invoke-direct {p0, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method public setNextAction(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mNextAction:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;

    .line 2350
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)I
    .locals 7

    .line 2156
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set the pause image to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2160
    const-string p1, "Can not set the pause image as call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return v2

    .line 2165
    :cond_0
    nop

    .line 2166
    :try_start_0
    const-string v1, ""

    .line 2167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2168
    const/4 v1, 0x1

    .line 2169
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    goto :goto_0

    .line 2172
    :cond_1
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v4, v5, v1, v3}, Lcom/android/ims/internal/IVoWifiCall;->confSetLocalImageForTrans(ILjava/lang/String;Z)I

    move-result v1

    .line 2173
    if-nez v1, :cond_3

    .line 2174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not set the pause image to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " as "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2175
    if-eqz v3, :cond_2

    const-string v3, "start."

    goto :goto_1

    :cond_2
    const-string v3, "stop."

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2174
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    :cond_3
    return v1

    .line 2178
    :catch_0
    move-exception p1

    .line 2179
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sset the pause image as catch RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return v2
.end method

.method public setSecondaryCallee(Ljava/lang/String;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mSecondaryCallee:Ljava/lang/String;

    .line 1380
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 465
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiates an ims call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "start"

    invoke-direct {p0, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public startAudio()V
    .locals 1

    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mAudioStart:Z

    .line 1522
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->startAudioStream()V

    .line 1523
    return-void
.end method

.method public startCamera(Ljava/lang/String;)I
    .locals 6

    .line 1901
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start the camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1904
    const-string p1, "Can not start the camera as the camera id is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return v2

    .line 1908
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v1, :cond_1

    .line 1909
    const-string p1, "Can not start the camera as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return v2

    .line 1914
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/ims/internal/IVoWifiCall;->cameraAttach(ZIZ)I

    move-result v1

    .line 1915
    if-nez v1, :cond_2

    .line 1916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not start the camera as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :cond_2
    return v1

    .line 1919
    :catch_0
    move-exception p1

    .line 1920
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start the camera as catch the RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    return v2
.end method

.method public startCapture(Ljava/lang/String;III)I
    .locals 3

    .line 2032
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start capture for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2037
    const-string p1, "Can not start capture as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return v2

    .line 2042
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/ims/internal/IVoWifiCall;->captureStart(ZIII)I

    move-result p1

    .line 2043
    if-nez p1, :cond_1

    .line 2044
    const-string p2, "Can not start capture."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    :cond_1
    return p1

    .line 2047
    :catch_0
    move-exception p1

    .line 2048
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can not start capture as catch the RemoteException e: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    return v2
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 528
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiates an ims conference call with participants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getStringFromArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "startConference"

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getDtmfType(C)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->confDtmf(II)I

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getDtmfType(C)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessDtmf(II)I

    .line 1148
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized startImsRetry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 504
    :try_start_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start ims retry, need downgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsRetryDowngrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsRequiredImsRetry:Z

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsRetryDowngrade:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCall(Ljava/lang/String;ZZ)V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsRequiredImsRetry:Z

    .line 508
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mImsRetryDowngrade:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startLocalRender(Landroid/view/Surface;Ljava/lang/String;)I
    .locals 3

    .line 1946
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start the local render for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1949
    const-string p1, "Can not start the local render as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return v2

    .line 1954
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->localRenderAdd(Landroid/view/Surface;Z)I

    move-result p1

    .line 1955
    if-nez p1, :cond_1

    .line 1956
    const-string p2, "Can not start the local render."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :cond_1
    return p1

    .line 1959
    :catch_0
    move-exception p1

    .line 1960
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not start the local render as catch the RemoteException e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return v2
.end method

.method public startPrecondition()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start precondition process for call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v0, :cond_0

    .line 1881
    const-string v0, "Precondition failed"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 1882
    return-void

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(I)I

    move-result v0

    .line 1886
    nop

    .line 1887
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1888
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v2, v0}, Lcom/android/ims/internal/IVoWifiCall;->confUpdate(II)I

    move-result v0

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v2, v0}, Lcom/android/ims/internal/IVoWifiCall;->sessUpdate(II)I

    move-result v0

    .line 1893
    :goto_0
    if-nez v0, :cond_2

    .line 1894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native preconditon result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleStartActionFailed(Ljava/lang/String;)V

    .line 1896
    :cond_2
    return-void
.end method

.method public startRemoteRender(Landroid/view/Surface;)I
    .locals 5

    .line 1986
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start the remote render for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "As this call"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not alive, needn\'t start the remote render."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    return v2

    .line 1993
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v1, :cond_1

    .line 1994
    const-string p1, "Can not start the remote render as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    return v2

    .line 1999
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, p1, v3, v4}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderAdd(Landroid/view/Surface;ZI)I

    move-result p1

    .line 2000
    if-nez p1, :cond_2

    .line 2001
    const-string v1, "Can not start the remote render."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    :cond_2
    return p1

    .line 2004
    :catch_0
    move-exception p1

    .line 2005
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start the remote render as catch the RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return v2
.end method

.method public stopCamera()I
    .locals 5

    .line 1926
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to stop the camera for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1929
    const-string v1, "Can not stop the camera as the call interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return v2

    .line 1934
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, v4}, Lcom/android/ims/internal/IVoWifiCall;->cameraDetach(ZI)I

    move-result v1

    .line 1935
    if-nez v1, :cond_1

    .line 1936
    const-string v3, "Can not stop the camera."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :cond_1
    return v1

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not stop the camera as catch the RemoteException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return v2
.end method

.method public stopCapture(Ljava/lang/String;)I
    .locals 4

    .line 2054
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to stop capture for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2057
    const-string p1, "Can not stop capture as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return v2

    .line 2062
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiCall;->captureStop(Z)I

    move-result p1

    .line 2063
    if-nez p1, :cond_1

    .line 2064
    const-string v1, "Can not stop capture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    :cond_1
    return p1

    .line 2067
    :catch_0
    move-exception p1

    .line 2068
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not stop capture as catch the RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return v2
.end method

.method public stopDtmf()V
    .locals 2

    .line 1155
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopDtmf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method public stopLocalRender(Landroid/view/Surface;Ljava/lang/String;)I
    .locals 3

    .line 1966
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to stop the local render for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1969
    const-string p1, "Can not stop the local render as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return v2

    .line 1974
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IVoWifiCall;->localRenderRemove(Landroid/view/Surface;Z)I

    move-result p1

    .line 1975
    if-nez p1, :cond_1

    .line 1976
    const-string p2, "Can not stop the local render."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    :cond_1
    return p1

    .line 1979
    :catch_0
    move-exception p1

    .line 1980
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not stop the local render as catch the RemoteException e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return v2
.end method

.method public stopRemoteRender(Landroid/view/Surface;Z)I
    .locals 4

    .line 2011
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to stop the remote render for the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2014
    const-string p1, "Can not stop the remote render as the call interface is null."

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return v1

    .line 2019
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v2

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v0, p1, v2, v3}, Lcom/android/ims/internal/IVoWifiCall;->remoteRenderRemove(Landroid/view/Surface;ZI)I

    move-result p1

    .line 2020
    if-nez p1, :cond_1

    .line 2021
    const-string v0, "Can not stop the remote render."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    :cond_1
    return p1

    .line 2024
    :catch_0
    move-exception p1

    .line 2025
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not stop the remote render as catch the RemoteException e: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return v1
.end method

.method public supportVideoCall()Z
    .locals 1

    .line 2421
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCursor:Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->supportVideoCall()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public terminate(I)V
    .locals 3

    .line 711
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terminate a call as the reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "terminate"

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method public terminateCall(I)V
    .locals 4

    .line 2247
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terminate this call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    nop

    .line 2252
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    if-lez v1, :cond_1

    .line 2253
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2254
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->confTerm(II)I

    move-result v1

    goto :goto_0

    .line 2256
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessTerm(II)I

    move-result v1

    goto :goto_0

    .line 2259
    :cond_1
    const-string v1, "Call interface is null, can not send the terminate action."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2262
    :goto_0
    if-ne v1, v2, :cond_5

    .line 2263
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 2271
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mVideoCallProvider:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_2

    .line 2272
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 2275
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    .line 2276
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2277
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_4

    .line 2278
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2279
    const/4 p1, 0x2

    if-ge v0, p1, :cond_3

    .line 2282
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 2284
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2287
    :cond_4
    :goto_1
    goto :goto_2

    .line 2288
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native terminate a call failed, res = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    :goto_2
    goto :goto_3

    .line 2290
    :catch_0
    move-exception p1

    .line 2291
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not terminate the call as catch the RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :goto_3
    return-void
.end method

.method public terminateChildCalls(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2382
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 2384
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2385
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2386
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 2389
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminate the in invite call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 2391
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInInviteParticipant:Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 2393
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2396
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mWaitForInvite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2397
    if-eqz v3, :cond_1

    .line 2398
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2399
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 2400
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 2401
    sget-object v4, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Terminate the wait for invite call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 2403
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 2405
    :cond_1
    goto :goto_0

    .line 2408
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", isAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 0

    .line 641
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3

    .line 923
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the current call\'s type to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "update"

    const/16 p2, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendInternalMessage(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 926
    return-void
.end method

.method public updateAliveState(Z)V
    .locals 0

    .line 1488
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsAlive:Z

    .line 1491
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateDataRouterState()V

    .line 1492
    return-void
.end method

.method public updateAsCallIsForwarded()V
    .locals 1

    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsForwarded:Z

    .line 1549
    return-void
.end method

.method public updateAsConfHost(Z)V
    .locals 0

    .line 1517
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsConfHost:Z

    .line 1518
    return-void
.end method

.method public updateAsIsFocus()V
    .locals 2

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsFocus:Z

    .line 1538
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    const/4 v1, 0x4

    goto :goto_0

    .line 1540
    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1541
    return-void
.end method

.method public updateCallManager(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)V
    .locals 2

    .line 1224
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mIsEmergency:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V

    .line 1235
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeECBMRequest()V

    .line 1237
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->unregisterCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 1241
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICallChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->registerCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z

    .line 1242
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->enterECBMWithCallSession(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V

    .line 1245
    invoke-virtual {p1, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->addCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1246
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 1247
    return-void

    .line 1227
    :cond_1
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "The call already initiated, can not change the call interface."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-void
.end method

.method public updateCallRatType(I)V
    .locals 3

    .line 1445
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    return-void

    .line 1447
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CallRadioTech"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1451
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1452
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfParticipantsState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :cond_1
    goto :goto_0

    .line 1455
    :catch_0
    move-exception p1

    .line 1456
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update the call\'s rat type as catch the RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :goto_0
    return-void
.end method

.method public updateCallType(I)V
    .locals 3

    .line 1408
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1413
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput p1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1414
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateDataRouterState()V

    .line 1416
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :cond_1
    goto :goto_0

    .line 1419
    :catch_0
    move-exception p1

    .line 1420
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update the call type as catch the RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_0
    return-void

    .line 1409
    :cond_2
    :goto_1
    return-void
.end method

.method public updateDataRouterState()V
    .locals 4

    .line 1425
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t alive, needn\'t update data router state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void

    .line 1431
    :cond_0
    const/4 v0, 0x0

    .line 1432
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallRatType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1433
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1434
    :cond_1
    const/4 v0, 0x1

    .line 1436
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallManager:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAttachSessionId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/ims/internal/IVoWifiCall;->updateDataRouterState(II)I

    .line 1437
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update the call state to data router. state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1438
    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CallStateForDataRouter;->getDRStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    goto :goto_1

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the data router state as catch the ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :goto_1
    return-void
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1389
    return-void
.end method

.method public updateParticipantEntity(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;
    .locals 8

    .line 1315
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update as secondary callee for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 1318
    const-string p1, "There isn\'t any participant finshed invite process."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-object v2

    .line 1324
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1325
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1326
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/Participant;->isNotifiedUserInfo()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mParticipants:Ljava/util/HashMap;

    .line 1327
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1329
    goto/16 :goto_3

    .line 1332
    :cond_1
    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    const-string v6, " exist the secondary callee."

    if-ne v1, v5, :cond_3

    .line 1334
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/Participant;->getSecondaryCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1335
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This participant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_2
    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/vowifi/Participant;->setSecondaryCallee(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/Participant;->notifiedUserInfo()V

    .line 1339
    return-object v4

    .line 1343
    :cond_3
    nop

    .line 1344
    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .line 1345
    :goto_1
    if-le v5, v1, :cond_5

    .line 1346
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mInvitedParticipants:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 1347
    invoke-virtual {v7}, Lcom/spreadtrum/ims/vowifi/Participant;->isNotifiedUserInfo()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1349
    nop

    .line 1350
    move v1, v3

    goto :goto_2

    .line 1353
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 1354
    goto :goto_1

    .line 1345
    :cond_5
    move v1, v0

    .line 1356
    :goto_2
    if-eqz v1, :cond_6

    .line 1359
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Find the notified participant after current "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    nop

    .line 1361
    move v1, v5

    goto :goto_3

    .line 1363
    :cond_6
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do not find the notified participant after current session."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/Participant;->getSecondaryCallee()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_7
    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/vowifi/Participant;->setSecondaryCallee(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/Participant;->notifiedUserInfo()V

    .line 1369
    return-object v4

    .line 1324
    :cond_8
    :goto_3
    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 1374
    :cond_9
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "Do not find the best matched participant."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-object v2
.end method

.method public updateRequestAction(I)V
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->updateRequestAction(I)V

    .line 1485
    :cond_0
    return-void
.end method

.method public updateSRVCCResult(I)I
    .locals 4

    .line 1832
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update the SRVCC result for the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1836
    const-string p1, "Can not update the SRVCC result as the call interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    return v2

    .line 1841
    :cond_0
    nop

    .line 1842
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1843
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->confUpdateSRVCCResult(II)I

    move-result p1

    goto :goto_0

    .line 1845
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallId:I

    invoke-interface {v1, v3, p1}, Lcom/android/ims/internal/IVoWifiCall;->sessUpdateSRVCCResult(II)I

    move-result p1

    .line 1847
    :goto_0
    if-nez p1, :cond_2

    .line 1848
    const-string v1, "Native failed to update the SRVCC result."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    :cond_2
    return p1

    .line 1851
    :catch_0
    move-exception p1

    .line 1852
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update the SRVCC result as catch the RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    return v2
.end method

.method public updateState(I)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallStateTracker:Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->updateCallState(I)V

    .line 1405
    :cond_0
    return-void
.end method

.method public updateVoiceQuality(I)V
    .locals 3

    .line 1461
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    return-void

    .line 1463
    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-ne p1, v0, :cond_1

    .line 1466
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same as current audio quality is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", needn\'t update."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return-void

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1471
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1472
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1475
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :cond_2
    goto :goto_0

    .line 1478
    :catch_0
    move-exception p1

    .line 1479
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update the call type as catch the RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    return-void
.end method
