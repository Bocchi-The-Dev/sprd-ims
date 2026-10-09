.class public Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
.super Lcom/spreadtrum/ims/vowifi/ServiceManager;
.source "VoWifiCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;,
        Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;,
        Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;,
        Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;
    }
.end annotation


# static fields
.field private static final EXTRA_IS_FOCUS:Ljava/lang/String; = "ims_mt_conf"

.field private static final MSG_AUTO_ANSWER:I = 0x3

.field private static final MSG_HANDLE_EVENT:I = 0x0

.field private static final MSG_INVITE_CALL:I = 0x1

.field private static final MSG_INVITE_CALL_TIMEOUT:I = 0x5

.field private static final MSG_RETRY_TERMINATE_CALL:I = 0x4

.field private static final MSG_SRVCC_CANCEL:I = 0x2

.field private static final MSG_SRVCC_FAILED:I = 0x3

.field private static final MSG_SRVCC_START:I = 0x0

.field private static final MSG_SRVCC_SUCCESS:I = 0x1

.field private static final MSG_TERM_CHILD_CALL:I = 0x2

.field private static final PROP_KEY_AUTO_ANSWER:Ljava/lang/String; = "persist.sys.vowifi.autoanswer"

.field private static final TAG:Ljava/lang/String;

.field private static final TERM_CHILD_CALL_DELAY:I = 0x2710


# instance fields
.field private mCallCallback:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;

.field private mCallWithCNI:Z

.field private mCellularNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

.field private mCurAttachSessionId:I

.field private mCurRatType:I

.field private mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

.field private mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

.field private mICall:Lcom/android/ims/internal/IVoWifiCall;

.field private mICallChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mInSRVCC:Z

.field private mIncomingCallAction:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

.field private mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

.field private mRegisterState:I

.field private mSRVCCHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;

