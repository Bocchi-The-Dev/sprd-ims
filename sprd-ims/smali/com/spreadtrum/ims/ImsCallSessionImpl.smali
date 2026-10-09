.class public Lcom/spreadtrum/ims/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;,
        Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;,
        Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;,
        Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;,
        Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
    }
.end annotation


# static fields
.field private static final ACTION_COMPLETE_ACCEPT:I = 0x4

.field private static final ACTION_COMPLETE_ACCEPT_AS_AUDIO:I = 0xf

.field private static final ACTION_COMPLETE_ADD_PARTICIPANT:I = 0xa

.field private static final ACTION_COMPLETE_CONFERENCE:I = 0x9

.field private static final ACTION_COMPLETE_CONSULTATTVT_TRANSFER:I = 0x11

.field private static final ACTION_COMPLETE_DEFLECT:I = 0x7

.field private static final ACTION_COMPLETE_DIAL:I = 0x1

.field private static final ACTION_COMPLETE_DIAL_USSD:I = 0x13

.field private static final ACTION_COMPLETE_GET_CALL_FAIL_CAUSE:I = 0xd

.field private static final ACTION_COMPLETE_HANGUP:I = 0x5

.field private static final ACTION_COMPLETE_HOLD:I = 0x2

.field private static final ACTION_COMPLETE_HOLD_ACTIVE:I = 0x12

.field private static final ACTION_COMPLETE_MERGE:I = 0x8

.field private static final ACTION_COMPLETE_REJECT:I = 0x6

.field private static final ACTION_COMPLETE_REMOVE_PARTICIPANT:I = 0xc

.field private static final ACTION_COMPLETE_RESUME:I = 0x3

.field private static final ACTION_COMPLETE_RINGBACK_TONE:I = 0xb

.field private static final ACTION_COMPLETE_SEND_USSD:I = 0xe

.field private static final ACTION_COMPLETE_TRANSFER:I = 0x10

.field private static final CALL_ANSWERED_ELSEWHERE:I = 0x834

.field private static final CODE_LOCAL_CALL_IMS_HANDOVER_RETRY:I = 0x97

.field private static final EVENT_CALL_TEXT_INFOR:I = 0x3f1

.field private static final EVENT_EARLY_MEDIA_STATE_CHANGE:I = 0x3e9

.field private static final EVENT_HOLD_TONE:I = 0x3ef

.field private static final EVENT_ON_IMS_USSD:I = 0x3ee

.field private static final EVENT_RTT_CPS_CAPABILITY_CHANGE:I = 0x3ea

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0x3ec

.field private static final EVENT_SEND_DTMF_DONE:I = 0x3f0

.field private static final EVENT_SET_RTT_CHANNEL_DONE:I = 0x3eb

.field private static final EVENT_SIMMGR_SIM_STATE_CHANGE:I = 0x3ed

.field private static final EVENT_SSN:I = 0x65

.field private static final IMS_CONFERENCE_ID:Ljava/lang/String; = "id"

.field private static final INDIA_MCC:Ljava/lang/String; = "404"

.field private static final INDIA_MCC2:Ljava/lang/String; = "405"

.field public static final LOCAL_STATUS:Ljava/lang/String; = "local_status"

.field public static final NET_PLAY_TONES:I = 0x1

.field private static final OEM_CAUSE_2_REDIAL_WHEN_IMS_REGISTERING:I = 0xf002

.field private static final OEM_CAUSE_3_EMERGENCY_TEMP_FAILURE:I = 0xf003

.field private static final OEM_CAUSE_4_EMERGENCY_PERM_FAILURE:I = 0xf004

.field public static final REMOTE_STATUS:Ljava/lang/String; = "remote_status"

.field private static final RIL_RTT_CHANNEL_CLOSED:I = 0x0

.field private static final RIL_RTT_CHANNEL_OPEN:I = 0x1

.field private static final RINGBACKTONE_MCC:Ljava/lang/String; = "505"

.field private static final SIM_ABSENT_AT:I = 0x19

.field private static final SIM_ABSENT_PLUGOUT:I = 0x22

.field private static final SPECIAL_CALL_TYPE:I = 0x63

.field private static final TAG:Ljava/lang/String;

.field public static final VODEO_CALL_FDN_BLOCKED:I = 0xf1


# instance fields
.field private AMR:Ljava/lang/String;

.field private EVS_NB:Ljava/lang/String;

.field private EVS_SWB:Ljava/lang/String;

.field private EVS_WB:Ljava/lang/String;

.field public cancelVideoDowngradeToastForCVRS:Z

.field isVoiceCVRS:Z

.field private mAllowEmergencyVideoCalls:Z

.field private mAudioDirection:I

.field private mCallSessionImplListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallee:Ljava/lang/String;

.field private mCatchSuppServiceInfo:Landroid/os/AsyncResult;

.field public mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mConferenceDriverCallUpdated:Z

.field private mConferenceHost:Z

.field private mConferenceLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDesiredMute:Z

.field private mDisableHoldTone:Z

.field private mDisconnCause:I

.field private mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

.field public mHasSendTone:Z

.field private mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

.field public mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field public mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

.field public mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

.field private mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

.field public mInLocalCallForward:Z

.field private mIsConferenceActived:Z

.field private mIsConferenceHeld:Z

.field private mIsGmsVersion:Z

.field private mIsInLocalConference:Z

.field private mIsLocalHold:Z

.field private mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

.field public mIsNewConfSession:Z

.field private mIsPendingTerminate:Z

.field private mIsRemoteHold:Z

.field private mIsResumeRequestAction:Z

.field private mIsRxDisable:Z

.field mIsSupportCVA:Z

.field mIsSupportCVAT:Z

.field mIsSupportCVRS:Z

.field mIsSupportScreenInteraction:Z

.field public mIsSupportTxRxVideo:Z

.field private mIsTxDisable:Z

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mLocalConferenceUpdate:Z

.field private mLocalRequestProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMaxConferenceParticipants:I

.field public mMultiVideoCallDisabled:Z

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteRequestProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRttChannelDesired:Z

.field private mRttChannelEnabled:Z

.field private mRttSupport:Z

.field private mServiceId:I

.field private mShowConferenceSizeLimitToast:Z

.field private mState:I

.field private mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

.field private mVideoState:I

.field private supportShowPauName:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIImsCallSessionListener(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAddParticipantAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleAddParticipantAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCPSCapabilityChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleCPSCapabilityChange(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallFailCauseAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleCallFailCauseAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConferenceAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleConferenceAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConsultattvtTransferAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleConsultattvtTransferAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDialUssdAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleDialUssdAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleExceptionEvent(Landroid/os/AsyncResult;Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHoldAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleHoldAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsCallTextInforChanged(Lcom/spreadtrum/ims/ImsCallSessionImpl;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleImsCallTextInforChanged(IIILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsUssdEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleImsUssdEvent(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMergeAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleMergeAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRejectAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleRejectAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleResumeAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRttChannelProcessDone(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleRttChannelProcessDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRttMessageReceived(Lcom/spreadtrum/ims/ImsCallSessionImpl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleRttMessageReceived([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendDtmfToneEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleSendDtmfToneEvent(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendUssdAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleSendUssdAction(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimmgrSimEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleSimmgrSimEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleToneEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleToneEvent(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmessageToString(Lcom/spreadtrum/ims/ImsCallSessionImpl;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 7

    .line 234
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 7

    .line 229
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 7

    .line 244
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 5

    .line 248
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 123
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 124
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 126
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 128
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalRequestProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 129
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteRequestProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 135
    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 136
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDesiredMute:Z

    .line 140
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_UNKNOWN:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceLock:Ljava/lang/Object;

    .line 143
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    .line 144
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    .line 145
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceActived:Z

    .line 146
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    .line 147
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    .line 151
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    .line 157
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mInLocalCallForward:Z

    .line 168
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisableHoldTone:Z

    .line 173
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceDriverCallUpdated:Z

    .line 175
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsNewConfSession:Z

    .line 176
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mAllowEmergencyVideoCalls:Z

    .line 183
    const/4 v1, -0x1

    iput v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mAudioDirection:I

    .line 186
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    .line 187
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    .line 188
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 191
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    .line 193
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHasSendTone:Z

    .line 194
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsGmsVersion:Z

    .line 197
    const-string v4, "voicetype=1"

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->AMR:Ljava/lang/String;

    .line 198
    const-string v4, "voicetype=4"

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_NB:Ljava/lang/String;

    .line 199
    const-string v4, "voicetype=8"

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_WB:Ljava/lang/String;

    .line 200
    const-string v4, "voicetype=16"

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_SWB:Ljava/lang/String;

    .line 203
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mShowConferenceSizeLimitToast:Z

    .line 204
    const/4 v4, 0x5

    iput v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMaxConferenceParticipants:I

    .line 208
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->supportShowPauName:Z

    .line 217
    sget-object v4, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 249
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 250
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 251
    iput-object p4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 252
    iput-object p5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 253
    iput-object p6, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 254
    iget p2, p6, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    iput p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mServiceId:I

    .line 255
    new-instance p2, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 256
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHasSendTone:Z

    .line 258
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isGmsVersion()Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsGmsVersion:Z

    .line 261
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p2

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p4, "support_customized_video_ringing_signal"

    invoke-static {p2, p4, p3}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVRS:Z

    .line 263
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p2

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p4, "support_customized_video_alerting_tone"

    invoke-static {p2, p4, p3}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVAT:Z

    .line 265
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p2

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p4, "support_customized_video_announcements"

    invoke-static {p2, p4, p3}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVA:Z

    .line 269
    nop

    .line 270
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p2

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 269
    const-string p4, "support_screen_interaction"

    invoke-static {p2, p4, p3}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportScreenInteraction:Z

    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance p2, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {p2, p1}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 275
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_1

    .line 278
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mVideoState:I

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "support_multi_video_call"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMultiVideoCallDisabled:Z

    .line 284
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "support_video_call_tx_rx_control"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportTxRxVideo:Z

    .line 286
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "allow_emergency_video_calls_bool"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mAllowEmergencyVideoCalls:Z

    .line 290
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "disable_play_hold_tone"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisableHoldTone:Z

    .line 294
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/ImsService;->isRttSupported(ILandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    .line 298
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "show_conference_max_size_limit_toast"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mShowConferenceSizeLimitToast:Z

    .line 300
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "ims_conference_size_limit_int"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getIntCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)I

    move-result p1

    .line 302
    if-eq p1, v1, :cond_2

    .line 303
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMaxConferenceParticipants:I

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string p3, "tran_support_show_pau_name_bool"

    invoke-static {p1, p3, p2}, Lcom/spreadtrum/ims/ImsService;->getBooleanUniCarrierConfigByServiceId(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->supportShowPauName:Z

    .line 313
    new-instance p1, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p5, p2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;-><init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    .line 314
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 p3, 0x65

    invoke-virtual {p1, p2, p3, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->registerRadioInteractorEvent()V

    .line 319
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    if-eqz p1, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->registerCPSCapabilityChange()V

    .line 321
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->registerRttMessageReceived()V

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 p3, 0x3ee

    invoke-virtual {p1, p2, p3, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForRealOnImsUssd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVA:Z

    if-eqz p1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 p3, 0x3f1

    invoke-virtual {p1, p2, p3, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsCallTextInforChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 7

    .line 239
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    .line 240
    return-void
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6

    .line 2893
    if-eqz p0, :cond_3

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2897
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2898
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 2899
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 2900
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2901
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2904
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2906
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2894
    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleAddParticipantAction(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1104
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 1105
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 1106
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage->ACTION_COMPLETE_ADD_PARTICIPANT error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, "Dial Conference Failed"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1112
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    :catch_0
    move-exception p1

    .line 1116
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1117
    :cond_1
    :goto_0
    nop

    .line 1118
    :goto_1
    return-void
.end method

.method private handleCPSCapabilityChange(II)V
    .locals 3

    .line 2808
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCPSCapabilityChange -> callId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cpsResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2811
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    if-ne p1, v1, :cond_1

    .line 2813
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "ims_call_rtt_cps"

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2815
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 2816
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2818
    :catch_0
    move-exception p1

    .line 2819
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2820
    :cond_0
    :goto_0
    goto :goto_1

    .line 2822
    :cond_1
    const-string p1, "handleCPSCapabilityChange -> not in RTT call or callId miss match"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :goto_1
    return-void
.end method

.method private handleCallFailCauseAction(Landroid/os/AsyncResult;)V
    .locals 6

    .line 1121
    nop

    .line 1122
    nop

    .line 1123
    nop

    .line 1124
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v0, :cond_0

    .line 1125
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleCallFailCauseAction mIImsCallSessionListener is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 1130
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 1131
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage->ACTION_COMPLETE_GET_CALL_FAIL_CAUSE error!"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1132
    :cond_2
    if-eqz p1, :cond_4

    .line 1133
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1135
    if-eqz p1, :cond_3

    .line 1136
    iget-object v0, p1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1137
    iget v2, p1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_1

    .line 1135
    :cond_3
    move v2, v1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_1

    .line 1141
    :cond_4
    :goto_0
    move-object p1, v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v3, v4, :cond_5

    .line 1143
    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isCallSessionTerminatedSuccessed(Lcom/android/internal/telephony/LastCallFailCause;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1144
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "CallSession Terminated Successed!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void

    .line 1148
    :cond_5
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1153
    invoke-direct {p0, v0, v2, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyCallSessionInitiatedFailed(Lcom/android/internal/telephony/LastCallFailCause;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1154
    return-void
.end method

.method private handleConferenceAction(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1085
    if-eqz p1, :cond_0

    .line 1086
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_COMPLETE_CONFERENCE->ar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ar.exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ar.userObj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 1090
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 1092
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, "Dial Conference Failed"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    goto :goto_0

    .line 1095
    :catch_0
    move-exception p1

    .line 1096
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1100
    :cond_1
    :goto_0
    return-void
.end method

.method private handleConsultattvtTransferAction(Landroid/os/AsyncResult;)V
    .locals 1

    .line 1187
    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 1188
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage->ACTION_COMPLETE_CONSULTATTVT_TRANSFER error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :try_start_0
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 1191
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception p1

    .line 1193
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1194
    :goto_0
    goto :goto_1

    .line 1197
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1200
    goto :goto_1

    .line 1198
    :catch_1
    move-exception p1

    .line 1199
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1202
    :goto_1
    return-void
.end method

.method private handleDialUssdAction(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1205
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage-> isUssdCall():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 1209
    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 1210
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1212
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    goto :goto_1

    .line 1214
    :catch_0
    move-exception p1

    .line 1215
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1218
    :cond_1
    :goto_1
    return-void
.end method

.method private handleExceptionEvent(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 2

    .line 990
    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 991
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleExceptionEvent->message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p2, p2, Landroid/os/Message;->what:I

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->messageToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    return-void
.end method

.method private handleHoldAction(Landroid/os/AsyncResult;)V
    .locals 4

    .line 996
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 997
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage->ACTION_COMPLETE_HOLD error! mIsLocalHold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    if-eqz v1, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 1003
    :try_start_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "Hold Failed"

    invoke-direct {v1, v0, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    :catch_0
    move-exception p1

    .line 1006
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1007
    :goto_0
    goto :goto_1

    .line 1011
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_HOLD:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 1012
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    .line 1014
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->operationComplete()V

    .line 1015
    return-void
.end method

.method private handleImsCallTextInforChanged(IIILjava/lang/String;)V
    .locals 4

    .line 3114
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsCallTextInforChanged -> callId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ImsCallExtInforTag.TAG_TEXT_REJECT.ordinal():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->TAG_TEXT_REJECT:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;

    .line 3117
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3114
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v1, :cond_0

    iget v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    if-ne v1, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->TAG_TEXT_ESTABLISH:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;

    .line 3120
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->ordinal()I

    move-result p1

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->TAG_TEXT_REJECT:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;

    .line 3121
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->ordinal()I

    move-result p1

    if-eq p2, p1, :cond_3

    .line 3122
    :cond_2
    const-string p1, "handleImsCallTextInforChanged -> callId or calltag miss match"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    return-void

    .line 3127
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->TAG_TEXT_REJECT:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;

    .line 3129
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->ordinal()I

    move-result p1

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->TAG_TEXT_ESTABLISH:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;

    .line 3130
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsCallExtInforTag;->ordinal()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 3131
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "ims_call_extra_notify_type"

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3132
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p2, "ims_call_extra_reject_reason"

    invoke-virtual {p1, p2, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3133
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p2, "ims_call_extra_reject_text"

    invoke-virtual {p1, p2, p4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3138
    :cond_5
    goto :goto_0

    .line 3136
    :catch_0
    move-exception p1

    .line 3137
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3139
    :goto_0
    return-void
.end method

.method private handleImsUssdEvent(Landroid/os/AsyncResult;)V
    .locals 6

    .line 1221
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1223
    const/4 v0, -0x1

    .line 1224
    :try_start_0
    const-string v1, "ussd error"

    .line 1225
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 1226
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 1232
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1234
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1235
    array-length v4, p1

    if-le v4, v3, :cond_1

    .line 1236
    aget-object v1, p1, v3

    .line 1240
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ussdMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 1242
    if-eq v0, v3, :cond_3

    .line 1243
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 1227
    :cond_2
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage->EVENT_ON_IMS_USSD error!"

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 1229
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :cond_3
    :goto_1
    goto :goto_2

    .line 1246
    :catch_0
    move-exception p1

    .line 1247
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1250
    :cond_4
    :goto_2
    return-void
.end method

.method private handleMergeAction(Landroid/os/AsyncResult;)V
    .locals 4

    .line 1050
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 1051
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage->ACTION_COMPLETE_MERGE error!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->onCallMergeFailed(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 1054
    nop

    .line 1055
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mShowConferenceSizeLimitToast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1056
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getConSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 1057
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getConSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getParticipantsSize()I

    move-result v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMaxConferenceParticipants:I

    if-lt v0, v1, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getService()Lcom/spreadtrum/ims/ImsService;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    const/16 v1, 0xc8

    const/16 v2, 0xdb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1066
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not merge as it already contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMaxConferenceParticipants:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1070
    :cond_1
    const-string v0, "Merge Failed"

    :goto_0
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 1072
    :try_start_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    goto :goto_1

    .line 1075
    :catch_0
    move-exception p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1079
    :cond_2
    :goto_1
    goto :goto_2

    .line 1080
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    .line 1082
    :goto_2
    return-void
.end method

.method private handleNotificationCode(Landroid/os/AsyncResult;)V
    .locals 9

    .line 2420
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2421
    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 2422
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 2423
    packed-switch v3, :pswitch_data_0

    .line 2456
    new-instance v8, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 2459
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 2460
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v8}, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2468
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    goto :goto_0

    .line 2440
    :pswitch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRemoteHold:Z

    .line 2441
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_0

    .line 2442
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateRemoteCallProfile(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 2446
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2448
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    :cond_1
    goto :goto_0

    .line 2450
    :catch_0
    move-exception p1

    .line 2451
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2454
    goto :goto_0

    .line 2425
    :pswitch_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRemoteHold:Z

    .line 2426
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2430
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 2431
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2432
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2436
    :cond_2
    goto :goto_0

    .line 2434
    :catch_1
    move-exception p1

    .line 2435
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2438
    goto :goto_0

    .line 2470
    :cond_3
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    .line 2474
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRejectAction(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1036
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1037
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage->ACTION_COMPLETE_REJECT error!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 1040
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, "Reject Failed"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    goto :goto_0

    .line 1042
    :catch_0
    move-exception p1

    .line 1043
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1047
    :cond_0
    :goto_0
    return-void
.end method

.method private handleResumeAction(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1018
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1019
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage->ACTION_COMPLETE_RESUME error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 1022
    :try_start_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "Resume Failed"

    invoke-direct {v1, v0, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception p1

    .line 1025
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1026
    :goto_0
    goto :goto_1

    .line 1030
    :cond_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_RESUME:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 1032
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsResumeRequestAction:Z

    .line 1033
    return-void
.end method

.method private handleRttChannelProcessDone(Landroid/os/AsyncResult;)V
    .locals 3

    .line 2854
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRttChannelProcessDone -> ar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    if-eqz p1, :cond_1

    .line 2856
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2857
    const-string p1, "handleRttChannelProcessDone: error!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 2859
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-nez p1, :cond_2

    .line 2860
    const-string p1, "rtt channel open error, need to downgrade to voice"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0xf

    .line 2862
    invoke-virtual {v1, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2861
    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallFallBackToVoice(ILandroid/os/Message;)V

    goto :goto_0

    .line 2865
    :cond_0
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    .line 2866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRttChannelProcessDone, mRttChannelEnabled = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2869
    :cond_1
    const-string p1, "handleRttChannelProcessDone: ar is null !"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 2872
    :cond_2
    :goto_0
    return-void
.end method

.method private handleRttMessageReceived([B)V
    .locals 3

    .line 2832
    const-string v0, ""

    .line 2834
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2835
    :try_start_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRttMessageReceived -> demessage ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2838
    goto :goto_1

    .line 2836
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2837
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnsupportedEncodingException "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2839
    :goto_1
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-nez p1, :cond_0

    .line 2840
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleRttMessageReceived-> mRttChannelEnabled false, will enable rtt channel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTChannelEnable(ILandroid/os/Message;)V

    .line 2842
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 2846
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    .line 2847
    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2851
    :cond_1
    goto :goto_2

    .line 2849
    :catch_2
    move-exception p1

    .line 2850
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2852
    :goto_2
    return-void
.end method

.method private handleSendDtmfToneEvent(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1171
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 1172
    if-eqz p1, :cond_1

    .line 1173
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage-> EVENT_SEND_DTMF_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1177
    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :cond_0
    goto :goto_0

    .line 1180
    :catch_0
    move-exception p1

    .line 1184
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSendUssdAction(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1157
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage-> ACTION_COMPLETE_SEND_USSD:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 1161
    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 1162
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :cond_0
    goto :goto_0

    .line 1164
    :catch_0
    move-exception p1

    .line 1165
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1168
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSimmgrSimEvent(I)V
    .locals 4

    .line 2875
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimmgrSimEvent simState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22

    if-ne p1, v1, :cond_2

    .line 2878
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimmgrSimEvent mImsCallProfile : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 2883
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x1f5

    const/4 v2, 0x0

    const-string v3, "501"

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    :cond_1
    goto :goto_0

    .line 2886
    :catch_0
    move-exception p1

    .line 2887
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2890
    :cond_2
    :goto_0
    return-void
.end method

.method private handleToneEvent(II)V
    .locals 4

    .line 2629
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleToneEvent State :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->messageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isToneNeedHandle(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2631
    :cond_0
    nop

    .line 2632
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2634
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 2635
    iget p1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 2636
    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2637
    move v1, v2

    goto :goto_0

    .line 2640
    :cond_1
    iget p1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-eqz p1, :cond_2

    .line 2641
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2642
    move v1, v2

    .line 2645
    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez p1, :cond_3

    goto :goto_4

    .line 2647
    :cond_3
    const/16 p1, 0x3e9

    if-ne p1, p2, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, v0, :cond_4

    .line 2649
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto :goto_2

    .line 2653
    :catch_0
    move-exception p1

    goto :goto_1

    .line 2650
    :cond_4
    const/16 p1, 0x3ef

    if-ne p1, p2, :cond_5

    .line 2651
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2654
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 2655
    :cond_5
    :goto_2
    nop

    .line 2656
    :goto_3
    return-void

    .line 2645
    :cond_6
    :goto_4
    return-void
.end method

.method private isCVRSOrCVATType(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 2

    .line 2916
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2917
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "dc is null in isCVRSOrCVATType."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    return v0

    .line 2920
    :cond_0
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v1, "AleartType=1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2921
    const/4 p1, 0x1

    return p1

    .line 2923
    :cond_1
    return v0
.end method

.method private isCallSessionTerminatedSuccessed(Lcom/android/internal/telephony/LastCallFailCause;Ljava/lang/String;)Z
    .locals 3

    .line 923
    nop

    .line 925
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    if-eqz p1, :cond_3

    iget p1, p1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 935
    const/16 p1, 0x152

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    goto :goto_1

    .line 927
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    const/16 v1, 0x834

    if-ne p1, v1, :cond_2

    .line 928
    const/16 p1, 0x3f6

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    goto :goto_1

    .line 929
    :cond_2
    iget p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    const/16 v1, 0x1f8

    if-eq p1, v1, :cond_3

    .line 931
    const/16 p1, 0x1fe

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 937
    :cond_3
    :goto_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated  mDisconnCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v1, v2, v0, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    const/4 v0, 0x1

    .line 944
    goto :goto_2

    .line 941
    :catch_0
    move-exception p1

    .line 942
    nop

    .line 943
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 945
    :goto_2
    return v0
.end method

.method private isCallStateEstablishing()Z
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 638
    :cond_0
    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    return v1

    .line 642
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isGmsVersion()Z
    .locals 2

    .line 2911
    const-string v0, "ro.com.google.gmsversion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2912
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

.method private isImsSessionInvalid()Z
    .locals 3

    .line 648
    iget v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 649
    :goto_0
    if-eqz v0, :cond_1

    .line 650
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Session is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1
    return v0
.end method

.method private isMtConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 3

    .line 2600
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 2605
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2606
    return v1

    .line 2608
    :cond_1
    iget-boolean p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz p1, :cond_2

    .line 2609
    const/4 p1, 0x1

    return p1

    .line 2611
    :cond_2
    return v1

    .line 2601
    :cond_3
    :goto_0
    return v1
.end method

.method private isToneNeedHandle(II)Z
    .locals 3

    .line 2661
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2668
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v0, :cond_1

    .line 2669
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "isToneNeedHandle mMediaProfile is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    return v1

    .line 2673
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    const/16 p1, 0x3ef

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisableHoldTone:Z

    if-eqz p1, :cond_2

    .line 2674
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "isToneNeedHandle operator not support hold tone"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return v1

    .line 2678
    :cond_2
    return v0

    .line 2663
    :cond_3
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "isToneNeedHandle mImsCallProfile is null or ImsDriverCall state is holding."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    return v1
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 2

    .line 716
    sparse-switch p1, :sswitch_data_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unkwon message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 763
    :sswitch_0
    const-string p1, "EVENT_CALL_TEXT_INFOR"

    return-object p1

    .line 758
    :sswitch_1
    const-string p1, "EVENT_SEND_DTMF_DONE"

    return-object p1

    .line 756
    :sswitch_2
    const-string p1, "EVENT_HOLD_TONE"

    return-object p1

    .line 752
    :sswitch_3
    const-string p1, "EVENT_ON_IMS_USSD"

    return-object p1

    .line 760
    :sswitch_4
    const-string p1, "EVENT_EARLY_MEDIA_STATE_CHANGE"

    return-object p1

    .line 754
    :sswitch_5
    const-string p1, "EVENT_SSN"

    return-object p1

    .line 750
    :sswitch_6
    const-string p1, "ACTION_COMPLETE_DIAL_USSD"

    return-object p1

    .line 748
    :sswitch_7
    const-string p1, "ACTION_COMPLETE_HOLD_ACTIVE"

    return-object p1

    .line 746
    :sswitch_8
    const-string p1, "ACTION_COMPLETE_ACCEPT_AS_AUDIO"

    return-object p1

    .line 744
    :sswitch_9
    const-string p1, "ACTION_COMPLETE_SEND_USSD"

    return-object p1

    .line 742
    :sswitch_a
    const-string p1, "ACTION_COMPLETE_GET_CALL_FAIL_CAUSE"

    return-object p1

    .line 740
    :sswitch_b
    const-string p1, "ACTION_COMPLETE_REMOVE_PARTICIPANT"

    return-object p1

    .line 738
    :sswitch_c
    const-string p1, "ACTION_COMPLETE_RINGBACK_TONE"

    return-object p1

    .line 736
    :sswitch_d
    const-string p1, "ACTION_COMPLETE_ADD_PARTICIPANT"

    return-object p1

    .line 734
    :sswitch_e
    const-string p1, "ACTION_COMPLETE_CONFERENCE"

    return-object p1

    .line 732
    :sswitch_f
    const-string p1, "ACTION_COMPLETE_MERGE"

    return-object p1

    .line 730
    :sswitch_10
    const-string p1, "ACTION_COMPLETE_DEFLECT"

    return-object p1

    .line 728
    :sswitch_11
    const-string p1, "ACTION_COMPLETE_REJECT"

    return-object p1

    .line 726
    :sswitch_12
    const-string p1, "ACTION_COMPLETE_HANGUP"

    return-object p1

    .line 724
    :sswitch_13
    const-string p1, "ACTION_COMPLETE_ACCEPT"

    return-object p1

    .line 722
    :sswitch_14
    const-string p1, "ACTION_COMPLETE_RESUME"

    return-object p1

    .line 720
    :sswitch_15
    const-string p1, "ACTION_COMPLETE_HOLD"

    return-object p1

    .line 718
    :sswitch_16
    const-string p1, "ACTION_COMPLETE_DIAL"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x3 -> :sswitch_14
        0x4 -> :sswitch_13
        0x5 -> :sswitch_12
        0x6 -> :sswitch_11
        0x7 -> :sswitch_10
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0xa -> :sswitch_d
        0xb -> :sswitch_c
        0xc -> :sswitch_b
        0xd -> :sswitch_a
        0xe -> :sswitch_9
        0xf -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x65 -> :sswitch_5
        0x3e9 -> :sswitch_4
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyCallSessionInitiatedFailed(Lcom/android/internal/telephony/LastCallFailCause;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 950
    if-eqz p1, :cond_1

    .line 951
    iget p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez p1, :cond_0

    .line 952
    iput p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 953
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 965
    :sswitch_0
    const/16 p1, 0x16c

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 966
    iput p1, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 967
    goto :goto_0

    .line 961
    :sswitch_1
    const/16 p1, 0x16b

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 962
    iput p1, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 963
    goto :goto_0

    .line 956
    :sswitch_2
    const/16 p1, 0x97

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 957
    iput p1, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 958
    goto :goto_0

    .line 970
    :sswitch_3
    iput p2, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 971
    goto :goto_0

    .line 973
    :sswitch_4
    const/16 p1, 0x152

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 974
    iput p1, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 975
    :goto_0
    goto :goto_1

    .line 978
    :cond_0
    iput p1, p3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 983
    :cond_1
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    goto :goto_2

    .line 984
    :catch_0
    move-exception p1

    .line 985
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 987
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0xf1 -> :sswitch_3
        0xf002 -> :sswitch_2
        0xf003 -> :sswitch_1
        0xf004 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifySessionUpdate()V
    .locals 3

    .line 692
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    monitor-enter v0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;

    .line 695
    invoke-interface {v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;->onUpdate(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 696
    goto :goto_0

    .line 697
    :cond_1
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCPSCapabilityChange()V
    .locals 4

    .line 2802
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerCPSCapabilityChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2803
    return-void
.end method

.method private registerRadioInteractorEvent()V
    .locals 4

    .line 2616
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForEarlyMedia(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2617
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2618
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForRealSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2619
    return-void
.end method

.method private registerRttMessageReceived()V
    .locals 4

    .line 2826
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerRttMessageReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2827
    return-void
.end method

.method private setCVAValue(I)V
    .locals 3

    .line 2400
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVA:Z

    if-eqz v1, :cond_2

    .line 2401
    const/4 v1, 0x4

    const-string v2, "ims_call_extra_notify_type"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2402
    const/4 v0, 0x3

    const-string v1, "ims_call_extra_reject_reason"

    if-ne p1, v0, :cond_0

    .line 2403
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2404
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2405
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2407
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "ims_call_extra_reject_text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 2410
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    goto :goto_1

    .line 2411
    :catch_0
    move-exception p1

    .line 2412
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2417
    :cond_2
    :goto_1
    return-void
.end method

.method private showPauName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 3158
    nop

    .line 3160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "^(0+)"

    const-string v2, ""

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 3161
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3162
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3163
    const/4 p1, 0x1

    goto :goto_1

    .line 3165
    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget-object p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPauName: showPauName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    return p1
.end method

.method private unRegisterCPSCapabilityChange()V
    .locals 2

    .line 2805
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unRegisterCPSCapabilityChange(Landroid/os/Handler;)V

    .line 2806
    return-void
.end method

.method private unRegisterRadioInteractorEvent()V
    .locals 2

    .line 2622
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForEarlyMedia(Landroid/os/Handler;)V

    .line 2623
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForHoldTone(Landroid/os/Handler;)V

    .line 2624
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForRealSimStateChanged(Landroid/os/Handler;)V

    .line 2625
    return-void
.end method

.method private unRegisterRttMessageReceived()V
    .locals 2

    .line 2829
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unRegisterRttMessageReceived(Landroid/os/Handler;)V

    .line 2830
    return-void
.end method

.method private updateAudioQualityFormDC(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 3

    .line 3021
    if-nez p1, :cond_0

    .line 3022
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "dc is null in updateAudioQualityFormDC."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    return-void

    .line 3025
    :cond_0
    const/4 v0, 0x0

    .line 3026
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3027
    iget-object v1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v2, "hd=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3029
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_NB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3030
    const/16 v0, 0x11

    goto :goto_0

    .line 3031
    :cond_1
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_WB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3032
    const/16 v0, 0x12

    goto :goto_0

    .line 3033
    :cond_2
    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->EVS_SWB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3034
    const/16 v0, 0x13

    goto :goto_0

    .line 3036
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 3038
    :cond_4
    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->AMR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3039
    const/4 v0, 0x1

    .line 3042
    :cond_5
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsStreamMediaProfile.audioQuality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3044
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3045
    return-void
.end method

.method private updateCVATCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V
    .locals 4

    .line 3086
    if-nez p1, :cond_0

    .line 3087
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "dc is null in updateCVATCallProfileFromDC."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    return-void

    .line 3090
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsGmsVersion:Z

    if-eqz v0, :cond_1

    .line 3091
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "This is GMS version and not handle CVAT function."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    return-void

    .line 3094
    :cond_1
    const-string v0, "ims_call_extra_cvat_voice"

    const-string v1, "ims_call_extra_cvat_video"

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq p2, v3, :cond_2

    iget-object p2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p2, v3, :cond_4

    :cond_2
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVAT:Z

    if-eqz p2, :cond_4

    .line 3096
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3097
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 p2, 0x4

    const/4 v3, 0x1

    if-ne p1, p2, :cond_3

    .line 3098
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3099
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3100
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    .line 3101
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3102
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3104
    :cond_4
    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_5

    goto :goto_0

    .line 3107
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3108
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3110
    :cond_6
    :goto_0
    return-void
.end method

.method private updateCVRSCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V
    .locals 5

    .line 3048
    nop

    .line 3049
    if-nez p1, :cond_0

    .line 3050
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "dc is null in updateCVRSCallProfileFromDC."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-void

    .line 3053
    :cond_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsGmsVersion:Z

    if-eqz v0, :cond_1

    .line 3054
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "This is GMS version and not handle CVRS function."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    return-void

    .line 3057
    :cond_1
    const-string v0, "ims_call_extra_cvrs_voice"

    const-string v1, "ims_call_extra_cvrs_video"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p2, v4, :cond_3

    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVRS:Z

    if-eqz p2, :cond_3

    .line 3058
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3059
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3060
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3062
    :cond_2
    nop

    .line 3063
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3064
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    move p1, v2

    goto :goto_1

    .line 3066
    :cond_3
    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_4

    goto :goto_0

    .line 3069
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3070
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3073
    :goto_0
    move p1, v3

    :goto_1
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isVoiceCVRS:Z

    if-eq p2, p1, :cond_6

    .line 3074
    if-eqz p2, :cond_5

    .line 3075
    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->cancelVideoDowngradeToastForCVRS:Z

    goto :goto_2

    .line 3077
    :cond_5
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->cancelVideoDowngradeToastForCVRS:Z

    .line 3079
    :goto_2
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isVoiceCVRS:Z

    goto :goto_3

    .line 3081
    :cond_6
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->cancelVideoDowngradeToastForCVRS:Z

    .line 3083
    :goto_3
    return-void
.end method

.method private updateCallSessionState(Lcom/spreadtrum/ims/ImsDriverCall$State;ZZ)V
    .locals 3

    .line 533
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$1;->$SwitchMap$com$spreadtrum$ims$ImsDriverCall$State:[I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 631
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "updateFromDc->state is error."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 620
    :pswitch_0
    const/16 p1, 0x8

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 622
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 623
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    iget p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {p2, p3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_0
    goto/16 :goto_2

    .line 626
    :catch_0
    move-exception p1

    .line 627
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 629
    goto/16 :goto_2

    .line 618
    :pswitch_1
    goto/16 :goto_2

    .line 595
    :pswitch_2
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    if-nez p1, :cond_1

    .line 596
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    .line 597
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsEnableLocalConference(ZLandroid/os/Message;)V

    .line 600
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_3

    .line 602
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 605
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    sget-object p2, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_RESUME:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_4

    .line 607
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "updateFromDc->callSessionResumeFailed!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const-string p3, "Resume Failed"

    invoke-direct {p2, v1, v1, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 610
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    :cond_4
    goto/16 :goto_2

    .line 612
    :catch_1
    move-exception p1

    .line 613
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 615
    goto/16 :goto_2

    .line 561
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p3, 0x4

    if-eqz p1, :cond_5

    .line 562
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 564
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    if-eq v2, p3, :cond_5

    .line 565
    const/4 v2, 0x3

    iput v2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 568
    :cond_5
    iput p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 569
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    if-eqz p1, :cond_6

    .line 570
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    .line 571
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsEnableLocalConference(ZLandroid/os/Message;)V

    .line 574
    :cond_6
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_c

    .line 575
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p3, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq p1, p3, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    .line 577
    :cond_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 578
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    goto :goto_1

    .line 579
    :cond_9
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isCallStateEstablishing()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez p1, :cond_a

    goto :goto_0

    .line 581
    :cond_a
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    sget-object p2, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_HOLD:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_c

    .line 584
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "updateFromDc->callSessionHoldFailed!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const-string p3, "Hold Failed"

    invoke-direct {p2, v1, v1, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 587
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mUpdateRequest:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    goto :goto_1

    .line 580
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    :cond_c
    :goto_1
    goto :goto_2

    .line 590
    :catch_2
    move-exception p1

    .line 591
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 593
    goto :goto_2

    .line 549
    :pswitch_4
    const/4 p1, 0x2

    :try_start_3
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 550
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq p1, p2, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_e

    .line 552
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateFromDc->mImsCallProfile.mMediaProfile:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p3, p3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 558
    :cond_e
    goto :goto_2

    .line 556
    :catch_3
    move-exception p1

    .line 557
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 559
    goto :goto_2

    .line 535
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz p1, :cond_f

    .line 536
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 634
    :cond_f
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCallTypeFormDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V
    .locals 5

    .line 2927
    if-nez p1, :cond_0

    .line 2928
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "dc is null in updateCallTypeFormDC."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    return-void

    .line 2932
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_7

    .line 2933
    iget-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportTxRxVideo:Z

    const/4 v0, 0x5

    const/4 v2, 0x4

    if-nez p2, :cond_3

    .line 2934
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    if-eqz p1, :cond_1

    .line 2935
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_1

    .line 2936
    :cond_1
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    if-eqz p1, :cond_2

    .line 2937
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 2939
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 2943
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->getVideoCallMediaDirection()I

    move-result p1

    .line 2944
    sget-object p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dc.getVideoCallMediaDirection() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_4

    .line 2946
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 2947
    :cond_4
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_5

    .line 2948
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 2949
    :cond_5
    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_6

    .line 2950
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2952
    :cond_6
    :goto_0
    goto :goto_1

    .line 2954
    :cond_7
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportTxRxVideo:Z

    if-nez v0, :cond_8

    .line 2955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    .line 2956
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    .line 2958
    :cond_8
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isGmsVersion()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object p2, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, p2, :cond_9

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVRS:Z

    if-eqz p1, :cond_9

    .line 2960
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 2962
    :cond_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x1

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2965
    :goto_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mImsCallProfile.mCallType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    return-void
.end method

.method private updateImsCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 5

    .line 335
    if-nez p1, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-ne v0, v1, :cond_1

    .line 339
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v3, :cond_1

    .line 340
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    const-string v4, "oi"

    invoke-virtual {v0, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    .line 348
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v3

    .line 347
    const-string v4, "oir"

    invoke-virtual {v0, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 351
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->showPauName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    const-string v4, "cna"

    invoke-virtual {v0, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    .line 355
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v3

    .line 354
    const-string v4, "cnap"

    invoke-virtual {v0, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 358
    :cond_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isCVRSOrCVATType(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallTypeFormDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateRTTCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 369
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCVRSCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCVATCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;Z)V

    .line 373
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateAudioQualityFormDC(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 377
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getVideoCapabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x3

    iput v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 383
    :goto_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportScreenInteraction:Z

    if-eqz v0, :cond_6

    .line 384
    const-string v0, "ims_call_extra_screen_interaction_cap"

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 385
    const-string v4, "interactTextflag=1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 386
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 389
    :cond_5
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 395
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 396
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mAllowEmergencyVideoCalls:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v2, :cond_7

    .line 398
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 401
    :cond_7
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateRemoteCallProfile(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMtConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 404
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "ims_mt_conf"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 406
    :cond_8
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ims_call_index"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private updateRTTCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 5

    .line 2969
    if-nez p1, :cond_0

    .line 2970
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "dc is null in updateRTTCallProfileFromDC."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    return-void

    .line 2973
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isRttCall()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3eb

    if-eqz v0, :cond_3

    .line 2974
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2975
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateRTTCallProfileFromDC -> update mImsCallProfile to rtt"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 2977
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 2979
    :try_start_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v0, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2982
    goto :goto_0

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2985
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-nez v0, :cond_2

    .line 2986
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateRTTCallProfileFromDC -> need to enable rtt channel"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v4, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTChannelEnable(ILandroid/os/Message;)V

    .line 2988
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 2990
    :cond_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isRttVTCall()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2991
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "updateRTTCallProfileFromDC -> text + vt, need to change to text to vt"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0xb

    .line 2993
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2992
    invoke-virtual {p1, v0, v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    goto :goto_2

    .line 2997
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 2998
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateRTTCallProfileFromDC -> rtt to voice"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3000
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_4

    .line 3002
    :try_start_1
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v0, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3005
    goto :goto_1

    .line 3003
    :catch_1
    move-exception v0

    .line 3004
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3007
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getService()Lcom/spreadtrum/ims/ImsService;

    move-result-object v0

    .line 3008
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3009
    const/16 p1, 0xc8

    const/16 v4, 0xda

    invoke-virtual {v0, p1, v4, v1}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 3013
    :cond_5
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-eqz p1, :cond_6

    .line 3014
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTChannelEnable(ILandroid/os/Message;)V

    .line 3015
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    .line 3018
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 7

    .line 1575
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "accept-> ImsSessionInvalid!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    const/4 v3, 0x6

    if-eqz v0, :cond_2

    .line 1582
    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    .line 1583
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 1584
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p1, v3, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    .line 1585
    return-void

    .line 1587
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsCallSessionImpl accept callType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    new-instance v4, Landroid/telecom/VideoProfile;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v5, v5, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1589
    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v5, Landroid/telecom/VideoProfile;

    .line 1591
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1588
    invoke-virtual {v0, v4, v5}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1593
    :cond_2
    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne p1, v2, :cond_3

    .line 1595
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "ImsCallSessionImpl accept: CALL_TYPE_VT_RX !!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateVideoTxRxState(ZZ)V

    .line 1601
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1602
    if-eqz p1, :cond_4

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez p1, :cond_4

    .line 1605
    nop

    .line 1606
    iput v1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_0

    .line 1608
    :cond_4
    nop

    .line 1611
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {p2, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->acceptCall(Landroid/os/Message;)V

    .line 1612
    return-void
.end method

.method public addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V
    .locals 4

    .line 661
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    if-nez p1, :cond_1

    .line 664
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "addListener->Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_2
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener already add :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1285
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "session close!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1288
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1289
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1290
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 1291
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1292
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    .line 1293
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 1294
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 1295
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    .line 1297
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->unRegisterRadioInteractorEvent()V

    .line 1299
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    if-eqz v1, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->unRegisterCPSCapabilityChange()V

    .line 1301
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->unRegisterRttMessageReceived()V

    .line 1302
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTChannelEnable(ILandroid/os/Message;)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unRegisterForRealOnImsUssd(Landroid/os/Handler;)V

    .line 1311
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsSupportCVA:Z

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForImsCallTextInforChanged(Landroid/os/Handler;)V

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeSrvccSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 1318
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    .line 1277
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 1278
    return-void
.end method

.method public createConferenceState()V
    .locals 1

    .line 2699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    .line 2700
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2701
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 2

    .line 1255
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 1256
    return-void
.end method

.method public disconnectForConferenceMember()V
    .locals 1

    .line 2323
    const/16 v0, 0x8

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 2324
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnectedByMerge()V

    .line 2325
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeConferenceMemberSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 2326
    return-void
.end method

.method public enableLocalHold(Z)V
    .locals 2

    .line 2511
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->enableLocalHold(ZLandroid/os/Message;)V

    .line 2512
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 5

    .line 1821
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 1823
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendToConference-> inLocalCallForward:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    aget-object v2, p1, v0

    const-string v3, "inLocalCallForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1825
    aget-object p1, p1, v0

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1826
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mInLocalCallForward:Z

    goto/16 :goto_0

    .line 1828
    :cond_0
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mInLocalCallForward:Z

    goto :goto_0

    .line 1830
    :cond_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v2, :cond_4

    .line 1831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendToConference-> action:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    aget-object v1, p1, v0

    const-string v2, "hold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 1833
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1834
    invoke-virtual {v4, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1833
    invoke-virtual {p1, v1, v3, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsHoldSingleCall(IZLandroid/os/Message;)V

    .line 1835
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    .line 1837
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    goto :goto_0

    .line 1838
    :cond_2
    aget-object p1, p1, v0

    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1839
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1840
    invoke-virtual {v4, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1839
    invoke-virtual {p1, v1, v0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsHoldSingleCall(IZLandroid/os/Message;)V

    .line 1841
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalConferenceUpdate:Z

    .line 1843
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    goto :goto_0

    .line 1847
    :cond_3
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendToConference: participants is null,mImsDriverCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_4
    :goto_0
    return-void
.end method

.method public formatParticipantsNumber([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2791
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2792
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2794
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2797
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 1327
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v0, v1, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v0, v1, :cond_1

    .line 1330
    :cond_0
    const-string v0, "-1"

    return-object v0

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_2

    .line 1333
    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1335
    :cond_2
    const-string v0, "0"

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getConferenceDriverCallUpdated()Z
    .locals 1

    .line 2691
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceDriverCallUpdated:Z

    return v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 2501
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;
    .locals 1

    .line 1958
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    return-object v0
.end method

.method public getIsInLocalConference()Z
    .locals 1

    .line 2532
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isHasInLocalConferenceSession()Z

    move-result v0

    return v0
.end method

.method public getIsPendingTerminate()Z
    .locals 1

    .line 2571
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsPendingTerminate:Z

    return v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mLocalRequestProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaRequest()I
    .locals 3

    .line 2586
    nop

    .line 2587
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x6

    if-eqz v0, :cond_2

    .line 2588
    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2589
    goto :goto_0

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 2591
    const/4 v1, 0x7

    goto :goto_0

    .line 2592
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v1, :cond_2

    .line 2593
    const/16 v1, 0x8

    goto :goto_0

    .line 2596
    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
    .locals 1

    .line 2089
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    return-object v0
.end method

.method public getOneConferenceMember()I
    .locals 4

    .line 2479
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2480
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "getOneConferenceMember->mImsConferenceState is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    return v1

    .line 2483
    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2484
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2487
    if-eqz v2, :cond_1

    .line 2488
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2490
    :cond_1
    goto :goto_0

    .line 2491
    :cond_2
    return v1
.end method

.method public getParticipantsSize()I
    .locals 1

    .line 2683
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1393
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getRemoteRequestProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteRequestProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1405
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1406
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 4

    .line 2041
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "hangup-> ImsSessionInvalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    return-void

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    .line 2046
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup-> isMultiparty state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v3, 0x5

    .line 2048
    invoke-virtual {v2, v3, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2047
    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0

    .line 2050
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "terminate-> mImsDriverCall is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :goto_0
    return-void
.end method

.method public hangupAllConferenceCall()V
    .locals 5

    .line 2283
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v0, :cond_1

    .line 2284
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSessionFromConference->mImsConferenceState is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return-void

    .line 2287
    :cond_1
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2288
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2291
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v4, 0x5

    .line 2292
    invoke-virtual {v3, v4, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2291
    invoke-virtual {v2, v1, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 2293
    goto :goto_1

    .line 2294
    :cond_2
    return-void
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4

    .line 1683
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 1687
    :cond_0
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1688
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "hold-> clear mIsLocalHold!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    goto :goto_0

    .line 1691
    :cond_1
    const-string p1, "gsm.sys.volte.localhold"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1692
    if-eqz v2, :cond_2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1693
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "localhold is true."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    .line 1696
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->enableLocalHold(Z)V

    .line 1697
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsWhenSafe()V

    .line 1701
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne p1, v1, :cond_4

    .line 1703
    :try_start_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "hold-> mIsMegerAction!"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_3

    .line 1705
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "Hold Failed"

    invoke-direct {v1, v0, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :cond_3
    goto :goto_1

    .line 1708
    :catch_0
    move-exception p1

    .line 1709
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1711
    :goto_1
    return-void

    .line 1713
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->countPendingOperations()V

    .line 1714
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isAllCallsActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1715
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->holdActiveCall(Landroid/os/Message;)V

    goto :goto_2

    .line 1717
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1719
    :goto_2
    return-void

    .line 1684
    :cond_6
    :goto_3
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "hold-> ImsSessionInvalid!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void
.end method

.method public inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 5

    .line 2119
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2125
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSameConference-> mImsDriverCall.mptyState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2128
    return v1

    .line 2130
    :cond_1
    return v2

    .line 2120
    :cond_2
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSameConference-> mConferenceHost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsDriverCall is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dc is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return v2
.end method

.method public initConferenceDc(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 2

    .line 2233
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v0, :cond_0

    .line 2234
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "initConferenceDc-> dc is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    new-instance v0, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v0, p1}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 2237
    :cond_0
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 3

    .line 1860
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1865
    :cond_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->formatParticipantsNumber([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1866
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteParticipants-> participantsNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0xa

    .line 1868
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1867
    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestAddGroupCall(Ljava/lang/String;Landroid/os/Message;)V

    .line 1869
    return-void

    .line 1861
    :cond_1
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "inviteParticipants-> participants is null or invalid session"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-void
.end method

.method public isActiveCall()Z
    .locals 2

    .line 2506
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBackgroundCall()Z
    .locals 2

    .line 2080
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBackgroundCall(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 1

    .line 2069
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConferenceAlive()Z
    .locals 3

    .line 2275
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2276
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "isConferenceDisconnected->mImsConferenceState is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return v1

    .line 2279
    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConferenceCallActive()Z
    .locals 5

    .line 2298
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2299
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConferenceCallActive->mImsConferenceState is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    return v2

    .line 2303
    :cond_1
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2304
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2306
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "local_status"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2307
    if-eqz v3, :cond_2

    .line 2308
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsDriverCall;->ConferenceStringToState(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v3, v4, :cond_2

    .line 2309
    return v1

    .line 2311
    :cond_2
    goto :goto_1

    .line 2312
    :cond_3
    return v2
.end method

.method public isConferenceHost()Z
    .locals 1

    .line 2115
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    return v0
.end method

.method public isConferenceMember(I)Z
    .locals 3

    .line 2714
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConferenceMember->index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2717
    const/4 p1, 0x1

    return p1

    .line 2719
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDialingCall()Z
    .locals 2

    .line 2144
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForegroundCall()Z
    .locals 2

    .line 2058
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForegroundCall(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 2

    .line 2073
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHasBackgroundCallAndActiveCall()Z
    .locals 2

    .line 2496
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "isHasBackgroundCallAndActiveCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isHasBackgroundCallAndActiveCall()Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1416
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v2, :cond_1

    .line 1419
    const/4 v0, 0x1

    return v0

    .line 1421
    :cond_1
    return v1

    .line 1417
    :cond_2
    :goto_0
    return v1
.end method

.method public isInLocalConference()Z
    .locals 1

    .line 2528
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsInLocalConference:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1966
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1967
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "isMultiparty->session is invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return v1

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1971
    :cond_1
    const-string v2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1970
    :goto_0
    return v1
.end method

.method public isNewConfSesson()Z
    .locals 1

    .line 2704
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsNewConfSession:Z

    return v0
.end method

.method public isPsMode()Z
    .locals 2

    .line 2134
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2135
    return v1

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v0, :cond_1

    .line 2138
    return v1

    .line 2140
    :cond_1
    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isRingingCall()Z
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTurningToForegroundCall()Z
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isAllCallsHolding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsResumeRequestAction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUssdCall()Z
    .locals 3

    .line 1527
    nop

    .line 1528
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1529
    const-string v2, "dialstring"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 1532
    :cond_0
    return v1
.end method

.method synthetic lambda$handleNotificationCode$0$com-spreadtrum-ims-ImsCallSessionImpl(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1

    .line 2462
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 2463
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    goto :goto_0

    .line 2464
    :catch_0
    move-exception p1

    .line 2465
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2467
    :goto_0
    return-void
.end method

.method public merge()V
    .locals 3

    .line 1775
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->onCallMergeStart(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 1776
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->conference(Landroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public notifyConferenceStateChange()V
    .locals 3

    .line 2218
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v0, :cond_0

    .line 2219
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyConferenceStateChange->mImsConferenceState is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    return-void

    .line 2222
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConferenceStateChange->mImsConferenceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 2225
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    :cond_1
    goto :goto_0

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2230
    :goto_0
    return-void
.end method

.method public notifyMergeComplete()V
    .locals 4

    .line 2094
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_2

    .line 2095
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMergeComplete->this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIImsCallSessionListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getConSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 2097
    if-eqz v1, :cond_1

    .line 2098
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isNewConfSesson()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2099
    const/4 v1, 0x0

    goto :goto_0

    .line 2101
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsNewConfSession:Z

    .line 2104
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMergeComplete->conferenceSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 2107
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    goto :goto_1

    .line 2108
    :catch_0
    move-exception v0

    .line 2109
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2111
    :goto_1
    return-void
.end method

.method public notifyRemoteVideoProfile(Landroid/os/AsyncResult;)V
    .locals 8

    .line 2342
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2343
    if-nez v0, :cond_0

    .line 2344
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "notifyRemoteVideoProfile: notification is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    return-void

    .line 2348
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 2349
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 2352
    if-nez v2, :cond_3

    .line 2353
    const/4 p1, 0x2

    if-eq v3, p1, :cond_1

    const/4 p1, 0x3

    if-ne v3, p1, :cond_8

    .line 2355
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    if-ne p1, v1, :cond_8

    .line 2356
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setCVAValue(I)V

    .line 2358
    new-instance p1, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 2362
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_2

    .line 2363
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    :cond_2
    goto :goto_0

    .line 2365
    :catch_0
    move-exception p1

    .line 2366
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2368
    :goto_0
    goto/16 :goto_1

    .line 2369
    :cond_3
    const/4 v1, 0x1

    if-ne v2, v1, :cond_8

    .line 2371
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRemoteVideoProfile getCallId()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification.index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getMergeState()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2372
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2371
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    if-lez v1, :cond_5

    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 2374
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceMember(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v1, :cond_5

    .line 2376
    :cond_4
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsConfrenceMemberState(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_1

    .line 2377
    :cond_5
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    if-lez v1, :cond_6

    .line 2378
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    if-ne v1, v4, :cond_6

    .line 2379
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v4, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v1, v4, :cond_6

    .line 2380
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v4, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v1, v4, :cond_6

    .line 2381
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->handleNotificationCode(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 2382
    :cond_6
    const/4 p1, 0x4

    if-ne v3, p1, :cond_8

    .line 2384
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_7

    .line 2385
    new-instance p1, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 2388
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2392
    :cond_7
    goto :goto_1

    .line 2390
    :catch_1
    move-exception p1

    .line 2391
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2395
    :cond_8
    :goto_1
    return-void
.end method

.method public notifySessionDisconnected()V
    .locals 6

    .line 701
    const/16 v0, 0x8

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 704
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 707
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;

    .line 709
    invoke-interface {v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 710
    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySessionDisconnected..l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    goto :goto_0

    .line 712
    :cond_0
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionDisconnectedByMerge()V
    .locals 6

    .line 2330
    const/16 v0, 0x8

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 2331
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    monitor-enter v0

    .line 2332
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;

    .line 2333
    invoke-interface {v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 2334
    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySessionDisconnectedByMerge..l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    goto :goto_0

    .line 2336
    :cond_0
    monitor-exit v0

    .line 2337
    return-void

    .line 2336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putScreenSurfaceExtra(Landroid/view/Surface;)V
    .locals 3

    .line 3143
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putScreenSurfaceExtra surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "ims_call_extra_screen_share_surface"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3149
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3153
    :cond_0
    goto :goto_0

    .line 3151
    :catch_0
    move-exception p1

    .line 3152
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3154
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 2

    .line 1622
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "reject-> ImsSessionInvalid!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void

    .line 1626
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 1627
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->rejectCall(Landroid/os/Message;)V

    .line 1628
    return-void
.end method

.method public removeInvalidSessionFromConference(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)V"
        }
    .end annotation

    .line 2240
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v0, :cond_0

    .line 2241
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "removeInvalidSessionFromConference->mImsConferenceState is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    return-void

    .line 2244
    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2245
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2248
    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2249
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2250
    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInvalidSessionFromConference-> index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_1
    goto :goto_0

    .line 2253
    :cond_2
    return-void
.end method

.method public removeListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V
    .locals 4

    .line 676
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 678
    :cond_0
    if-nez p1, :cond_1

    .line 679
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeListener->Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallSessionImplListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_2
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    monitor-exit v0

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 3

    .line 1880
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1884
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1885
    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->removeSessionFromConference(Ljava/lang/String;)V

    .line 1884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1887
    :cond_1
    return-void

    .line 1881
    :cond_2
    :goto_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "removeParticipants error: invalid session or participants is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return-void
.end method

.method public removeSessionFromConference(Ljava/lang/String;)V
    .locals 6

    .line 2256
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2261
    :cond_0
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2262
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "endpoint"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2266
    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSessionFromConference-> number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2268
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v4, 0x5

    .line 2269
    invoke-virtual {v3, v4, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2268
    invoke-virtual {v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 2271
    :cond_1
    goto :goto_0

    .line 2272
    :cond_2
    return-void

    .line 2257
    :cond_3
    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSessionFromConference->mImsConferenceState is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3

    .line 1731
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1736
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    .line 1737
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "resume-> clear mIsLocalHold!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsWhenSafe()V

    .line 1739
    return-void

    .line 1742
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne p1, v1, :cond_3

    .line 1744
    :try_start_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "resume-> mIsMegerAction!"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_2

    .line 1746
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "resume Failed"

    invoke-direct {v1, v0, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :cond_2
    goto :goto_0

    .line 1749
    :catch_0
    move-exception p1

    .line 1750
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1752
    :goto_0
    return-void

    .line 1755
    :cond_3
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isBackgroundCall()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1756
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "resume-> call had resumed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-void

    .line 1759
    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsResumeRequestAction:Z

    .line 1760
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v1, 0x3

    .line 1761
    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1760
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1762
    return-void

    .line 1732
    :cond_5
    :goto_1
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "resume-> ImsSessionInvalid!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2

    .line 1899
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "sendDtmf-> ImsSessionInvalid!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-void

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1905
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1906
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1907
    return-void
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 2036
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "sendRtpHeaderExtensions "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 1981
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1982
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    if-eqz v1, :cond_0

    .line 1983
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "sendRttMessage->failed, will enable rtt channel again"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTChannelEnable(ILandroid/os/Message;)V

    goto :goto_0

    .line 1985
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttChannelDesired:Z

    if-nez v0, :cond_1

    .line 1986
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "sendRttMessage->failed, mRttChannelEnabled false!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1989
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->byteToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendRTTMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 1990
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttMessage-> rttMessage utf-8 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->byteToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :goto_0
    goto :goto_1

    .line 1992
    :catch_0
    move-exception p1

    .line 1993
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "UnsupportedEncodingException "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_1
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2004
    if-nez p1, :cond_0

    .line 2005
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "sendRttModifyRequest->ImsCallProfile is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return-void

    .line 2008
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyRequest-> to.isRttCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2010
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0xb

    .line 2011
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2010
    invoke-virtual {p1, v0, v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    goto :goto_0

    .line 2012
    :cond_1
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2013
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0xc

    .line 2014
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2013
    invoke-virtual {p1, v0, v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    .line 2017
    :cond_2
    :goto_0
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 3

    .line 2025
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyResponse-> response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 2028
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 3

    .line 1944
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1945
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 3

    .line 1433
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 1435
    if-eqz p1, :cond_0

    .line 1436
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    if-eqz p1, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1438
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1439
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCatchSuppServiceInfo:Landroid/os/AsyncResult;

    .line 1442
    :cond_0
    return-void
.end method

.method public setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V
    .locals 0

    .line 2085
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 2086
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    .line 1451
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute->muted state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDesiredMute:Z

    .line 1453
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setMute(ZLandroid/os/Message;)V

    .line 1454
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 11

    .line 1469
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "start-> ImsSessionInvalid!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-void

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1474
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1476
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 1477
    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 1478
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1479
    const-string p1, "oir"

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v8

    .line 1481
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1484
    nop

    .line 1485
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v3, 0x13

    invoke-virtual {v0, v3, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1486
    return-void

    .line 1489
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->countPendingOperations()V

    .line 1490
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto/16 :goto_0

    .line 1494
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1496
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    if-eqz p1, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v3

    .line 1498
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v5

    .line 1499
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v6

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v7

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1500
    invoke-virtual {p1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1497
    invoke-virtual/range {v1 .. v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->emergencyDialRTT(Ljava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1503
    :cond_3
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v3

    .line 1504
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v5

    .line 1505
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v6

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v7

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1506
    invoke-virtual {p1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1503
    invoke-virtual/range {v1 .. v10}, Lcom/spreadtrum/ims/ImsRadioInterface;->emergencyDial(Ljava/lang/String;ILjava/util/List;IZZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1511
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRttSupport:Z

    if-eqz p1, :cond_5

    .line 1512
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v8, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->dialRTT(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1515
    :cond_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v8, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1492
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v3, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1519
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1520
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mVideoState:I

    .line 1522
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeMessageAfterDial()V

    .line 1523
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 1548
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1552
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1553
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    .line 1554
    new-instance v1, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v1}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 1555
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->formatParticipantsNumber([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    sget-object p2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConference-> participantsNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->countPendingOperations()V

    .line 1560
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {p2, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1561
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsNewConfSession:Z

    .line 1562
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1563
    invoke-virtual {v1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1562
    invoke-virtual {p2, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestInitialGroupCall(Ljava/lang/String;Landroid/os/Message;)V

    .line 1564
    return-void

    .line 1555
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1549
    :cond_1
    :goto_0
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "startConference-> participants is null or invalid session"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method public startDtmf(C)V
    .locals 2

    .line 1918
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "startDtmf-> ImsSessionInvalid!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->startDtmf(CLandroid/os/Message;)V

    .line 1923
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1930
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopDtmf-> ImsSessionInvalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return-void

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1935
    return-void
.end method

.method public terminate(I)V
    .locals 5

    .line 1637
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "terminate-> ImsSessionInvalid!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void

    .line 1641
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 1642
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 1643
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->hasRingingCall()Z

    move-result p1

    .line 1644
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceCallActive()Z

    move-result v1

    .line 1645
    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "terminate conference->hasRinging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isConferenceCallActive():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsResumeRequestAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsResumeRequestAction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isForegroundCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isTurningToForegroundCall()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1654
    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isBackgroundCall()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1656
    if-nez p1, :cond_2

    .line 1657
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1659
    :cond_2
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->hangupAllConferenceCall()V

    goto :goto_1

    .line 1649
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 1650
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    invoke-virtual {v1, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1652
    :cond_4
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->hangupAllConferenceCall()V

    .line 1662
    :cond_5
    :goto_1
    return-void

    .line 1664
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz p1, :cond_7

    .line 1665
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    .line 1666
    invoke-virtual {v2, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1665
    invoke-virtual {v1, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1667
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsPendingTerminate:Z

    goto :goto_2

    .line 1669
    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsPendingTerminate:Z

    .line 1670
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v0, "terminate-> mImsDriverCall is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_2
    return-void
.end method

.method public terminatePendingCall(II)V
    .locals 2

    .line 2574
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "terminate-> ImsSessionInvalid!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    return-void

    .line 2578
    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 2580
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/4 v1, 0x5

    .line 2581
    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2580
    invoke-virtual {p1, p2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 2582
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsPendingTerminate:Z

    .line 2583
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 1

    .line 1267
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mHandler:Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 1268
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5

    .line 1788
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v0, :cond_0

    .line 1789
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string p2, "update-> ImsSessionInvalid!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return-void

    .line 1792
    :cond_0
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_2

    .line 1793
    iget p1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1795
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget p2, p2, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {p1, p2, v3, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsSilenceSingleCall(IZLandroid/os/Message;)V

    goto :goto_0

    .line 1796
    :cond_1
    iget p1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-ne p1, v2, :cond_4

    .line 1798
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget p2, p2, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {p1, p2, v1, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsSilenceSingleCall(IZLandroid/os/Message;)V

    goto :goto_0

    .line 1801
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    .line 1802
    iget p1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-ne p1, v3, :cond_3

    .line 1804
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget p2, p2, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {p1, p2, v3, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsMuteSingleCall(IZLandroid/os/Message;)V

    goto :goto_0

    .line 1805
    :cond_3
    iget p1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-ne p1, v2, :cond_4

    .line 1807
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget p2, p2, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {p1, p2, v1, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->imsMuteSingleCall(IZLandroid/os/Message;)V

    .line 1811
    :cond_4
    :goto_0
    return-void
.end method

.method public updateCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 3

    .line 2538
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallRatType-> CallRatState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 2540
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$1;->$SwitchMap$com$spreadtrum$ims$vowifi$VoWifiServiceImpl$CallRatState:[I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    const-string v1, "CallRadioTech"

    packed-switch p1, :pswitch_data_0

    .line 2553
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2550
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    goto :goto_0

    .line 2546
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v0, 0x12

    .line 2547
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2546
    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    goto :goto_0

    .line 2542
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v0, 0xe

    .line 2543
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2542
    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    nop

    .line 2556
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2558
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2559
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2560
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    :cond_0
    goto :goto_1

    .line 2563
    :catch_0
    move-exception p1

    .line 2564
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2567
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfHeldState(Z)V
    .locals 3

    .line 2708
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfHeldState conferenceHeld= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    .line 2710
    return-void
.end method

.method public updateConferenceDriverCallChange(Z)V
    .locals 0

    .line 2688
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceDriverCallUpdated:Z

    .line 2689
    return-void
.end method

.method public updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 11

    .line 440
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    if-nez p1, :cond_0

    goto/16 :goto_c

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 447
    :goto_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsCallProfileFromDC(Lcom/spreadtrum/ims/ImsDriverCall;)V

    .line 448
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateVideoState()V

    .line 449
    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceHost:Z

    if-eqz v4, :cond_a

    .line 454
    nop

    .line 455
    nop

    .line 456
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v4, v4, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    move v6, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 457
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "local_status"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_3

    .line 459
    invoke-static {v7}, Lcom/spreadtrum/ims/ImsDriverCall;->ConferenceStringToState(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v7

    .line 460
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_2

    .line 461
    move v5, v2

    goto :goto_2

    .line 462
    :cond_2
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_3

    .line 463
    move v6, v2

    .line 466
    :cond_3
    :goto_2
    goto :goto_1

    .line 467
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 468
    nop

    .line 469
    sget-object v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v6, "updateFromDc->conferenceHeld and conferenceActive both true!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    .line 471
    :cond_5
    if-eqz v6, :cond_6

    iget-boolean v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    if-eqz v4, :cond_6

    .line 472
    move v4, v2

    goto :goto_3

    .line 474
    :cond_6
    move v4, v1

    :goto_3
    iget-boolean v7, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    if-eq v5, v7, :cond_7

    .line 475
    iput-boolean v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    .line 476
    move v7, v2

    goto :goto_4

    .line 474
    :cond_7
    move v7, v1

    .line 478
    :goto_4
    iget-boolean v8, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceActived:Z

    if-eq v8, v6, :cond_8

    .line 479
    iput-boolean v6, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceActived:Z

    .line 480
    move v6, v2

    goto :goto_5

    .line 478
    :cond_8
    move v6, v1

    .line 483
    :goto_5
    sget-object v8, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateFromDc->conferenceHeld:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " conferenceResumed:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-boolean v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    if-eqz v5, :cond_9

    .line 485
    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    goto :goto_6

    .line 486
    :cond_9
    iget-boolean v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceActived:Z

    if-eqz v5, :cond_b

    .line 487
    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    goto :goto_6

    .line 453
    :cond_a
    move v4, v1

    move v6, v4

    move v7, v6

    .line 490
    :cond_b
    :goto_6
    sget-object v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFromDc->mIsConferenceHeld:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceHeld:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsConferenceActived:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsConferenceActived:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsMegerAction:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsMegerAction:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-boolean v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    if-eqz v5, :cond_d

    .line 493
    if-eqz p1, :cond_d

    .line 494
    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v5, v8, :cond_c

    .line 496
    sget-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    goto :goto_7

    .line 497
    :cond_c
    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v5, v8, :cond_d

    .line 498
    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsLocalHold:Z

    .line 502
    :cond_d
    :goto_7
    invoke-direct {p0, v3, v4, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallSessionState(Lcom/spreadtrum/ims/ImsDriverCall$State;ZZ)V

    .line 503
    nop

    .line 504
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v3, :cond_e

    .line 505
    new-instance v3, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v3, p1}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    .line 506
    move v3, v2

    goto :goto_8

    .line 504
    :cond_e
    move v3, v1

    .line 508
    :goto_8
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/ImsDriverCall;->update(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_f

    goto :goto_9

    :cond_f
    move v3, v1

    goto :goto_a

    :cond_10
    :goto_9
    move v3, v2

    .line 511
    :goto_a
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    :try_start_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v4, :cond_11

    .line 513
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 515
    :cond_11
    if-nez v3, :cond_12

    if-nez v0, :cond_13

    .line 516
    :cond_12
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_13
    goto :goto_b

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 521
    :goto_b
    if-nez v3, :cond_14

    if-nez v7, :cond_14

    if-eqz v6, :cond_15

    :cond_14
    move v1, v2

    .line 522
    :cond_15
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromDc->hasUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsPendingTerminate:Z

    if-eqz p1, :cond_17

    .line 526
    iget p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez p1, :cond_16

    const/16 p1, 0x1f5

    :cond_16
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminate(I)V

    .line 528
    :cond_17
    return v1

    .line 441
    :cond_18
    :goto_c
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromDc->ImsSessionInvalid! dc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v1
.end method

.method public updateImsConfrenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 6

    .line 2149
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2150
    :try_start_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2156
    :cond_0
    nop

    .line 2157
    iget-object v1, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2158
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v1, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2159
    const-string v4, "endpoint"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2160
    if-eqz v4, :cond_1

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2161
    :cond_1
    const-string v2, "endpoint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2162
    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2165
    iget-object v2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2166
    const-string v2, "endpoint"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const-string v2, "user"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2169
    :cond_2
    const-string v2, "user"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    const-string v2, "endpoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    :goto_0
    move v2, v3

    .line 2176
    :cond_3
    const-string v4, "local_status"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2177
    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->ConferenceStringToState(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v4

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v4, v5, :cond_5

    .line 2178
    :cond_4
    const-string v4, "local_status"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2179
    const-string v4, "local_status"

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsDriverCall;->stateToConferenceString(Lcom/spreadtrum/ims/ImsDriverCall$State;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_5
    const-string v4, "status"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2183
    const-string v5, "remote_status"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2184
    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    .line 2185
    invoke-static {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->ConferenceStringToState(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v4

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v4, v5, :cond_7

    .line 2186
    :cond_6
    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2187
    const-string v2, "status"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->stateToConferenceString(Lcom/spreadtrum/ims/ImsDriverCall$State;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    goto :goto_1

    .line 2191
    :cond_7
    move v3, v2

    :goto_1
    goto/16 :goto_3

    .line 2192
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2193
    const-string v2, "id"

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v2, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2197
    const-string v2, "endpoint"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const-string v2, "user"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2200
    :cond_9
    const-string v2, "endpoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    const-string v2, "user"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    :goto_2
    const-string v2, "status"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->stateToConferenceString(Lcom/spreadtrum/ims/ImsDriverCall$State;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v2, "local_status"

    iget-object v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsDriverCall;->stateToConferenceString(Lcom/spreadtrum/ims/ImsDriverCall$State;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v2, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    nop

    .line 2211
    :goto_3
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsConfrenceMember cid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mImsConferenceState:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "this:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    monitor-exit v0

    return v3

    .line 2151
    :cond_a
    :goto_4
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsConfrenceMember-> isImsSessionInvalid or mImsConferenceState is null:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    monitor-exit v0

    return v2

    .line 2214
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateImsConfrenceMemberState(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 6

    .line 2723
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mConferenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2724
    :try_start_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isImsSessionInvalid()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 2732
    :cond_0
    const/4 v1, 0x0

    .line 2733
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2734
    const-string v1, "on-hold"

    goto :goto_0

    .line 2735
    :cond_1
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2736
    const-string v1, "connected"

    .line 2738
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 2739
    sget-object p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateImsConfrenceMemberState newState is null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    monitor-exit v0

    return-void

    .line 2742
    :cond_3
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v2, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2743
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v2, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2744
    if-eqz v2, :cond_7

    .line 2745
    const-string v3, "remote_status"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2747
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2748
    :cond_4
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2749
    const-string v3, "status"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyConferenceStateChange()V

    .line 2752
    :cond_5
    goto :goto_1

    .line 2754
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2755
    const-string v3, "id"

    iget v4, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    const-string v3, "status"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const-string v3, "remote_status"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v3, v3, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    iget v4, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    :cond_7
    :goto_1
    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsConfrenceMemberState notification.index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " mImsConferenceState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    monitor-exit v0

    .line 2765
    return-void

    .line 2726
    :cond_8
    :goto_2
    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsConfrenceMember-> isImsSessionInvalid or mImsConferenceState is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_9

    move v3, v4

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or notification is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    move v4, v5

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    monitor-exit v0

    return-void

    .line 2764
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateRemoteCallProfile(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 4

    .line 2768
    nop

    .line 2770
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v2, "cap:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2771
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2772
    if-eqz v0, :cond_1

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRemoteHold:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mMultiVideoCallDisabled:Z

    if-eqz v0, :cond_0

    .line 2773
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isHasBackgroundCallAndActiveCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2774
    :cond_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMtConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2775
    const/4 p1, 0x0

    goto :goto_0

    .line 2778
    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 2780
    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    goto :goto_1

    .line 2783
    :cond_2
    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x3

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2786
    :goto_1
    return-void
.end method

.method public updateState(I)V
    .locals 0

    .line 2695
    iput p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mState:I

    .line 2696
    return-void
.end method

.method public updateVideoState()V
    .locals 2

    .line 2515
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    .line 2516
    return-void

    .line 2518
    :cond_0
    nop

    .line 2519
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v0

    .line 2520
    iget v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mVideoState:I

    if-eq v1, v0, :cond_1

    .line 2521
    iput v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mVideoState:I

    .line 2522
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->onVideoStateChanged(I)V

    .line 2524
    :cond_1
    return-void
.end method

.method public updateVideoTxRxState(ZZ)V
    .locals 4

    .line 410
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoTxRxState-> mIsTxDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoTxRxState-> mIsRxDisable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    if-ne v2, p2, :cond_0

    goto :goto_2

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    .line 417
    iput-boolean p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    .line 418
    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsTxDisable:Z

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x6

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 421
    :cond_1
    iget-boolean p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIsRxDisable:Z

    if-eqz p1, :cond_2

    .line 422
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x5

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x4

    iput p2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 428
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateVideoTxRxState-> mImsCallProfile.mCallType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateVideoState()V

    .line 431
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mIImsCallSessionListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_4

    .line 432
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_4
    goto :goto_1

    .line 434
    :catch_0
    move-exception p1

    .line 435
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 437
    :goto_1
    return-void

    .line 413
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateVideoTxRxState-> dc:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method