.field private mSRVCCSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mUseAudioStreamCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/android/ims/internal/IImsServiceEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSRVCCSessionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInSRVCC(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mInSRVCC:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$manswerCall(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->answerCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallTermed(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleEvent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minviteCall(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->inviteCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 287
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_CALL:Ljava/lang/String;

    const-string v1, "com.spreadtrum.vowifi"

    const-string v2, "com.spreadtrum.vowifi.service.CallService"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 p1, 0x0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    .line 83
    const/4 p2, -0x1

    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurAttachSessionId:I

    .line 84
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mRegisterState:I

    .line 85
    const/16 p2, 0x12

    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurRatType:I

    .line 86
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mInSRVCC:Z

    .line 87
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallWithCNI:Z

    .line 89
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    .line 90
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 91
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCellularNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    .line 92
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mIncomingCallAction:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSRVCCSessionList:Ljava/util/ArrayList;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICallChangedListeners:Ljava/util/ArrayList;

    .line 100
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback-IA;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallCallback:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;

    .line 110
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    .line 190
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSRVCCHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;

    .line 294
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    .line 297
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SRVCC"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 299
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 300
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSRVCCHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;

    .line 302
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CallManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 304
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 305
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    .line 306
    return-void
.end method

.method private answerCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 3

    .line 907
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto answer the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-nez p1, :cond_0

    .line 910
    const-string p1, "Failed to answer the call as it is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 919
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 947
    goto :goto_2

    .line 935
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 936
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    goto :goto_1

    .line 939
    :cond_1
    if-eq v1, p1, :cond_2

    .line 941
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 943
    :cond_2
    :goto_1
    goto :goto_0

    .line 944
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->autoAnswer()V

    .line 945
    goto :goto_3

    .line 926
    :pswitch_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_4

    .line 928
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 932
    :cond_4
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->autoAnswer()V

    .line 933
    goto :goto_3

    .line 922
    :pswitch_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->autoAnswer()V

    .line 923
    goto :goto_3

    .line 947
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shouldn\'t be here, the call count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_3
    goto :goto_4

    .line 950
    :catch_0
    move-exception p1

    .line 951
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to auto answer the call as catch the ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canAcceptIncomingCall()Z
    .locals 5

    .line 2322
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 2324
    return v1

    .line 2329
    :cond_0
    const/4 v0, 0x0

    .line 2330
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 2331
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v3

    .line 2332
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2333
    move v0, v1

    .line 2335
    :cond_1
    goto :goto_0

    .line 2338
    :cond_2
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is the update request? hasUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    xor-int/2addr v0, v1

    return v0
.end method

.method private createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;IZ)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 12

    .line 834
    move-object v0, p0

    iget-object v10, v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 835
    :try_start_0
    new-instance v11, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v2, v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurRatType:I

    move-object v1, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;IIZ)V

    .line 839
    invoke-virtual {p0, v11}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->addCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 841
    monitor-exit v10

    return-object v11

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleCallAddVideoCancel(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 2

    .line 1801
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call add video cancel."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    if-nez p1, :cond_0

    .line 1803
    const-string p1, "[handleCallAddVideoCancel] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return-void

    .line 1807
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p1

    .line 1808
    if-eqz p1, :cond_1

    .line 1809
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1812
    :cond_1
    return-void
.end method

.method private handleCallAddVideoRequest(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 2

    .line 1780
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call add video request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    if-nez p1, :cond_0

    .line 1782
    const-string p1, "[handleCallAddVideoRequest] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return-void

    .line 1786
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->couldUpgradeOrDowngrade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p1

    .line 1788
    if-eqz p1, :cond_1

    .line 1789
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getVideoProfile(I)Landroid/telecom/VideoProfile;

    move-result-object p2

    .line 1790
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 1792
    :cond_1
    goto :goto_0

    .line 1794
    :cond_2
    nop

    .line 1795
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    iget p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(I)I

    move-result p2

    .line 1796
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendModifyResponse(I)I

    .line 1798
    :goto_0
    return-void
.end method

.method private handleCallAlerted(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the alerted or outgoing call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    if-nez p1, :cond_0

    .line 1231
    const-string p1, "[handleAlertedOrOutgoing] The call session is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void

    .line 1235
    :cond_0
    const-string v1, "call_waiting"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    .line 1236
    iget-object p4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    invoke-static {p4, v3, v2, v4}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    goto :goto_0

    .line 1239
    :cond_1
    const-string v1, "call_forward"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1240
    iget-object p4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/4 v1, 0x1

    const/16 v5, 0xa

    invoke-static {p4, v3, v1, v5}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    .line 1245
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p4

    .line 1246
    iput v4, p4, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1247
    if-eqz p3, :cond_3

    .line 1248
    iput v4, p4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1249
    const/4 p3, 0x4

    iput p3, p4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    goto :goto_1

    .line 1251
    :cond_3
    const/4 p3, -0x1

    iput p3, p4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1252
    iput v2, p4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1254
    :goto_1
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1256
    const/4 p3, 0x0

    .line 1257
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isCallForwarded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1261
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setCallee(Ljava/lang/String;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    .line 1264
    :cond_4
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 1265
    if-eqz p1, :cond_5

    .line 1266
    invoke-interface {p1, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1268
    if-eqz p3, :cond_5

    .line 1269
    const-string p2, "oi"

    invoke-virtual {p3, p2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1270
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update the callee as EXTRA_OI to "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-interface {p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1275
    :cond_5
    return-void
.end method

.method private handleCallGetErrorCode(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 5

    .line 1365
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call get error code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1372
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "ims_retry"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "downgrade_ims_retry"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The action \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' did not defined, please check!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1377
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->requiredImsRetry(Z)V

    .line 1378
    goto :goto_1

    .line 1374
    :pswitch_1
    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->requiredImsRetry(Z)V

    .line 1375
    nop

    .line 1383
    :goto_1
    return-void

    .line 1368
    :cond_2
    :goto_2
    const-string p1, "[handleCallGetErrorCode] The call session is null or action is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x90b5d12 -> :sswitch_1
        0x76f0c638 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallHoldOrResume(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1553
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the hold or resume event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    if-nez p2, :cond_0

    .line 1555
    const-string p1, "[handleCallHoldOrResume] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1559
    :cond_0
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    .line 1560
    if-nez v1, :cond_1

    .line 1561
    const-string p1, "The call session\'s listener is null, can\'t alert the hold&resume result"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1565
    :cond_1
    const/16 v2, 0x12c

    const-string v3, "Unknown reason"

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1652
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The event "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " do not belongs to hold or resume."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1634
    :sswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/4 v0, 0x3

    invoke-static {p1, v2, v6, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    .line 1639
    :sswitch_1
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result p1

    if-ge p1, v4, :cond_2

    .line 1642
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1646
    :cond_2
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1647
    iget p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    add-int/2addr p2, v5

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1649
    goto/16 :goto_0

    .line 1616
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    invoke-static {p1, v2, v6, v5}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    .line 1621
    :sswitch_3
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result p1

    if-ge p1, v4, :cond_3

    .line 1624
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1628
    :cond_3
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1629
    iget p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    sub-int/2addr p2, v5

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1631
    goto :goto_0

    .line 1609
    :sswitch_4
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v7, v7, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1611
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1612
    invoke-virtual {p2, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 1613
    goto :goto_0

    .line 1593
    :sswitch_5
    const-string p1, "Call resumed, resume all the video if need."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p1

    .line 1595
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->resumeAll()V

    .line 1597
    :cond_4
    invoke-virtual {p2, v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAliveState(Z)V

    .line 1598
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1599
    invoke-virtual {p2, v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 1602
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1603
    iget p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    add-int/2addr p2, v6

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1605
    goto :goto_0

    .line 1584
    :sswitch_6
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v7, v7, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1586
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1587
    invoke-virtual {p2, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 1588
    goto :goto_0

    .line 1569
    :sswitch_7
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p1

    .line 1570
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 1572
    :cond_5
    invoke-virtual {p2, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAliveState(Z)V

    .line 1573
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1574
    invoke-virtual {p2, v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 1577
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1578
    iget p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    sub-int/2addr p2, v6

    iput p2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1580
    nop

    .line 1656
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_7
        0x6b -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x6e -> :sswitch_2
        0x6f -> :sswitch_0
        0xd2 -> :sswitch_7
        0xd3 -> :sswitch_6
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_4
        0xd6 -> :sswitch_3
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleCallIncoming(IZZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the incoming call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    nop

    .line 1298
    nop

    .line 1299
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 1300
    new-instance p3, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x4

    invoke-direct {p3, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 1302
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3, v1, v0, v2, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIII)V

    goto :goto_0

    .line 1308
    :cond_0
    new-instance p3, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p3, v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 1310
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1313
    :goto_0
    const-string v4, "oi"

    invoke-virtual {p3, v4, p4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v4, "cna"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v4, "cnap"

    invoke-virtual {p3, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1317
    nop

    .line 1318
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1319
    move v4, v1

    goto :goto_1

    .line 1320
    :cond_1
    move v4, v2

    .line 1317
    :goto_1
    const-string v6, "oir"

    invoke-virtual {p3, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1321
    const-string v4, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {p3, v4, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1323
    invoke-virtual {p0, p3, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->createMTCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p2

    .line 1324
    invoke-virtual {p2, p4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setCallee(Ljava/lang/String;)Landroid/telephony/ims/ImsCallProfile;

    .line 1325
    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setCallId(I)V

    .line 1326
    invoke-virtual {p2, v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1327
    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1328
    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateRequestAction(I)V

    .line 1330
    nop

    .line 1331
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 1332
    invoke-virtual {p3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p3

    .line 1333
    invoke-virtual {p3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyResponse()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyRequest()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_3

    .line 1338
    :cond_2
    goto :goto_2

    .line 1334
    :cond_3
    :goto_3
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string p3, "Let\'s waiting for modify response/request."

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    nop

    .line 1336
    move p1, v2

    goto :goto_4

    .line 1331
    :cond_4
    move p1, p4

    .line 1344
    :goto_4
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->isCallFunEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mIncomingCallAction:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->REJECT:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    if-eq p3, v1, :cond_8

    .line 1346
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities;->isCallWaitingEnabled()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result p3

    if-gt p3, v2, :cond_8

    .line 1347
    :cond_5
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->canAcceptIncomingCall()Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p1, :cond_6

    goto :goto_5

    .line 1351
    :cond_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz p1, :cond_7

    .line 1352
    invoke-interface {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onCallIncoming(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1353
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->incomingNotified()V

    .line 1357
    :cond_7
    const-string p1, "persist.sys.vowifi.autoanswer"

    invoke-static {p1, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1358
    if-eqz p1, :cond_9

    .line 1359
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 1348
    :cond_8
    :goto_5
    const/16 p1, 0x1f8

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->reject(I)V

    .line 1362
    :cond_9
    :goto_6
    return-void
.end method

.method private handleCallIsEmergency(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1846
    sget-object p4, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Handle the call is emergency."

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-nez p1, :cond_0

    .line 1848
    const-string p1, "[handleCallIsEmergency] The call session is null."

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-void

    .line 1852
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v0

    .line 1853
    if-eqz v0, :cond_4

    .line 1854
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1855
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p4, 0x16c

    invoke-direct {p2, p4, p4, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1857
    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1858
    goto :goto_1

    .line 1860
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start a normal call, but get 380 from service, urnUri: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$EMUtils;->getEmergencyCallCategory(Ljava/lang/String;)I

    move-result p3

    .line 1862
    const/16 v1, 0x5ea

    .line 1863
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1864
    if-gez p3, :cond_3

    .line 1866
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1867
    const/16 v1, 0x92

    .line 1868
    const-string p2, "380 Alternative Service without urn"

    goto :goto_0

    .line 1870
    :cond_2
    nop

    .line 1872
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not find matched category, response with em msg: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    .line 1874
    :cond_3
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 p3, 0x1

    invoke-direct {p2, v1, p3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1877
    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1881
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 1882
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1883
    return-void
.end method

.method private handleCallIsFocus(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call is focus."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    if-nez p1, :cond_0

    .line 1817
    const-string p1, "[handleCallIsFocus] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-void

    .line 1821
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1822
    const-string p1, "Already added to conference, needn\'t update the is_focus state."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return-void

    .line 1826
    :cond_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAsIsFocus()V

    .line 1828
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1831
    const-string v1, "ims_mt_conf"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1833
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 1834
    if-eqz p1, :cond_2

    .line 1835
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1838
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v0, 0x12c

    const/4 v1, 0x4

    invoke-static {p1, v0, v2, v1}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    .line 1842
    return-void
.end method

.method private handleCallPlayLocalRingback(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Play local ringback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    if-nez p1, :cond_0

    .line 1280
    const-string p1, "[handleCallPlayLocalRingback] The call session is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1284
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1285
    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1286
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 1287
    if-eqz p1, :cond_1

    .line 1288
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1290
    :cond_1
    return-void
.end method

.method private handleCallTalking(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the talking call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    if-nez p1, :cond_0

    .line 1503
    const-string p1, "[handleCallTalking] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void

    .line 1507
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1511
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 1512
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 1513
    iget v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v3

    .line 1514
    const/4 v4, 0x3

    if-nez p3, :cond_2

    .line 1515
    const/4 p3, 0x2

    iput p3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1517
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->supportVideoCall()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1519
    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 1522
    :cond_1
    iput p3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1525
    :goto_0
    if-eqz v3, :cond_2

    .line 1528
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 p4, 0xc8

    const/16 v2, 0xcc

    invoke-static {p3, p4, v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1534
    :cond_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateDataRouterState()V

    .line 1537
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object p3

    .line 1538
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1539
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The number changed to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", save as secondary callee."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setSecondaryCallee(Ljava/lang/String;)V

    .line 1543
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1544
    iput v4, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1545
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 1546
    if-eqz p1, :cond_4

    .line 1547
    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1549
    :cond_4
    return-void
.end method

.method private handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the termed call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-nez p1, :cond_0

    .line 1389
    const-string p1, "[handleCallTermed] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1394
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->handleNextAction(Z)V

    .line 1396
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isRequiredImsRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1397
    const-string p2, "As required ims retry, needn\'t handle this call terminate event."

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startImsRetry()V

    .line 1399
    return-void

    .line 1402
    :cond_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1404
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateChildCalls(I)V

    .line 1410
    :cond_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_3

    .line 1412
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 1415
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v1

    .line 1416
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1417
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    .line 1418
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    .line 1419
    const/4 v4, 0x4

    if-eqz v2, :cond_a

    .line 1420
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isUssdCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1421
    const-string v5, "As ussd start failed, give the ussd msg received as not support."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string v5, "Start ussd failed."

    invoke-interface {v2, v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 1426
    :cond_4
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x92

    if-ne p2, v5, :cond_5

    .line 1430
    const/16 p2, 0x1fe

    .line 1433
    :cond_5
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const-string v6, "The call terminated."

    invoke-direct {v5, p2, p2, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1435
    const/4 p2, 0x2

    if-ge v1, p2, :cond_6

    .line 1438
    invoke-interface {v2, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1441
    :cond_6
    if-eqz v3, :cond_8

    .line 1443
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1444
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1448
    const-string p2, "This call\'s listener is same as the conf call\'s listener."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    :cond_7
    const/16 p2, 0x6c

    iput p2, v5, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1454
    invoke-interface {v2, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1457
    :cond_8
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p2

    .line 1458
    if-eqz p2, :cond_9

    .line 1459
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v1

    if-ge v1, v4, :cond_9

    .line 1460
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1461
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1464
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1467
    invoke-interface {v2, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1469
    const-string v1, "The call will be terminated, but the conference do not setup."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1473
    const/16 v0, 0x1f5

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 1474
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    goto :goto_0

    .line 1477
    :cond_9
    invoke-interface {v2, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1481
    :cond_a
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallStateTracker()Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isMOCall()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1484
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    const/4 v2, -0x1

    invoke-virtual {v1, v4, p2, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1486
    const-string p1, "The incoming call do not attach now, handle the terminate event later."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-void

    .line 1481
    :cond_b
    :goto_0
    nop

    .line 1492
    if-eqz v3, :cond_c

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1493
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 1496
    :cond_c
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1497
    return-void
.end method

.method private handleCallUpdate(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call update ok."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    if-nez p1, :cond_0

    .line 1662
    const-string p1, "[handleCallUpdate] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    return-void

    .line 1666
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 1667
    if-nez v1, :cond_1

    .line 1668
    const-string p1, "The video call profile is null. Shouldn\'t be here, please check!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-void

    .line 1672
    :cond_1
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getCallType(I)I

    move-result v2

    .line 1673
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1674
    if-ne v2, v3, :cond_2

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It means there isn\'t any update. Please check videoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallUpdateFailed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1677
    return-void

    .line 1681
    :cond_2
    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallType(I)V

    .line 1683
    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v4

    .line 1685
    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v5

    .line 1686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The call is video wasVideo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  isVideo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const/16 v6, 0xc8

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    .line 1688
    const-string v4, "The call is video call as old, and current update as voice call."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v4, 0xcc

    invoke-static {v0, v6, v4}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1696
    :cond_3
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1697
    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getNativeVideoType(I)I

    move-result v0

    .line 1698
    if-ge v0, p2, :cond_4

    .line 1701
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v4, 0xca

    invoke-static {v0, v6, v4}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1707
    :cond_4
    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 1709
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz p1, :cond_8

    .line 1710
    invoke-interface {p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onAliveCallUpdate(Z)V

    goto :goto_0

    .line 1719
    :cond_5
    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1722
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    goto :goto_0

    .line 1723
    :cond_6
    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoTX(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1725
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopReception()V

    goto :goto_0

    .line 1726
    :cond_7
    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoRX(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1728
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopTransmission()V

    .line 1732
    :cond_8
    :goto_0
    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->getVideoProfile(I)Landroid/telecom/VideoProfile;

    move-result-object p1

    .line 1734
    invoke-virtual {v1, v3, p1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1738
    return-void
.end method

.method private handleCallUpdateFailed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the call update failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    if-nez p1, :cond_0

    .line 1744
    const-string p1, "[handleCallUpdateFailed] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    return-void

    .line 1748
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 1749
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->isWaitForModifyResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1750
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v2, 0xc8

    const/16 v3, 0xcb

    invoke-static {v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 1761
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_1

    .line 1763
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x194

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update failed as error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1766
    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1770
    :cond_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1772
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 1775
    :cond_2
    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1777
    return-void
.end method

.method private handleConfAlerted(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2013
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the conference alerted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    if-nez p1, :cond_0

    .line 2015
    const-string p1, "[handleConfConnected] The conference session is null "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    return-void

    .line 2019
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2020
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v0

    .line 2021
    if-eqz v0, :cond_1

    .line 2022
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2024
    :cond_1
    return-void
.end method

.method private handleConfConnected(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the conference connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2034
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2035
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAliveState(Z)V

    .line 2036
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    .line 2037
    if-nez v3, :cond_2

    .line 2040
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2041
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    .line 2042
    if-eqz p2, :cond_1

    .line 2043
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2047
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    invoke-virtual {p2, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2048
    return-void

    .line 2051
    :cond_2
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v4

    .line 2052
    if-eqz v4, :cond_3

    .line 2053
    const-string v5, "Notify the merge complete."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-interface {v4, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setHostCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2059
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v0

    .line 2061
    if-eqz v0, :cond_4

    .line 2062
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2063
    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V

    .line 2064
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2067
    :cond_4
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v0

    .line 2068
    const/4 v3, 0x0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 2071
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallType(I)V

    .line 2073
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p2

    .line 2074
    if-eqz p2, :cond_6

    .line 2075
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2076
    invoke-virtual {p2, v2, v0, v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 2081
    :cond_5
    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    .line 2084
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallType(I)V

    .line 2086
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p2

    .line 2087
    if-eqz p2, :cond_7

    .line 2088
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2089
    invoke-virtual {p2, v2, v0, v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_1

    .line 2081
    :cond_6
    :goto_0
    nop

    .line 2098
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallSessionList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 2099
    if-eq v0, p1, :cond_9

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 2105
    :cond_8
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will be invite to this conference call."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setConfCallSession(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2110
    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAliveState(Z)V

    .line 2111
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 2112
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->stopAll()V

    .line 2114
    new-instance v1, Lcom/spreadtrum/ims/vowifi/Participant;

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 2115
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->addAsWaitForInvite(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2116
    goto :goto_2

    .line 2101
    :cond_9
    :goto_3
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore add this call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to conference."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    goto :goto_2

    .line 2119
    :cond_a
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 2122
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    invoke-virtual {p2, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2123
    return-void

    .line 2030
    :cond_b
    :goto_4
    const-string p1, "[handleConfConnected] The conference session or call interface is null "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    return-void
.end method

.method private handleConfDisconnected(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2127
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Handle the conference disconnected."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    if-nez p1, :cond_0

    .line 2129
    const-string p1, "[handleConfDisconnected] The conference session is null "

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    return-void

    .line 2134
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getHostCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p2

    .line 2136
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2137
    const-string v1, "Conference disconnect"

    invoke-virtual {p2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->onMergeFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2141
    :cond_1
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateChildCalls(I)V

    .line 2144
    :goto_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result p2

    const/4 v1, 0x4

    if-ge p2, v1, :cond_2

    .line 2146
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v1, 0xc8

    const/16 v2, 0xd0

    invoke-static {p2, v1, v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 2152
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 2153
    return-void
.end method

.method private handleConfInviteFinished(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/Participant;)V
    .locals 3

    .line 2294
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the conference participant invite finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2302
    :cond_0
    const-string v0, "connected"

    invoke-virtual {p2, v0}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->addParticipant(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2304
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->addAsInvited(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2305
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 2308
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    const/4 v1, 0x1

    .line 2309
    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    .line 2308
    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2313
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 2314
    if-eqz p1, :cond_1

    .line 2315
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    const/4 v0, 0x2

    .line 2316
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 2315
    invoke-virtual {p2, p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2319
    :cond_1
    return-void

    .line 2297
    :cond_2
    :goto_0
    const-string p1, "[handleConfInviteFinished] The conference session is null "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    return-void
.end method

.method private handleConfParticipantsChanged(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2157
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the conference participant update result."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    if-nez p2, :cond_0

    .line 2160
    const-string p1, "[handleConfParticipantsChanged] The conference session is null "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return-void

    .line 2164
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_7

    .line 2169
    :cond_1
    const-string p4, "Can not find in invite call or phoneNumber mis-match."

    const-string v1, "disconnected"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 2240
    :pswitch_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2241
    const-string p1, "Failed to update participant state as new status is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    goto/16 :goto_6

    .line 2245
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Get the new status for the user: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    nop

    .line 2247
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    .line 2250
    const-string p1, "disconnecting"

    invoke-virtual {p2, p3, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->findParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object p1

    goto :goto_0

    .line 2247
    :cond_3
    move-object p1, p4

    .line 2256
    :goto_0
    if-nez p1, :cond_4

    .line 2259
    invoke-virtual {p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->findParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object p1

    .line 2262
    :cond_4
    if-nez p1, :cond_6

    .line 2263
    const-string p4, "Check if need handle as seconday callee."

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    const-string p4, "connected"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 2265
    const-string p4, "on-hold"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 2270
    :cond_5
    invoke-virtual {p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateParticipantEntity(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object p1

    .line 2274
    :cond_6
    if-nez p1, :cond_7

    .line 2275
    const-string p1, "Can not find the phoneNumber from callee list."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    goto/16 :goto_6

    .line 2279
    :cond_7
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->notifiedUserInfo()V

    .line 2280
    invoke-virtual {p1, p5}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2282
    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->onParticipantDisconnected(Lcom/spreadtrum/ims/vowifi/Participant;)V

    goto :goto_1

    .line 2284
    :cond_8
    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->addParticipant(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2287
    :goto_1
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 2288
    goto/16 :goto_6

    .line 2210
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Get the kick failed for the user: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    nop

    .line 2212
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getRetryDelParticipants()Ljava/util/HashMap;

    move-result-object p1

    .line 2213
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p4

    if-lez p4, :cond_10

    .line 2214
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2215
    if-nez p1, :cond_9

    .line 2216
    const-string p1, "Kikc failed, and kikc with primary callee. Do nothing."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2218
    :cond_9
    const-string p3, "Kikc failed, and kike with secondary callee. Retry."

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getCallee()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->kickOffMembers(Ljava/lang/String;)V

    .line 2221
    :goto_2
    goto/16 :goto_6

    .line 2226
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Get the kick accept for the user: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    nop

    .line 2228
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getRetryDelParticipants()Ljava/util/HashMap;

    move-result-object p1

    .line 2229
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 2230
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 2231
    if-eqz p1, :cond_a

    .line 2232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Kick accept for the session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2234
    :cond_a
    const-string p1, "Kick the participant with primary callee."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :goto_3
    goto/16 :goto_6

    .line 2182
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Get the invite failed result for the user: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getInInviteParticipant()Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object p1

    .line 2185
    if-eqz p1, :cond_d

    invoke-virtual {p1, p3}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_4

    .line 2190
    :cond_b
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->onParticipantDisconnected(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2192
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 2195
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    const/4 p4, 0x1

    .line 2196
    invoke-virtual {p3, p4, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p4, 0x3e8

    .line 2195
    invoke-virtual {p3, p2, p4, p5}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2199
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 2200
    if-eqz p1, :cond_c

    .line 2201
    const/16 p2, 0x1f5

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 2204
    :cond_c
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 p2, 0xc8

    const/16 p3, 0xd3

    invoke-static {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 2207
    goto :goto_6

    .line 2186
    :cond_d
    :goto_4
    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return-void

    .line 2171
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Get the invite accept result for the user: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getInInviteParticipant()Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object p1

    .line 2173
    if-eqz p1, :cond_f

    invoke-virtual {p1, p3}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e

    goto :goto_5

    .line 2178
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfInviteFinished(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 2179
    goto :goto_6

    .line 2174
    :cond_f
    :goto_5
    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    nop

    .line 2291
    :cond_10
    :goto_6
    return-void

    .line 2165
    :cond_11
    :goto_7
    const-string p1, "Faile to handle the parts changed as the phone number or uri is empty."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return-void

    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 16

    .line 957
    move-object/from16 v0, p0

    const-string v1, ""

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 958
    nop

    .line 959
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 960
    if-gez v3, :cond_0

    .line 961
    sget-object v6, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The call session id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", need check."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    .line 963
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v6

    .line 964
    if-nez v6, :cond_1

    .line 965
    sget-object v7, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not found the call session for this call id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    :goto_0
    const-string v7, "event_name"

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 970
    sget-object v8, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handle the event \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for the call: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v9, "event_code"

    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 973
    if-eqz v6, :cond_2

    .line 974
    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallStateTracker()Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    move-result-object v10

    .line 975
    if-eqz v10, :cond_2

    .line 976
    invoke-virtual {v10, v9}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->updateActionResponse(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_2
    const-string v12, "sip_uri"

    const-string v14, "alert_type"

    const-string v15, "video_type"

    const-string v11, "state_code"

    const-string v13, "phone_num"

    const-string v10, "is_video"

    const/4 v5, 0x0

    sparse-switch v9, :sswitch_data_0

    .line 1218
    goto/16 :goto_2

    .line 1155
    :sswitch_0
    :try_start_1
    const-string v1, "video_level"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1156
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleVideoLevelUpdate(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1157
    goto/16 :goto_3

    .line 1145
    :sswitch_1
    if-nez v6, :cond_3

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveVideoCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v6

    .line 1148
    :cond_3
    const-string v1, "video_width"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1149
    const-string v3, "video_height"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1151
    invoke-direct {v0, v9, v6, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleVideoResize(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;II)V

    .line 1152
    goto/16 :goto_3

    .line 1181
    :sswitch_2
    const-string v3, "voice_codec"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleVoiceCodecNegociated(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 1183
    goto/16 :goto_3

    .line 1122
    :sswitch_3
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConfInvitedWaitNotify()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1123
    const-string v1, "conf_child_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The child session id["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] invalid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    goto/16 :goto_3

    .line 1129
    :cond_4
    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getInInviteParticipant()Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object v2

    .line 1130
    if-eqz v2, :cond_6

    .line 1131
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1132
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 1137
    :cond_5
    invoke-direct {v0, v6, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfInviteFinished(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 1138
    goto/16 :goto_3

    .line 1133
    :cond_6
    :goto_1
    const-string v0, "In invite call mis-match the child session id."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    goto/16 :goto_3

    .line 1110
    :sswitch_4
    invoke-virtual {v2, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    invoke-virtual {v2, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1112
    const-string v3, "conf_part_new_status"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1113
    const-string v1, "participants_count"

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1114
    if-eqz v6, :cond_7

    .line 1115
    invoke-virtual {v6, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setMaxParticipantsCount(I)V

    .line 1117
    :cond_7
    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfParticipantsChanged(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    goto/16 :goto_3

    .line 1096
    :sswitch_5
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConfInvitedWaitNotify()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1097
    const-string v0, "The conference invited finished need wait for notify."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    goto/16 :goto_3

    .line 1103
    :cond_8
    :sswitch_6
    invoke-virtual {v2, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-virtual {v2, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1105
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfParticipantsChanged(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    goto/16 :goto_3

    .line 1090
    :sswitch_7
    const/16 v1, 0x1f5

    invoke-virtual {v2, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1092
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfDisconnected(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1093
    goto/16 :goto_3

    .line 1085
    :sswitch_8
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1086
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfConnected(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V

    .line 1087
    goto/16 :goto_3

    .line 1081
    :sswitch_9
    invoke-direct {v0, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleConfAlerted(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1082
    goto/16 :goto_3

    .line 999
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 1000
    if-eqz v1, :cond_a

    .line 1001
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v2

    if-lez v2, :cond_a

    .line 1002
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    .line 1003
    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallPlayLocalRingback(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    goto/16 :goto_3

    .line 1022
    :sswitch_b
    const-string v3, "action"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallGetErrorCode(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 1024
    goto/16 :goto_3

    .line 1213
    :sswitch_c
    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1214
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handlePreconditionStart(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1215
    goto/16 :goto_3

    .line 1204
    :sswitch_d
    invoke-virtual {v2, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string v1, "info_call_failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1198
    :sswitch_e
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz v0, :cond_a

    .line 1199
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onUnsolicitedRequest(I)V

    goto/16 :goto_3

    .line 1186
    :sswitch_f
    if-eqz v6, :cond_a

    .line 1187
    invoke-virtual {v6}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateAsCallIsForwarded()V

    .line 1189
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v1, 0x12c

    const/4 v2, 0x2

    invoke-static {v0, v1, v5, v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V

    goto/16 :goto_3

    .line 1175
    :sswitch_10
    const-string v3, "ussd_info_received"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    const-string v3, "ussd_mode"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1177
    invoke-direct {v0, v6, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleUssdInfoReceived(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;I)V

    .line 1178
    goto/16 :goto_3

    .line 1074
    :sswitch_11
    const-string v3, "emergency_call_ind_urn_uri"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    const-string v5, "emergency_call_ind_action_type"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1076
    const-string v5, "emergency_call_ind_reason"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-direct {v0, v6, v3, v1, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallIsEmergency(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1078
    goto/16 :goto_3

    .line 1070
    :sswitch_12
    invoke-direct {v0, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallIsFocus(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1071
    goto/16 :goto_3

    .line 1161
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 1162
    if-eqz v1, :cond_9

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1163
    const-string v1, "rtcp_lose"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 1164
    const-string v1, "rtcp_jitter"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1165
    const-string v1, "rtcp_rtt"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1166
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1167
    move-object/from16 v1, p0

    move-object v2, v6

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleRTCPChanged(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;IIIZ)V

    .line 1168
    goto/16 :goto_3

    .line 1169
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The alive call do not same as the rtcp changed. Ignore this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", and the alive call is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    goto/16 :goto_3

    .line 1064
    :sswitch_14
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1065
    const-string v3, "rtp_received"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1066
    invoke-direct {v0, v6, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleRTPReceived(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ZZ)V

    .line 1067
    goto/16 :goto_3

    .line 1059
    :sswitch_15
    invoke-direct {v0, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallAddVideoCancel(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1060
    goto/16 :goto_3

    .line 1054
    :sswitch_16
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1055
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallAddVideoRequest(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1056
    goto/16 :goto_3

    .line 1049
    :sswitch_17
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1050
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallUpdateFailed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1051
    goto/16 :goto_3

    .line 1042
    :sswitch_18
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1043
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallUpdate(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1044
    goto/16 :goto_3

    .line 1038
    :sswitch_19
    invoke-direct {v0, v9, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallHoldOrResume(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 1039
    goto/16 :goto_3

    .line 1016
    :sswitch_1a
    const/16 v1, 0x1f5

    invoke-virtual {v2, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1018
    invoke-direct {v0, v6, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 1019
    goto/16 :goto_3

    .line 1008
    :sswitch_1b
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1010
    const-string v4, "peer_support_video"

    .line 1011
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1012
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTalking(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;ZZ)V

    .line 1013
    goto :goto_3

    .line 992
    :sswitch_1c
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 994
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallAlerted(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 996
    goto :goto_3

    .line 989
    :sswitch_1d
    const-string v0, "Do nothing when the call or conference outgoing."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    goto :goto_3

    .line 982
    :sswitch_1e
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 983
    invoke-virtual {v2, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-direct {v0, v3, v5, v4, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallIncoming(IZZLjava/lang/String;)V

    .line 985
    goto :goto_3

    .line 1218
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The event \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' do not handle, please check!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle the event, catch the RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1220
    :catch_1
    move-exception v0

    .line 1221
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle the json, catch the JSONException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_a
    :goto_3
    nop

    .line 1225
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1e
        0x66 -> :sswitch_1d
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1a
        0x6a -> :sswitch_19
        0x6b -> :sswitch_19
        0x6c -> :sswitch_19
        0x6d -> :sswitch_19
        0x6e -> :sswitch_19
        0x6f -> :sswitch_19
        0x70 -> :sswitch_18
        0x71 -> :sswitch_17
        0x72 -> :sswitch_16
        0x73 -> :sswitch_15
        0x74 -> :sswitch_14
        0x75 -> :sswitch_13
        0x76 -> :sswitch_12
        0x77 -> :sswitch_11
        0x78 -> :sswitch_10
        0x79 -> :sswitch_f
        0x7a -> :sswitch_e
        0x7b -> :sswitch_d
        0x7c -> :sswitch_c
        0x7d -> :sswitch_b
        0x7e -> :sswitch_a
        0xc9 -> :sswitch_1d
        0xca -> :sswitch_9
        0xcb -> :sswitch_8
        0xcc -> :sswitch_7
        0xcd -> :sswitch_5
        0xce -> :sswitch_6
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_6
        0xd1 -> :sswitch_4
        0xd2 -> :sswitch_19
        0xd3 -> :sswitch_19
        0xd4 -> :sswitch_19
        0xd5 -> :sswitch_19
        0xd6 -> :sswitch_19
        0xd7 -> :sswitch_19
        0xd8 -> :sswitch_14
        0xd9 -> :sswitch_13
        0xda -> :sswitch_3
        0x119 -> :sswitch_2
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePreconditionStart(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2001
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Handle the precondition start."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    if-nez p1, :cond_0

    .line 2003
    const-string p1, "[handlePreconditionStart] The call session is null"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-void

    .line 2009
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startPrecondition()V

    .line 2010
    return-void
.end method

.method private handleRTCPChanged(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;IIIZ)V
    .locals 2

    .line 1954
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the rtcp changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    if-nez p1, :cond_0

    .line 1956
    const-string p1, "[handleRTCPChanged] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    return-void

    .line 1960
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz p1, :cond_1

    .line 1961
    invoke-interface {p1, p5, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onCallRTCPChanged(ZIII)V

    .line 1963
    :cond_1
    return-void
.end method

.method private handleRTPReceived(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ZZ)V
    .locals 3

    .line 1931
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the call RTP received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    if-nez p1, :cond_0

    .line 1933
    const-string p1, "[handleRTPReceived] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    return-void

    .line 1937
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v1

    const-string v2, "The call "

    if-nez v1, :cond_1

    .line 1938
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isn\'t alive, do nothing."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return-void

    .line 1942
    :cond_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 1943
    if-eqz v1, :cond_2

    .line 1944
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " will be invited to conference: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1945
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", do nothing."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1944
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return-void

    .line 1949
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onCallRTPReceived(ZZ)V

    .line 1950
    :cond_3
    return-void
.end method

.method private handleUssdInfoReceived(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;I)V
    .locals 2

    .line 1966
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the received ussd info."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    if-nez p1, :cond_0

    .line 1968
    const-string p1, "[handleUssdInfoReceived] The call session is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return-void

    .line 1972
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateState(I)V

    .line 1973
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 1974
    if-eqz p1, :cond_1

    .line 1976
    :try_start_0
    invoke-interface {p1, p3, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    goto :goto_0

    .line 1977
    :catch_0
    move-exception p1

    .line 1978
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send the ussd info. e: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_1
    :goto_0
    return-void
.end method

.method private handleVideoLevelUpdate(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    .locals 3

    .line 1914
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle video level update to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    if-nez p1, :cond_0

    .line 1916
    const-string p1, "[handleVideoLevelUpdate] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    return-void

    .line 1920
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object p1

    .line 1921
    if-nez p1, :cond_1

    .line 1922
    const-string p1, "Failed to update the video level as video provider is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return-void

    .line 1926
    :cond_1
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->updateVideoQualityLevel(I)V

    .line 1927
    return-void
.end method

.method private handleVideoResize(ILcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;II)V
    .locals 3

    .line 1887
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle video resize."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    if-nez p2, :cond_0

    .line 1889
    const-string p1, "[handleCallRemoteVideoResize] The call session is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return-void

    .line 1893
    :cond_0
    if-ltz p3, :cond_5

    if-gez p4, :cond_1

    goto :goto_1

    .line 1898
    :cond_1
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getVideoCallProviderImpl()Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 1899
    if-nez v1, :cond_2

    .line 1900
    const-string p1, "Failed to update the video size as video provider is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-void

    .line 1904
    :cond_2
    const/16 v2, 0x12e

    if-ne p1, v2, :cond_3

    .line 1905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " remote video resize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-virtual {v1, p3, p4}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    goto :goto_0

    .line 1908
    :cond_3
    const/16 p2, 0x12d

    if-ne p1, p2, :cond_4

    .line 1909
    const-string p1, "Shouldn\'t handle the local video resize here. Please check!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_4
    :goto_0
    return-void

    .line 1894
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The width is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", the height is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", invalid."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return-void
.end method

.method private handleVoiceCodecNegociated(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 2

    .line 1984
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Handle the voice codec negociated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1993
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1994
    const/4 p2, 0x2

    goto :goto_0

    .line 1995
    :cond_1
    const/4 p2, 0x1

    .line 1996
    :goto_0
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateVoiceQuality(I)V

    .line 1997
    return-void

    .line 1986
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleVoiceCodecNegociated] The call session is null, or codecName is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    return-void
.end method

.method private inviteCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 10

    .line 846
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to invite call for the conference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-nez p1, :cond_0

    .line 849
    const-string p1, "Failed to invite the call for the conference as it is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 854
    :cond_0
    nop

    .line 856
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getNeedInviteCall()Lcom/spreadtrum/ims/vowifi/Participant;

    move-result-object v3

    .line 857
    if-nez v3, :cond_1

    .line 858
    const-string v3, "All the calls already finish invite. Do nothing."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void

    .line 862
    :cond_1
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v4

    .line 863
    if-eqz v4, :cond_3

    .line 864
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    .line 865
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_3

    .line 868
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "As state error, ignore this call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to conference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v0, "disconnected"

    invoke-virtual {v3, v0}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->onParticipantDisconnected(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 872
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    goto/16 :goto_1

    .line 874
    :cond_3
    nop

    .line 875
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 876
    iget-object v6, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v2, [I

    .line 877
    invoke-virtual {v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v1

    .line 876
    invoke-interface {v6, v7, v5, v8}, Lcom/android/ims/internal/IVoWifiCall;->confAddMembers(I[Ljava/lang/String;[I)I

    move-result v5

    goto :goto_0

    .line 879
    :cond_4
    iget-object v6, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v2, [Ljava/lang/String;

    .line 880
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/Participant;->getCallee()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 879
    invoke-interface {v6, v7, v8, v5}, Lcom/android/ims/internal/IVoWifiCall;->confAddMembers(I[Ljava/lang/String;[I)I

    move-result v5

    .line 882
    :goto_0
    if-nez v5, :cond_5

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invite the call "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    const/16 v3, 0xc8

    const/16 v4, 0xd3

    invoke-static {v0, v3, v4}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 890
    :cond_5
    nop

    .line 891
    :try_start_1
    const-string v0, "dialing-out"

    invoke-virtual {v3, v0}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    const/4 v1, 0x5

    .line 893
    invoke-virtual {v0, v1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1770

    .line 892
    invoke-virtual {v0, v1, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    .line 898
    :goto_1
    goto :goto_3

    .line 896
    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    .line 897
    :goto_2
    sget-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invite the call as catch the RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_3
    if-nez v1, :cond_6

    .line 902
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    invoke-virtual {v0, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 904
    :cond_6
    return-void
.end method


# virtual methods
.method public addCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 3

    .line 615
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add the call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not add this call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] to list as it is null."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method public createMOCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 6

    .line 390
    iget-boolean v5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallWithCNI:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;IZ)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createMTCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 6

    .line 396
    iget-boolean v5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallWithCNI:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;IZ)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public enterECBMWithCallSession(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V
    .locals 1

    .line 669
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 670
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onEnterECBM(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V

    .line 671
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallCallback:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->unregisterCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    .line 311
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 312
    return-void
.end method

.method public getActivatedAudioCallSessions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 740
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isAudioCall(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_0
    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getActivatedVideoCallSessions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 724
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_0
    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 765
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 766
    :cond_0
    goto :goto_0

    .line 768
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Can not found any call in active state, return null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAliveVideoCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 3

    .line 751
    nop

    .line 752
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 753
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 755
    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/Utilities;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    return-object v0

    .line 759
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v2, "Can not found any video call in alive state, return null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-object v1
.end method

.method public getAttachSessionId()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurAttachSessionId:I

    return v0
.end method

.method public getCallCount()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCallRatType()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurRatType:I

    return v0
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 5

    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 700
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "The param id is null, return null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-object v1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 706
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found the call session for this id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    monitor-exit v0

    return-object v3

    .line 710
    :cond_1
    goto :goto_0

    .line 711
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not found the call session for this id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-object v1

    .line 711
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCallSessionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 802
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 803
    :cond_0
    goto :goto_0

    .line 805
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Can not found any conference call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCouldInviteCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 811
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 814
    return-object v1

    .line 816
    :cond_1
    goto :goto_0

    .line 818
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 6

    .line 779
    nop

    .line 780
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 781
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    move-object v2, v3

    .line 784
    :cond_0
    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 786
    return-object v3

    .line 788
    :cond_1
    goto :goto_0

    .line 791
    :cond_2
    if-eqz v2, :cond_3

    .line 792
    return-object v2

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 794
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0

    .line 796
    :cond_4
    return-object v1
.end method

.method public getJitter()I
    .locals 3

    .line 526
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the jitter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 528
    const-string v1, "Can not get the jitter as the service do not bind success now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v2

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 533
    if-nez v1, :cond_1

    .line 534
    const-string v1, "Can not found the actived call, return jitter as 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v2

    .line 538
    :cond_1
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getJitter()I

    move-result v0

    return v0
.end method

.method public getPacketLose()I
    .locals 3

    .line 510
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the packet lose."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 512
    const-string v1, "Can not get the packet lose as the service do not bind success now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v2

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 517
    if-nez v1, :cond_1

    .line 518
    const-string v1, "Can not found the actived call, return packet lose as 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v2

    .line 522
    :cond_1
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getPacketLose()I

    move-result v0

    return v0
.end method

.method public getRtt()I
    .locals 3

    .line 542
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the rtt."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 544
    const-string v1, "Can not get the rtt as the service do not bind success now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v2

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getAliveCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 549
    if-nez v1, :cond_1

    .line 550
    const-string v1, "Can not found the actived call, return rtt as 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v2

    .line 554
    :cond_1
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getRtt()I

    move-result v0

    return v0
.end method

.method public isCallFunEnabled()Z
    .locals 2

    .line 681
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mRegisterState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInSRVCC()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mInSRVCC:Z

    return v0
.end method

.method protected onNativeReset()V
    .locals 4

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 318
    const/16 v2, 0x1f5

    invoke-direct {p0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 322
    :cond_0
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle as calls term as catch the ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mRegisterState:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 326
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 327
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICallChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    .line 328
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;->onChanged(Lcom/android/ims/internal/IVoWifiCall;)V

    .line 329
    goto :goto_2

    .line 330
    :cond_1
    return-void
.end method

.method public onSRVCCStateChanged(I)V
    .locals 3

    .line 822
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->isCallFunEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "As call function disabled, do not handle the SRVCC state changed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 827
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SRVCC state changed, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSRVCCHandler:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->sendEmptyMessage(I)Z

    .line 829
    return-void
.end method

.method protected onServiceChanged()V
    .locals 4

    .line 335
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 336
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IVoWifiCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiCall;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    .line 338
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallCallback:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiCall;->registerCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->clearPendingList()V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICallChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;

    .line 345
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;->onChanged(Lcom/android/ims/internal/IVoWifiCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_1

    .line 349
    :cond_1
    goto :goto_2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not register callback as catch the RemoteException. e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_2
    return-void
.end method

.method public registerCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z
    .locals 1

    .line 367
    if-nez p1, :cond_0

    .line 368
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not register the call interface changed as the listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 p1, 0x0

    return p1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICallChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    invoke-interface {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;->onChanged(Lcom/android/ims/internal/IVoWifiCall;)V

    .line 376
    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;)V
    .locals 1

    .line 353
    if-nez p1, :cond_0

    .line 354
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not register the listener as it is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    .line 359
    return-void
.end method

.method public removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 626
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeCall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V
    .locals 3

    .line 631
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] from the list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-nez p1, :cond_0

    .line 633
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not remove this call["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] from list as it is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] removed from the list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    if-nez v0, :cond_1

    return-void

    .line 643
    :cond_1
    if-eqz p2, :cond_3

    .line 645
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    if-eqz p2, :cond_2

    .line 646
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 648
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    invoke-interface {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onExitECBM()V

    .line 651
    :cond_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isUserAcknowledge()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 653
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    invoke-interface {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onCallEnd(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 658
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isAudioStart()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->stopAudioStream()V

    goto :goto_0

    .line 660
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not remove the call["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_5
    :goto_0
    return-void
.end method

.method public removeECBMRequest()V
    .locals 1

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 666
    return-void
.end method

.method public resetCallRatType()V
    .locals 1

    .line 420
    const/16 v0, 0x12

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurRatType:I

    .line 421
    return-void
.end method

.method public startAudioStream()V
    .locals 4

    .line 559
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to start the audio stream, current use audio stream count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    .line 565
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    .line 567
    :try_start_0
    invoke-interface {v2}, Lcom/android/ims/internal/IVoWifiCall;->startAudioStream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch the remote exception when start the audio stream, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    return-void
.end method

.method public stopAudioStream()V
    .locals 4

    .line 576
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to stop the audio stream, the current use audio stream count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    nop

    .line 582
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    .line 583
    if-eqz v1, :cond_1

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is call need audio stream, needn\'t stop audio stream, exist number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mUseAudioStreamCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 589
    :cond_1
    const-string v1, "There isn\'t any call use the audio stream, need stop audio stream now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_2

    .line 592
    :try_start_0
    invoke-interface {v0}, Lcom/android/ims/internal/IVoWifiCall;->stopAudioStream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch the remote exception when stop the audio stream, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    :goto_0
    return-void
.end method

.method public terminateCalls(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to terminate all the calls with wifi state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "connect"

    goto :goto_0

    :cond_0
    const-string p1, "disconnect"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    .line 407
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 408
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 409
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminate the call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 411
    invoke-direct {p0, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->handleCallTermed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 412
    goto :goto_1

    .line 413
    :cond_1
    return-void
.end method

.method public unregisterCallInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;)Z
    .locals 1

    .line 380
    if-nez p1, :cond_0

    .line 381
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not register the call interface changed as the listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 p1, 0x0

    return p1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICallChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterListener()V
    .locals 3

    .line 362
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister the listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    .line 364
    return-void
.end method

.method public updateAttachSessionId(I)V
    .locals 3

    .line 439
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update attach session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurAttachSessionId:I

    .line 441
    return-void
.end method

.method public updateCallsRatType(I)V
    .locals 3

    .line 424
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update all the calls\' type to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurRatType:I

    .line 427
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mSessionList:Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 429
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 430
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallRatType(I)V

    .line 431
    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public updateCellularNetInfo(ILjava/lang/String;I)V
    .locals 1

    .line 452
    new-instance v0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCellularNetInfo:Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;

    .line 453
    return-void
.end method

.method public updateCurCallSlot(I)Z
    .locals 4

    .line 465
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the call slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 470
    return v1

    .line 474
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IVoWifiCall;->updateCurCallSlot(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 478
    :cond_1
    goto :goto_0

    .line 476
    :catch_0
    move-exception p1

    .line 477
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the call\'s slot as catch the ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return v1
.end method

.method public updateDataRouterState(I)V
    .locals 3

    .line 484
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the call state to data router. state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$CallStateForDataRouter;->getDRStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v1, :cond_2

    .line 491
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCurrentCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    const/4 p1, 0x3

    goto :goto_0

    .line 503
    :catch_0
    move-exception p1

    goto :goto_1

    .line 498
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update data router state for session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurAttachSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCurAttachSessionId:I

    invoke-interface {v1, v2, p1}, Lcom/android/ims/internal/IVoWifiCall;->updateDataRouterState(II)I

    move-result p1

    .line 500
    if-nez p1, :cond_1

    .line 501
    const-string p1, "Failed to update the data router state, please check!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_1
    goto :goto_2

    .line 504
    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update the data router state for RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2
    :goto_2
    return-void
.end method

.method public updateIncomingCallAction(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;)V
    .locals 3

    .line 457
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the incoming call action to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    if-ne p1, v2, :cond_0

    const-string v2, "normal"

    goto :goto_0

    :cond_0
    const-string v2, "reject"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mIncomingCallAction:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    .line 461
    return-void
.end method

.method public updateRegisterState(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mRegisterState:I

    .line 445
    return-void
.end method

.method public updateRequiredCNI(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mCallWithCNI:Z

    .line 449
    return-void
.end method

.method public updateVideoQuality(Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;)V
    .locals 3

    .line 600
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set the video quality as index is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->isCallFunEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->mICall:Lcom/android/ims/internal/IVoWifiCall;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 608
    :cond_0
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_level:I

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IVoWifiCall;->setDefaultVideoLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    goto :goto_0

    .line 609
    :catch_0
    move-exception p1

    .line 610
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set the video quality as catch the RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 604
    :cond_1
    :goto_1
    return-void
.end method
